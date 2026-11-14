<!DOCTYPE html>
<html lang="bn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>চালান ও প্যাকিং স্লিপ - {{ $order->code }} | Habitto BD</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@400;500;600;700&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --brand-dark: #0F172A;
            --brand-accent: #C5A880;
            --border-color: #cbd5e1;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Hind Siliguri', 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            background: #f1f5f9;
            color: #0f172a;
            padding: 24px;
            font-size: 13px;
            line-height: 1.4;
        }

        .no-print-toolbar {
            max-width: 650px;
            margin: 0 auto 16px auto;
            background: #ffffff;
            padding: 12px 18px;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 2px 8px rgba(0,0,0,0.06);
            border: 1px solid #e2e8f0;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 8px 16px;
            font-size: 13px;
            font-weight: 600;
            border-radius: 6px;
            cursor: pointer;
            border: 1px solid transparent;
            text-decoration: none;
            transition: all 0.2s;
        }

        .btn-primary {
            background: #0F172A;
            color: #ffffff;
        }
        .btn-primary:hover {
            background: #1e293b;
        }

        .btn-outline {
            background: #ffffff;
            color: #334155;
            border-color: #cbd5e1;
        }
        .btn-outline:hover {
            background: #f8fafc;
        }

        .btn-active {
            background: #e2e8f0;
            font-weight: 700;
        }

        /* PACKING SLIP SHEET */
        .slip-container {
            max-width: 650px;
            margin: 0 auto;
            background: #ffffff;
            padding: 24px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
            border: 1px solid #e2e8f0;
            transition: all 0.3s;
        }

        /* 80mm Mode preview */
        body.mode-80mm .slip-container {
            max-width: 320px;
            padding: 12px;
            font-size: 12px;
        }

        .header-section {
            border-bottom: 2px dashed #0F172A;
            padding-bottom: 12px;
            margin-bottom: 14px;
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }

        body.mode-80mm .header-section {
            flex-direction: column;
            text-align: center;
            align-items: center;
            gap: 8px;
        }

        .brand-title {
            font-size: 20px;
            font-weight: 800;
            color: #0F172A;
            letter-spacing: 0.5px;
        }

        .brand-subtitle {
            font-size: 11px;
            color: #64748b;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .contact-info {
            font-size: 11px;
            color: #334155;
            margin-top: 4px;
        }

        .order-meta-box {
            text-align: right;
        }

        body.mode-80mm .order-meta-box {
            text-align: center;
        }

        .order-code {
            font-size: 16px;
            font-weight: 700;
            color: #0F172A;
        }

        .barcode-container {
            margin: 6px 0;
            display: flex;
            justify-content: flex-end;
        }

        body.mode-80mm .barcode-container {
            justify-content: center;
        }

        /* RECIPIENT BOX */
        .recipient-card {
            background: #f8fafc;
            border: 2px solid #0F172A;
            border-radius: 6px;
            padding: 12px;
            margin-bottom: 14px;
        }

        .recipient-title {
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            color: #475569;
            margin-bottom: 6px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .recipient-name {
            font-size: 16px;
            font-weight: 700;
            color: #0F172A;
        }

        .recipient-phone {
            font-size: 16px;
            font-weight: 800;
            color: #0F172A;
            background: #fef08a;
            padding: 2px 8px;
            border-radius: 4px;
            display: inline-block;
            margin: 4px 0 6px 0;
            border: 1px solid #eab308;
            letter-spacing: 0.5px;
        }

        .location-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 6px;
            margin-top: 6px;
            background: #ffffff;
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #e2e8f0;
            font-size: 12px;
        }

        body.mode-80mm .location-grid {
            grid-template-columns: 1fr;
        }

        .loc-item strong {
            color: #475569;
        }

        /* COD BOX */
        .cod-banner {
            background: #dc2626;
            color: #ffffff;
            padding: 10px 14px;
            border-radius: 6px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 15px;
            font-weight: 700;
            margin-bottom: 14px;
        }

        body.mode-80mm .cod-banner {
            flex-direction: column;
            text-align: center;
            gap: 4px;
            padding: 8px;
        }

        .cod-amount {
            font-size: 18px;
            font-weight: 900;
            background: #ffffff;
            color: #dc2626;
            padding: 2px 10px;
            border-radius: 4px;
        }

        /* PRODUCT CHECKLIST */
        .items-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 14px;
            font-size: 12px;
        }

        .items-table th {
            background: #0F172A;
            color: #ffffff;
            padding: 6px 8px;
            text-align: left;
            font-weight: 600;
            font-size: 11px;
        }

        .items-table td {
            padding: 6px 8px;
            border-bottom: 1px solid #e2e8f0;
            vertical-align: top;
        }

        .items-table tr:nth-child(even) {
            background: #f8fafc;
        }

        .check-box {
            display: inline-block;
            width: 15px;
            height: 15px;
            border: 1.5px solid #0F172A;
            border-radius: 2px;
            vertical-align: middle;
            margin-right: 4px;
        }

        /* SUMMARY TABLE */
        .summary-box {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 14px;
        }

        .summary-table {
            width: 260px;
            border-collapse: collapse;
            font-size: 12px;
        }

        body.mode-80mm .summary-table {
            width: 100%;
        }

        .summary-table td {
            padding: 4px 6px;
        }

        .summary-table tr.total-row {
            font-weight: 700;
            border-top: 1.5px solid #0F172A;
            border-bottom: 1.5px solid #0F172A;
            font-size: 13px;
        }

        /* NOTICE BOX */
        .notice-card {
            border: 1px dashed #64748b;
            background: #f8fafc;
            padding: 8px 12px;
            border-radius: 4px;
            font-size: 11px;
            color: #334155;
            margin-bottom: 12px;
        }

        .notice-card strong {
            color: #0F172A;
        }

        .footer-text {
            text-align: center;
            font-size: 10px;
            color: #94a3b8;
            margin-top: 8px;
        }

        /* PRINT STYLES */
        @media print {
            body {
                background: #ffffff !important;
                padding: 0 !important;
                color: #000000 !important;
            }

            .no-print-toolbar {
                display: none !important;
            }

            .slip-container {
                border: none !important;
                box-shadow: none !important;
                padding: 0 !important;
                max-width: 100% !important;
                width: 100% !important;
            }

            body.mode-80mm .slip-container {
                max-width: 80mm !important;
                width: 80mm !important;
            }

            .recipient-phone {
                border: 1px solid #000000 !important;
                background: #fef08a !important;
                -webkit-print-color-adjust: exact;
                print-color-adjust: exact;
            }

            .cod-banner {
                background: #000000 !important;
                color: #ffffff !important;
                -webkit-print-color-adjust: exact;
                print-color-adjust: exact;
            }

            .cod-amount {
                color: #000000 !important;
                background: #ffffff !important;
                -webkit-print-color-adjust: exact;
                print-color-adjust: exact;
            }

            .items-table th {
                background: #000000 !important;
                color: #ffffff !important;
                -webkit-print-color-adjust: exact;
                print-color-adjust: exact;
            }
        }
    </style>
</head>
<body>

    {{-- NON-PRINTABLE TOOLBAR --}}
    <div class="no-print-toolbar">
        <div style="display: flex; gap: 8px; align-items: center;">
            <button type="button" class="btn btn-primary" onclick="window.print()">
                🖨️ প্রিন্ট করুন (Print)
            </button>
            <button type="button" class="btn btn-outline" id="btn-toggle-80mm" onclick="toggleLayout('80mm')">
                📏 80mm থার্মাল মোড
            </button>
            <button type="button" class="btn btn-outline btn-active" id="btn-toggle-a4" onclick="toggleLayout('a4')">
                📄 সাধারণ (A4/A5) মোড
            </button>
        </div>
        <div>
            <button type="button" class="btn btn-outline" onclick="window.close()">
                ❌ বন্ধ করুন
            </button>
        </div>
    </div>

    {{-- PACKING SLIP CONTENT --}}
    <div class="slip-container">

        {{-- HEADER --}}
        <div class="header-section">
            <div>
                <div class="brand-title">HABITTO BD</div>
                <div class="brand-subtitle">Premium Menswear & Lifestyle</div>
                <div class="contact-info">
                    📞 হটলাইন: <strong>01674936203</strong><br>
                    🌐 habittobd.com | ঢাকা, বাংলাদেশ
                </div>
            </div>
            <div class="order-meta-box">
                <div class="order-code">{{ $order->code }}</div>
                <div style="font-size: 11px; color: #64748b;">
                    তারিখ: {{ $order->created_at->format('d M Y, h:i A') }}
                </div>
                <div class="barcode-container">
                    {!! $orderBarcode !!}
                </div>
            </div>
        </div>

        {{-- RECIPIENT INFORMATION --}}
        <div class="recipient-card">
            <div class="recipient-title">
                <span>📦 ডেলিভারি প্রাপকের তথ্য (Recipient)</span>
                @if ($order->shipment && $order->shipment->shipping_company_name)
                    <span style="color: #0F172A; font-weight: 800;">
                        কুরিয়ার: {{ $order->shipment->shipping_company_name }}
                    </span>
                @endif
            </div>

            <div class="recipient-name">
                {{ $address ? $address->name : 'নাম পাওয়া যায়নি' }}
            </div>

            <div>
                <span class="recipient-phone">
                    📞 {{ $address ? $address->phone : 'মোবাইল নম্বর নেই' }}
                </span>
            </div>

            {{-- 3-TIER ADDRESS STRUCTURE --}}
            <div class="location-grid">
                <div class="loc-item">
                    <strong>বিভাগ (Division):</strong>
                    <span>{{ $address ? ($address->state_name ?: 'ঢাকা') : '-' }}</span>
                </div>
                <div class="loc-item">
                    <strong>জেলা (District):</strong>
                    <span>{{ $address ? ($address->city_name ?: '-') : '-' }}</span>
                </div>
                <div class="loc-item">
                    <strong>উপজেলা / থানা:</strong>
                    <span>{{ $upazila ?: ($address ? $address->city_name : '-') }}</span>
                </div>
                <div class="loc-item">
                    <strong>ডেলিভারি মেথড:</strong>
                    <span>{{ $order->shipping_method_name ?: 'হোম ডেলিভারি' }}</span>
                </div>
            </div>

            <div style="margin-top: 8px; font-size: 12px; background: #ffffff; padding: 6px 8px; border-radius: 4px; border: 1px solid #e2e8f0;">
                <strong style="color: #475569;">বিস্তারিত ঠিকানা:</strong>
                <span style="font-weight: 600; color: #0F172A;">{{ $detailAddress ?: ($address ? $address->address : '-') }}</span>
            </div>
        </div>

        {{-- COURIER TRACKING CODE (IF BOOKED) --}}
        @if ($courierBarcode)
        <div style="text-align: center; margin-bottom: 12px; padding: 8px; background: #f8fafc; border: 1px solid #cbd5e1; border-radius: 6px;">
            <div style="font-size: 11px; font-weight: 700; color: #475569; margin-bottom: 4px;">STEADFAST TRACKING BARCODE</div>
            <div style="display: flex; justify-content: center;">
                {!! $courierBarcode !!}
            </div>
        </div>
        @endif

        {{-- COD AMOUNT BANNER --}}
        <div class="cod-banner">
            <span>
                ক্যাশ অন ডেলিভারি (COD কালেকশন)
            </span>
            <span class="cod-amount">
                ৳ {{ number_format($order->shipment ? $order->shipment->cod_amount : $order->amount, 2) }}
            </span>
        </div>

        {{-- ITEMS CHECKLIST --}}
        <table class="items-table">
            <thead>
                <tr>
                    <th style="width: 25px;">প্যাক</th>
                    <th>প্রোডাক্টের বিবরণ (Item & Details)</th>
                    <th style="text-align: center; width: 45px;">পরিমাণ</th>
                    <th style="text-align: right; width: 70px;">মূল্য</th>
                    <th style="text-align: right; width: 75px;">মোট</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($order->products as $item)
                    @php
                        $sku = $item->options['sku'] ?? null;
                        $attr = $item->options['attributes'] ?? null;
                    @endphp
                    <tr>
                        <td style="text-align: center;">
                            <span class="check-box"></span>
                        </td>
                        <td>
                            <strong style="color: #0F172A;">{{ $item->product_name }}</strong>
                            <div style="font-size: 11px; color: #64748b; margin-top: 2px;">
                                @if ($sku) <span style="font-family: monospace; font-weight: 600;">SKU: {{ $sku }}</span> @endif
                                @if ($attr) <span style="margin-left: 6px; color: #0F172A; font-weight: 600;">{{ $attr }}</span> @endif
                            </div>
                        </td>
                        <td style="text-align: center; font-weight: 700;">{{ $item->qty }}</td>
                        <td style="text-align: right;">৳ {{ number_format($item->price, 2) }}</td>
                        <td style="text-align: right; font-weight: 700;">৳ {{ number_format($item->price * $item->qty, 2) }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        {{-- FINANCIAL SUMMARY --}}
        <div class="summary-box">
            <table class="summary-table">
                <tr>
                    <td class="text-muted">সাবটোটাল:</td>
                    <td style="text-align: right;">৳ {{ number_format($order->sub_total, 2) }}</td>
                </tr>
                <tr>
                    <td class="text-muted">শিপিং চার্জ:</td>
                    <td style="text-align: right;">৳ {{ number_format($order->shipping_amount, 2) }}</td>
                </tr>
                @if ($order->discount_amount > 0)
                <tr>
                    <td class="text-muted">ডিসকাউন্ট:</td>
                    <td style="text-align: right; color: #dc2626;">- ৳ {{ number_format($order->discount_amount, 2) }}</td>
                </tr>
                @endif
                <tr class="total-row">
                    <td>সর্বমোট প্রদেয় (COD):</td>
                    <td style="text-align: right; color: #0F172A; font-size: 14px;">৳ {{ number_format($order->amount, 2) }}</td>
                </tr>
            </table>
        </div>

        {{-- CUSTOMER CARE & UNBOXING NOTICE --}}
        <div class="notice-card">
            <strong>⚠️ ডেলিভারি ও রিটার্ন সংক্রান্ত গুরুত্বপূর্ণ নির্দেশনাবলী:</strong>
            <ol style="padding-left: 18px; margin-top: 4px; line-height: 1.5;">
                <li>দয়া করে ডেলিভারি পার্সন এর সামনে প্রোডাক্ট চেক করে রিসিভ করুন অথবা পার্সেল খোলার স্পষ্ট আনবক্সিং ভিডিও করুন।</li>
                <li>সাইজ বা ফিটিং সমস্যা হলে পার্সেল রিসিভ করার ২৪ ঘণ্টার মধ্যে আমাদের ইনবক্সে জানান অথবা কল করুন: <strong>০১৬৭৪৯৩৬২০৩</strong>।</li>
                <li>প্রোডাক্টের ট্যাগ ও পলিব্যাগ অবশ্যই অক্ষত থাকতে হবে।</li>
            </ol>
        </div>

        <div class="footer-text">
            Habitto BD - Elevating Everyday Streetwear | Thank you for shopping with us!
        </div>
    </div>

    <script>
        function toggleLayout(mode) {
            const btn80 = document.getElementById('btn-toggle-80mm');
            const btnA4 = document.getElementById('btn-toggle-a4');
            if (mode === '80mm') {
                document.body.classList.add('mode-80mm');
                btn80.classList.add('btn-active');
                btnA4.classList.remove('btn-active');
            } else {
                document.body.classList.remove('mode-80mm');
                btnA4.classList.add('btn-active');
                btn80.classList.remove('btn-active');
            }
        }

        // Auto print if requested via URL
        if (new URLSearchParams(window.location.search).get('autoprint') === '1') {
            window.addEventListener('load', function () {
                window.print();
            });
        }
    </script>
</body>
</html>
