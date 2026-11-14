<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Services\SmsService;
use Botble\Ecommerce\Models\Order;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class SmsController extends Controller
{
    protected SmsService $smsService;

    public function __construct(SmsService $smsService)
    {
        $this->smsService = $smsService;
    }

    /**
     * SMS Settings & Dashboard
     */
    public function settings(Request $request)
    {
        if ($request->isMethod('post')) {
            $request->validate([
                'sms_provider' => 'required|string',
                'sms_api_key' => 'nullable|string|max:500',
                'sms_sender_id' => 'nullable|string|max:100',
                'sms_admin_phone' => 'nullable|string|max:30',
                'sms_hotline_number' => 'nullable|string|max:30',
                'sms_custom_url' => 'nullable|string|max:1000',
            ]);

            setting()->set([
                'sms_provider' => $request->input('sms_provider', 'simulation'),
                'sms_api_key' => $request->input('sms_api_key'),
                'sms_sender_id' => $request->input('sms_sender_id'),
                'sms_admin_phone' => $request->input('sms_admin_phone', '01674936203'),
                'sms_hotline_number' => $request->input('sms_hotline_number', '01674936203'),
                'sms_custom_url' => $request->input('sms_custom_url'),
                'sms_custom_method' => $request->input('sms_custom_method', 'GET'),
                'sms_enable_order_placed' => $request->has('sms_enable_order_placed') ? '1' : '0',
                'sms_enable_courier_dispatched' => $request->has('sms_enable_courier_dispatched') ? '1' : '0',
                'sms_enable_admin_alert' => $request->has('sms_enable_admin_alert') ? '1' : '0',
                'sms_template_order_placed' => $request->input('sms_template_order_placed'),
                'sms_template_courier_dispatched' => $request->input('sms_template_courier_dispatched'),
                'sms_template_admin_alert' => $request->input('sms_template_admin_alert'),
            ])->save();

            return redirect()->back()->with('success_msg', 'এসএমএস গেটওয়ে সেটিংস সফলভাবে সংরক্ষিত হয়েছে!');
        }

        $logs = DB::table('habitto_sms_logs')->latest()->take(20)->get();

        return view('admin.sms.settings', compact('logs'));
    }

    /**
     * Send instant Test SMS
     */
    public function sendTestSms(Request $request): JsonResponse
    {
        $request->validate([
            'phone' => 'required|string',
            'message' => 'required|string|max:500',
        ]);

        $phone = $request->input('phone');
        $message = $request->input('message');

        $result = $this->smsService->send($phone, $message);

        return response()->json($result);
    }

    /**
     * Send manual custom SMS to customer from Order page
     */
    public function sendOrderSms(Request $request, int|string $orderId): JsonResponse
    {
        $order = Order::with('address')->findOrFail($orderId);
        $phone = $order->address ? $order->address->phone : null;

        if (!$phone) {
            return response()->json(['success' => false, 'message' => 'এই অর্ডারে কোনো গ্রাহকের ফোন নম্বর নেই।'], 422);
        }

        $message = $request->input('message');
        if (empty($message)) {
            $type = $request->input('type', 'confirmation');
            if ($type === 'courier' && $order->shipment) {
                return response()->json($this->smsService->sendCourierDispatchedSms($order, $order->shipment->tracking_id, $order->shipment->tracking_link));
            }
            return response()->json($this->smsService->sendOrderConfirmationSms($order));
        }

        return response()->json($this->smsService->send($phone, $message, $order->id));
    }
}
