<?php

namespace App\Services;

use Botble\Ecommerce\Models\Order;
use Botble\Ecommerce\Models\Shipment;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class SteadfastService
{
    protected string $baseUrl;
    protected ?string $apiKey;
    protected ?string $secretKey;

    public function __construct()
    {
        $this->baseUrl = rtrim(setting('steadfast_base_url', 'https://portal.steadfast.com.bd/api/v1'), '/');
        $this->apiKey = setting('steadfast_api_key');
        $this->secretKey = setting('steadfast_secret_key');
    }

    public function isConfigured(): bool
    {
        return !empty($this->apiKey) && !empty($this->secretKey);
    }

    /**
     * Book order with Steadfast Courier
     */
    public function createOrder(Order $order, ?string $note = null, ?float $customCod = null): array
    {
        $address = $order->address;
        if (!$address) {
            return [
                'success' => false,
                'message' => 'অর্ডারে গ্রাহকের ঠিকানা পাওয়া যায়নি।',
            ];
        }

        $fullAddress = $address->full_address ?: $address->address;
        $codAmount = $customCod !== null ? (float) $customCod : (float) $order->amount;
        $invoiceNumber = 'HB-' . $order->code;

        // If not configured, provide realistic simulation mode so admin can test
        if (!$this->isConfigured()) {
            $trackingCode = 'STDF-' . strtoupper(substr(md5($order->id . time()), 0, 8));
            $consignmentId = 'CID-' . rand(100000, 999999);

            $this->saveShipmentRecord($order, $consignmentId, $trackingCode, $codAmount, [
                'mode' => 'simulation',
                'notice' => 'Steadfast API Key সেটআপ করা নেই। এটি টেস্ট মোডে জেনারেট করা হয়েছে।',
            ]);

            return [
                'success' => true,
                'simulated' => true,
                'message' => 'অর্ডারটি টেস্ট মোডে সফলভাবে বুক করা হয়েছে! লাইভ এপিআই-এর জন্য সেটিংস থেকে Key দিন।',
                'consignment_id' => $consignmentId,
                'tracking_code' => $trackingCode,
                'tracking_url' => "https://steadfast.com.bd/t/{$trackingCode}",
            ];
        }

        try {
            $payload = [
                'invoice' => $invoiceNumber,
                'recipient_name' => $address->name,
                'recipient_phone' => $address->phone,
                'recipient_address' => $fullAddress,
                'cod_amount' => $codAmount,
                'note' => $note ?: setting('steadfast_default_note', 'Habitto BD - Handle with care'),
            ];

            $response = Http::withHeaders([
                'Api-Key' => $this->apiKey,
                'Secret-Key' => $this->secretKey,
                'Content-Type' => 'application/json',
            ])->timeout(15)->post("{$this->baseUrl}/create_order", $payload);

            $data = $response->json();

            if ($response->successful() && isset($data['status']) && $data['status'] == 200 && isset($data['consignment'])) {
                $consignment = $data['consignment'];
                $consignmentId = $consignment['consignment_id'] ?? null;
                $trackingCode = $consignment['tracking_code'] ?? null;

                $this->saveShipmentRecord($order, $consignmentId, $trackingCode, $codAmount, $data);

                return [
                    'success' => true,
                    'simulated' => false,
                    'message' => 'Steadfast কুরিয়ারে সফলভাবে বুকিং সম্পন্ন হয়েছে!',
                    'consignment_id' => $consignmentId,
                    'tracking_code' => $trackingCode,
                    'tracking_url' => "https://steadfast.com.bd/t/{$trackingCode}",
                ];
            }

            Log::error('Steadfast Create Order Failed', ['response' => $data]);
            $errorMessage = $data['message'] ?? 'কুরিয়ার এপিআই থেকে এরর এসেছে। তথ্য পুনরায় যাচাই করুন।';

            return [
                'success' => false,
                'message' => $errorMessage,
            ];
        } catch (\Throwable $e) {
            Log::error('Steadfast Exception', ['error' => $e->getMessage()]);
            return [
                'success' => false,
                'message' => 'কুরিয়ার সার্ভারের সাথে সংযোগ স্থাপন করা যায়নি: ' . $e->getMessage(),
            ];
        }
    }

    /**
     * Check live parcel status from Steadfast
     */
    public function checkStatus(string $trackingCode): array
    {
        if (!$this->isConfigured()) {
            return [
                'success' => true,
                'status' => 'in_transit',
                'status_label' => 'চলমান (In Transit - Test Mode)',
            ];
        }

        try {
            $response = Http::withHeaders([
                'Api-Key' => $this->apiKey,
                'Secret-Key' => $this->secretKey,
            ])->timeout(10)->get("{$this->baseUrl}/status_by_trackingcode/{$trackingCode}");

            $data = $response->json();

            if ($response->successful() && isset($data['status']) && $data['status'] == 200) {
                $deliveryStatus = $data['delivery_status'] ?? 'unknown';
                return [
                    'success' => true,
                    'status' => $deliveryStatus,
                    'status_label' => $this->mapStatusLabel($deliveryStatus),
                    'raw' => $data,
                ];
            }

            return [
                'success' => false,
                'message' => $data['message'] ?? 'স্ট্যাটাস পাওয়া যায়নি।',
            ];
        } catch (\Throwable $e) {
            return [
                'success' => false,
                'message' => $e->getMessage(),
            ];
        }
    }

    /**
     * Save shipment details into Botble ec_shipments
     */
    protected function saveShipmentRecord(Order $order, $consignmentId, $trackingCode, float $codAmount, array $meta = []): Shipment
    {
        $shipment = Shipment::query()->firstOrNew(['order_id' => $order->id]);
        $shipment->shipping_company_name = 'Steadfast Courier';
        $shipment->tracking_id = $trackingCode ?: $consignmentId;
        $shipment->tracking_link = "https://steadfast.com.bd/t/{$trackingCode}";
        $shipment->cod_amount = $codAmount;
        $shipment->status = 'pending';
        $shipment->metadata = $meta;
        $shipment->save();

        // Update Order to processing / delivering
        $order->status = \Botble\Ecommerce\Enums\OrderStatusEnum::PROCESSING;
        $order->save();

        return $shipment;
    }

    protected function mapStatusLabel(string $status): string
    {
        return match (strtolower($status)) {
            'in_review' => 'রিভিউতে রয়েছে (In Review)',
            'pending' => 'অপেক্ষমান (Pending)',
            'in_transit' => 'ডেলিভারির পথে (In Transit)',
            'delivered' => 'সফলভাবে ডেলিভারড (Delivered)',
            'partial_delivered' => 'আংশিক ডেলিভারি (Partial Delivered)',
            'cancelled' => 'বাতিল / রিটার্ন (Cancelled)',
            'hold' => 'হোল্ড করা হয়েছে (On Hold)',
            default => ucfirst($status),
        };
    }
}
