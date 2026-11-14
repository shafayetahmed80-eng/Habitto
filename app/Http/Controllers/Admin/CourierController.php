<?php

namespace App\Http\Controllers\Admin;

use App\Helpers\BarcodeHelper;
use App\Http\Controllers\Controller;
use App\Services\SteadfastService;
use Botble\Base\Facades\BaseHelper;
use Botble\Ecommerce\Models\Order;
use Botble\Ecommerce\Models\Shipment;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class CourierController extends Controller
{
    protected SteadfastService $steadfast;

    public function __construct(SteadfastService $steadfast)
    {
        $this->steadfast = $steadfast;
    }

    /**
     * Book order with Steadfast Courier
     */
    public function bookOrder(Request $request, int|string $id): JsonResponse
    {
        /** @var Order $order */
        $order = Order::query()->with(['address', 'products', 'shipment'])->findOrFail($id);

        $note = $request->input('note');
        $codAmount = $request->has('cod_amount') ? (float) $request->input('cod_amount') : null;

        $result = $this->steadfast->createOrder($order, $note, $codAmount);

        // If booking succeeded, trigger courier dispatched SMS to customer
        if (!empty($result['success']) && !empty($result['tracking_code'])) {
            try {
                app(\App\Services\SmsService::class)->sendCourierDispatchedSms(
                    $order,
                    $result['tracking_code'],
                    $result['tracking_url'] ?? null
                );
            } catch (\Throwable $e) {
                \Illuminate\Support\Facades\Log::warning('Courier SMS failed: ' . $e->getMessage());
            }
        }

        return response()->json($result);
    }

    /**
     * Live track parcel status from Steadfast
     */
    public function trackOrder(int|string $id): JsonResponse
    {
        $order = Order::query()->with('shipment')->findOrFail($id);
        $shipment = $order->shipment;

        if (!$shipment || !$shipment->tracking_id) {
            return response()->json([
                'success' => false,
                'message' => 'এই অর্ডারে কোনো পার্সেল ট্র্যাকিং নম্বর পাওয়া যায়নি।',
            ], 404);
        }

        $result = $this->steadfast->checkStatus($shipment->tracking_id);

        // Update shipment status if available
        if (!empty($result['status']) && $result['status'] !== 'unknown') {
            $shipment->status = $result['status'];
            $shipment->save();
        }

        return response()->json($result);
    }

    /**
     * Render printable thermal packing slip / shipping invoice
     */
    public function packingSlip(int|string $id): View
    {
        /** @var Order $order */
        $order = Order::query()
            ->with(['address', 'products', 'payment', 'shipment'])
            ->findOrFail($id);

        $address = $order->address;
        $upazila = null;
        $detailAddress = $address ? $address->address : '';

        // Extract Upazila if formatted as "উপজেলা/থানা: [Upazila], [Address]"
        if ($address && preg_match('/(?:উপজেলা\/থানা|Upazila\/Thana|Upazila):\s*([^,]+),\s*(.*)/iu', $address->address, $matches)) {
            $upazila = trim($matches[1]);
            $detailAddress = trim($matches[2]);
        }

        // Generate Order Code Barcode
        $orderBarcode = BarcodeHelper::generateCode128Svg($order->code, 45, 2);

        // Generate Courier Barcode if tracked
        $courierBarcode = null;
        if ($order->shipment && $order->shipment->tracking_id) {
            $courierBarcode = BarcodeHelper::generateCode128Svg($order->shipment->tracking_id, 45, 2);
        }

        return view('admin.courier.packing-slip', compact(
            'order',
            'address',
            'upazila',
            'detailAddress',
            'orderBarcode',
            'courierBarcode'
        ));
    }

    /**
     * Courier Settings page
     */
    public function settings(Request $request)
    {
        if ($request->isMethod('post')) {
            $request->validate([
                'steadfast_base_url' => 'nullable|url',
                'steadfast_api_key' => 'nullable|string|max:255',
                'steadfast_secret_key' => 'nullable|string|max:255',
                'steadfast_default_note' => 'nullable|string|max:500',
            ]);

            setting()->set([
                'steadfast_base_url' => $request->input('steadfast_base_url', 'https://portal.steadfast.com.bd/api/v1'),
                'steadfast_api_key' => $request->input('steadfast_api_key'),
                'steadfast_secret_key' => $request->input('steadfast_secret_key'),
                'steadfast_default_note' => $request->input('steadfast_default_note', 'Habitto BD - Luxury Attire'),
            ])->save();

            return redirect()->back()->with('success_msg', 'Steadfast কুরিয়ার সেটিংস সফলভাবে সংরক্ষিত হয়েছে!');
        }

        return view('admin.courier.settings');
    }
}
