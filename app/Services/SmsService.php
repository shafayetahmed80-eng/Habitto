<?php

namespace App\Services;

use Botble\Ecommerce\Models\Order;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class SmsService
{
    /**
     * Send an SMS message
     */
    public function send(string $phone, string $message, ?int $orderId = null): array
    {
        $phone = $this->cleanPhoneNumber($phone);
        if (empty($phone)) {
            return [
                'success' => false,
                'message' => 'সঠিক মোবাইল নম্বর পাওয়া যায়নি।',
            ];
        }

        $provider = setting('sms_provider', 'simulation');
        $apiKey = setting('sms_api_key');
        $senderId = setting('sms_sender_id');

        // If in simulation mode or API Key not set, simulate sending
        if ($provider === 'simulation' || (empty($apiKey) && $provider !== 'custom')) {
            $this->logSms($phone, $message, 'simulation', 'simulated', 'টেস্ট মোডে এসএমএস সংরক্ষিত হয়েছে (সিমুলেশন)।', $orderId);

            return [
                'success' => true,
                'simulated' => true,
                'provider' => 'simulation',
                'message' => 'টেস্ট মোডে এসএমএস সফলভাবে সিমুলেট করা হয়েছে!',
                'phone' => $phone,
                'content' => $message,
            ];
        }

        try {
            $result = match ($provider) {
                'greenweb' => $this->sendGreenweb($phone, $message, $apiKey),
                'bulksmsbd' => $this->sendBulkSmsBd($phone, $message, $apiKey, $senderId),
                'elitbuzz' => $this->sendElitBuzz($phone, $message, $apiKey, $senderId),
                'mimsms' => $this->sendMimSms($phone, $message, $apiKey, $senderId),
                'custom' => $this->sendCustomGateway($phone, $message, $apiKey, $senderId),
                default => [
                    'success' => false,
                    'message' => 'অজ্ঞাত এসএমএস গেটওয়ে নির্বাচন করা হয়েছে।',
                    'response' => null,
                ],
            };

            $status = $result['success'] ? 'sent' : 'failed';
            $this->logSms($phone, $message, $provider, $status, json_encode($result['response'] ?? $result['message']), $orderId);

            return $result;
        } catch (\Throwable $e) {
            Log::error('SMS Send Exception', ['error' => $e->getMessage()]);
            $this->logSms($phone, $message, $provider, 'failed', $e->getMessage(), $orderId);

            return [
                'success' => false,
                'message' => 'এসএমএস পাঠাতে ত্রুটি হয়েছে: ' . $e->getMessage(),
            ];
        }
    }

    /**
     * Send Order Confirmation SMS to Customer
     */
    public function sendOrderConfirmationSms(Order $order): array
    {
        if (!setting('sms_enable_order_placed', '1')) {
            return ['success' => false, 'message' => 'অর্ডার কনফার্মেশন এসএমএস বন্ধ রয়েছে।'];
        }

        $address = $order->address;
        if (!$address || empty($address->phone)) {
            return ['success' => false, 'message' => 'গ্রাহকের ফোন নম্বর নেই।'];
        }

        $defaultTemplate = "প্রিয় {customer_name}, Habitto BD-তে আপনার অর্ডার #{order_id} সফলভাবে সম্পন্ন হয়েছে। সর্বমোট প্রদেয়: ৳{order_total} (ক্যাশ অন ডেলিভারি)। হটলাইন: {hotline}";
        $template = setting('sms_template_order_placed', $defaultTemplate);

        $message = $this->replacePlaceholders($template, $order);

        return $this->send($address->phone, $message, $order->id);
    }

    /**
     * Send Courier Booking / Dispatched SMS with Tracking link
     */
    public function sendCourierDispatchedSms(Order $order, string $trackingCode, ?string $trackingUrl = null): array
    {
        if (!setting('sms_enable_courier_dispatched', '1')) {
            return ['success' => false, 'message' => 'কুরিয়ার ডিসপ্যাচ এসএমএস বন্ধ রয়েছে।'];
        }

        $address = $order->address;
        if (!$address || empty($address->phone)) {
            return ['success' => false, 'message' => 'গ্রাহকের ফোন নম্বর নেই।'];
        }

        $trackingUrl = $trackingUrl ?: "https://steadfast.com.bd/t/{$trackingCode}";
        $defaultTemplate = "প্রিয় {customer_name}, আপনার অর্ডার #{order_id} Steadfast কুরিয়ারে হস্তান্তর করা হয়েছে। ট্র্যাকিং কোড: {tracking_code}। ট্র্যাকিং লিঙ্ক: {tracking_url}। সাথে থাকার জন্য ধন্যবাদ - Habitto BD";
        $template = setting('sms_template_courier_dispatched', $defaultTemplate);

        $message = $this->replacePlaceholders($template, $order, [
            '{tracking_code}' => $trackingCode,
            '{tracking_url}' => $trackingUrl,
        ]);

        return $this->send($address->phone, $message, $order->id);
    }

    /**
     * Send New Order Alert SMS to Store Admin
     */
    public function sendAdminNewOrderAlert(Order $order): array
    {
        if (!setting('sms_enable_admin_alert', '1')) {
            return ['success' => false, 'message' => 'অ্যাডমিন এসএমএস অ্যালার্ট বন্ধ রয়েছে।'];
        }

        $adminPhone = setting('sms_admin_phone', '01674936203');
        if (empty($adminPhone)) {
            return ['success' => false, 'message' => 'অ্যাডমিন ফোন নম্বর সেট করা নেই।'];
        }

        $defaultTemplate = "[Habitto BD] নতুন অর্ডার এসেছে! অর্ডার #{order_id}, গ্রাহক: {customer_name}, মূল্য: ৳{order_total}, জেলা: {district}।";
        $template = setting('sms_template_admin_alert', $defaultTemplate);

        $message = $this->replacePlaceholders($template, $order);

        return $this->send($adminPhone, $message, $order->id);
    }

    /**
     * Replace template tags with order variables
     */
    public function replacePlaceholders(string $template, Order $order, array $extra = []): string
    {
        $address = $order->address;
        $name = $address ? $address->name : 'গ্রাহক';
        $phone = $address ? $address->phone : '';
        $district = $address ? ($address->city_name ?: $address->city) : '';
        $hotline = setting('sms_hotline_number', '01674936203');

        $orderCode = ltrim($order->code, '#');

        $replacements = array_merge([
            '{customer_name}' => $name,
            '{customer_phone}' => $phone,
            '{order_id}' => $orderCode,
            '{order_total}' => number_format($order->amount, 0),
            '{cod_amount}' => number_format($order->amount, 0),
            '{district}' => $district,
            '{brand_name}' => 'Habitto BD',
            '{hotline}' => $hotline,
        ], $extra);

        return str_replace(array_keys($replacements), array_values($replacements), $template);
    }

    /**
     * Provider: Greenweb BD
     */
    protected function sendGreenweb(string $phone, string $message, string $apiKey): array
    {
        // Greenweb accepts format: 8801xxxxxxxxx or 01xxxxxxxxx
        $formattedPhone = $this->formatForBd($phone);

        $response = Http::asForm()->timeout(10)->post('https://api.greenweb.com.bd/api.php', [
            'token' => $apiKey,
            'to' => $formattedPhone,
            'message' => $message,
        ]);

        $body = $response->body();
        if ($response->successful() && (str_contains($body, 'Ok:') || str_contains($body, 'success'))) {
            return ['success' => true, 'message' => 'Greenweb-এর মাধ্যমে এসএমএস পাঠানো হয়েছে।', 'response' => $body];
        }

        return ['success' => false, 'message' => 'Greenweb এরর: ' . $body, 'response' => $body];
    }

    /**
     * Provider: BulkSMSBD
     */
    protected function sendBulkSmsBd(string $phone, string $message, string $apiKey, ?string $senderId): array
    {
        $formattedPhone = $this->formatForBd($phone);

        $response = Http::timeout(10)->get('http://bulksmsbd.net/api/smsapi', [
            'api_key' => $apiKey,
            'type' => 'text',
            'number' => $formattedPhone,
            'senderid' => $senderId ?: setting('sms_sender_id'),
            'message' => $message,
        ]);

        $data = $response->json() ?: $response->body();
        $isOk = $response->successful() && (
            (is_array($data) && isset($data['response_code']) && $data['response_code'] == 202) ||
            (is_string($data) && str_contains($data, '202'))
        );

        if ($isOk) {
            return ['success' => true, 'message' => 'BulkSMSBD-এর মাধ্যমে এসএমএস পাঠানো হয়েছে।', 'response' => $data];
        }

        return ['success' => false, 'message' => 'BulkSMSBD এরর: ' . json_encode($data), 'response' => $data];
    }

    /**
     * Provider: ElitBuzz
     */
    protected function sendElitBuzz(string $phone, string $message, string $apiKey, ?string $senderId): array
    {
        $formattedPhone = $this->formatForBd($phone);

        $response = Http::timeout(10)->get('https://msg.elitbuzz-bd.com/smsapi', [
            'api_key' => $apiKey,
            'type' => 'text',
            'contacts' => $formattedPhone,
            'senderid' => $senderId ?: setting('sms_sender_id'),
            'msg' => $message,
        ]);

        $body = $response->body();
        if ($response->successful() && str_contains($body, 'SMS SUBMITTED')) {
            return ['success' => true, 'message' => 'ElitBuzz-এর মাধ্যমে এসএমএস পাঠানো হয়েছে।', 'response' => $body];
        }

        return ['success' => false, 'message' => 'ElitBuzz এরর: ' . $body, 'response' => $body];
    }

    /**
     * Provider: MimSMS
     */
    protected function sendMimSms(string $phone, string $message, string $apiKey, ?string $senderId): array
    {
        $formattedPhone = $this->formatForBd($phone);

        $response = Http::withHeaders([
            'Authorization' => 'Bearer ' . $apiKey,
            'Content-Type' => 'application/json',
        ])->timeout(10)->post('https://api.mimsms.com/api/v3/send-sms', [
            'sender_id' => $senderId,
            'phone_number' => $formattedPhone,
            'message' => $message,
        ]);

        $data = $response->json();
        if ($response->successful() && isset($data['status']) && $data['status'] === 'success') {
            return ['success' => true, 'message' => 'MimSMS-এর মাধ্যমে এসএমএস পাঠানো হয়েছে।', 'response' => $data];
        }

        return ['success' => false, 'message' => 'MimSMS এরর: ' . json_encode($data), 'response' => $data];
    }

    /**
     * Provider: Custom HTTP Gateway
     */
    protected function sendCustomGateway(string $phone, string $message, ?string $apiKey, ?string $senderId): array
    {
        $customUrl = setting('sms_custom_url');
        if (empty($customUrl)) {
            return ['success' => false, 'message' => 'কাস্টম এসএমএস ইউআরএল কনফিগার করা নেই।', 'response' => null];
        }

        $formattedPhone = $this->formatForBd($phone);
        $encodedMessage = urlencode($message);

        $url = str_replace(
            ['{phone}', '{message}', '{api_key}', '{sender_id}'],
            [$formattedPhone, $encodedMessage, $apiKey ?? '', $senderId ?? ''],
            $customUrl
        );

        $method = strtoupper(setting('sms_custom_method', 'GET'));
        $response = ($method === 'POST')
            ? Http::timeout(10)->post($url)
            : Http::timeout(10)->get($url);

        $body = $response->body();
        if ($response->successful()) {
            return ['success' => true, 'message' => 'কাস্টম গেটওয়েতে এসএমএস রিকোয়েস্ট সফল হয়েছে।', 'response' => $body];
        }

        return ['success' => false, 'message' => 'কাস্টম গেটওয়ে এরর: ' . $body, 'response' => $body];
    }

    /**
     * Clean phone number to digits only
     */
    public function cleanPhoneNumber(string $phone): string
    {
        $cleaned = preg_replace('/[^0-9]/', '', $phone);
        if (str_starts_with($cleaned, '880')) {
            return $cleaned;
        }
        if (str_starts_with($cleaned, '01')) {
            return '88' . $cleaned;
        }
        if (str_starts_with($cleaned, '1') && strlen($cleaned) === 10) {
            return '880' . $cleaned;
        }
        return $cleaned;
    }

    /**
     * Format phone for BD gateways (8801xxxxxxxxx)
     */
    protected function formatForBd(string $phone): string
    {
        $cleaned = preg_replace('/[^0-9]/', '', $phone);
        if (str_starts_with($cleaned, '880')) {
            return $cleaned;
        }
        if (str_starts_with($cleaned, '0')) {
            return '88' . $cleaned;
        }
        return '880' . $cleaned;
    }

    /**
     * Log SMS record to habitto_sms_logs table
     */
    protected function logSms(string $phone, string $message, string $provider, string $status, ?string $response = null, ?int $orderId = null): void
    {
        try {
            DB::table('habitto_sms_logs')->insert([
                'phone' => $phone,
                'message' => $message,
                'provider' => $provider,
                'status' => $status,
                'response' => $response,
                'order_id' => $orderId,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        } catch (\Throwable $e) {
            Log::warning('Failed to log SMS: ' . $e->getMessage());
        }
    }
}
