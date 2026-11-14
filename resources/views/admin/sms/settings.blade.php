@extends(BaseHelper::getAdminMasterLayoutTemplate())

@section('content')
    <div class="row">
        <div class="col-md-8">
            @if (session('success_msg'))
                <div class="alert alert-success alert-dismissible mb-3" role="alert">
                    <div class="d-flex">
                        <div><x-core::icon name="ti ti-check" /></div>
                        <div class="ms-2">
                            <h4 class="alert-title">{{ trans('core/base::notices.success') }}</h4>
                            <div class="text-secondary">{{ session('success_msg') }}</div>
                        </div>
                    </div>
                </div>
            @endif

            <form action="{{ route('sms.settings') }}" method="POST">
                @csrf

                {{-- GATEWAY CONFIGURATION CARD --}}
                <x-core::card class="shadow-sm mb-3">
                    <x-core::card.header class="d-flex justify-content-between align-items-center">
                        <x-core::card.title class="d-flex align-items-center gap-2">
                            <x-core::icon name="ti ti-message-dots" class="text-primary" />
                            এসএমএস গেটওয়ে কনফিগারেশন (SMS Gateway Settings)
                        </x-core::card.title>

                        @php
                            $provider = setting('sms_provider', 'simulation');
                        @endphp

                        <div>
                            @if ($provider === 'simulation')
                                <span class="badge bg-warning-subtle text-warning p-2">
                                    <i class="ti ti-device-mobile"></i> টেস্ট মোড সক্রিয় (Simulation)
                                </span>
                            @else
                                <span class="badge bg-success-subtle text-success p-2">
                                    <i class="ti ti-check"></i> লাইভ গেটওয়ে: {{ ucfirst($provider) }}
                                </span>
                            @endif
                        </div>
                    </x-core::card.header>

                    <x-core::card.body>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label required">এসএমএস প্রোভাইডার (SMS Provider)</label>
                                <select name="sms_provider" id="sms_provider" class="form-select" required>
                                    <option value="simulation" @selected($provider === 'simulation')>🧪 টেস্ট / সিমুলেশন মোড (কোনো ব্যালেন্স কাটবে না)</option>
                                    <option value="greenweb" @selected($provider === 'greenweb')>🟢 Greenweb BD (api.greenweb.com.bd)</option>
                                    <option value="bulksmsbd" @selected($provider === 'bulksmsbd')>🔵 BulkSMSBD (bulksmsbd.net)</option>
                                    <option value="elitbuzz" @selected($provider === 'elitbuzz')>🟡 ElitBuzz BD (elitbuzz-bd.com)</option>
                                    <option value="mimsms" @selected($provider === 'mimsms')>🟣 MimSMS (mimsms.com)</option>
                                    <option value="custom" @selected($provider === 'custom')>⚙️ কাস্টম এইচটিটিপি গেটওয়ে (Custom HTTP API)</option>
                                </select>
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">সেন্ডার আইডি / মাস্কিং নাম (Sender ID / Masking)</label>
                                <input type="text" name="sms_sender_id" class="form-control" value="{{ setting('sms_sender_id') }}" placeholder="যেমন: 88096... অথবা নন-মাস্কিং খালি রাখুন">
                                <small class="form-hint text-muted">নন-মাস্কিং হলে খালি রাখুন অথবা প্রোভাইডারের দেওয়া আইডি দিন।</small>
                            </div>
                        </div>

                        <div class="mb-3" id="api_key_group">
                            <label class="form-label">এপিআই কি / টোকেন (API Key / Token)</label>
                            <input type="text" name="sms_api_key" class="form-control font-monospace" value="{{ setting('sms_api_key') }}" placeholder="আপনার প্রোভাইডারের API Key বা টোকেন দিন...">
                        </div>

                        <div id="custom_gateway_fields" class="p-3 mb-3 bg-light rounded border @if($provider !== 'custom') d-none @endif">
                            <h5 class="fw-bold mb-2">কাস্টম গেটওয়ে ইউআরএল ফরম্যাট</h5>
                            <div class="mb-2">
                                <label class="form-label">রিকোয়েস্ট ইউআরএল (Request URL)</label>
                                <input type="text" name="sms_custom_url" class="form-control font-monospace" value="{{ setting('sms_custom_url') }}" placeholder="https://api.example.com/send?apiKey={api_key}&to={phone}&msg={message}">
                                <small class="form-hint text-muted">ট্যাগসমূহ: <code>{phone}</code>, <code>{message}</code>, <code>{api_key}</code>, <code>{sender_id}</code></small>
                            </div>
                            <div>
                                <label class="form-label">HTTP মেথড</label>
                                <select name="sms_custom_method" class="form-select form-select-sm w-auto">
                                    <option value="GET" @selected(setting('sms_custom_method', 'GET') === 'GET')>GET</option>
                                    <option value="POST" @selected(setting('sms_custom_method') === 'POST')>POST</option>
                                </select>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label">দোকানের হটলাইন নম্বর (SMS-এ গ্রাহককে দেওয়া হবে)</label>
                                <input type="text" name="sms_hotline_number" class="form-control" value="{{ setting('sms_hotline_number', '01674936203') }}" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label">অ্যাডমিন মোবাইল নম্বর (নতুন অর্ডার নোটিফিকেশনের জন্য)</label>
                                <input type="text" name="sms_admin_phone" class="form-control" value="{{ setting('sms_admin_phone', '01674936203') }}">
                            </div>
                        </div>
                    </x-core::card.body>
                </x-core::card>

                {{-- AUTOMATED NOTIFICATION TEMPLATES CARD --}}
                <x-core::card class="shadow-sm mb-3">
                    <x-core::card.header>
                        <x-core::card.title class="d-flex align-items-center gap-2">
                            <x-core::icon name="ti ti-bell-ringing" class="text-success" />
                            অটোমেটিক এসএমএস নোটিফিকেশন ও মেসেজ টেমপ্লেট
                        </x-core::card.title>
                    </x-core::card.header>

                    <x-core::card.body>
                        {{-- 1. ORDER CONFIRMATION --}}
                        <div class="mb-4 pb-3 border-bottom">
                            <div class="form-check form-switch mb-2">
                                <input class="form-check-input" type="checkbox" name="sms_enable_order_placed" id="sms_enable_order_placed" value="1" @checked(setting('sms_enable_order_placed', '1') == '1')>
                                <label class="form-check-label fw-bold" for="sms_enable_order_placed">
                                    ১. অর্ডার কনফার্মেশন এসএমএস (গ্রাহকের মোবাইলে স্বয়ংক্রিয়ভাবে যাবে)
                                </label>
                            </div>
                            <textarea name="sms_template_order_placed" class="form-control" rows="3">{{ setting('sms_template_order_placed', 'প্রিয় {customer_name}, Habitto BD-তে আপনার অর্ডার #{order_id} সফলভাবে সম্পন্ন হয়েছে। সর্বমোট প্রদেয়: ৳{order_total} (ক্যাশ অন ডেলিভারি)। হটলাইন: {hotline}') }}</textarea>
                            <small class="form-hint text-muted">ট্যাগ: <code>{customer_name}</code>, <code>{order_id}</code>, <code>{order_total}</code>, <code>{district}</code>, <code>{hotline}</code></small>
                        </div>

                        {{-- 2. COURIER DISPATCHED --}}
                        <div class="mb-4 pb-3 border-bottom">
                            <div class="form-check form-switch mb-2">
                                <input class="form-check-input" type="checkbox" name="sms_enable_courier_dispatched" id="sms_enable_courier_dispatched" value="1" @checked(setting('sms_enable_courier_dispatched', '1') == '1')>
                                <label class="form-check-label fw-bold" for="sms_enable_courier_dispatched">
                                    ২. কুরিয়ার হ্যান্ডওভার / ট্র্যাকিং এসএমএস (Steadfast-এ পার্সেল বুক করার পর যাবে)
                                </label>
                            </div>
                            <textarea name="sms_template_courier_dispatched" class="form-control" rows="3">{{ setting('sms_template_courier_dispatched', 'প্রিয় {customer_name}, আপনার অর্ডার #{order_id} Steadfast কুরিয়ারে হস্তান্তর করা হয়েছে। ট্র্যাকিং কোড: {tracking_code}। ট্র্যাকিং লিঙ্ক: {tracking_url}। সাথে থাকার জন্য ধন্যবাদ - Habitto BD') }}</textarea>
                            <small class="form-hint text-muted">ট্যাগ: <code>{customer_name}</code>, <code>{order_id}</code>, <code>{tracking_code}</code>, <code>{tracking_url}</code>, <code>{hotline}</code></small>
                        </div>

                        {{-- 3. ADMIN ALERT --}}
                        <div class="mb-2">
                            <div class="form-check form-switch mb-2">
                                <input class="form-check-input" type="checkbox" name="sms_enable_admin_alert" id="sms_enable_admin_alert" value="1" @checked(setting('sms_enable_admin_alert', '1') == '1')>
                                <label class="form-check-label fw-bold" for="sms_enable_admin_alert">
                                    ৩. অ্যাডমিন অ্যালার্ট এসএমএস (নতুন অর্ডার আসলে আপনার মোবাইলে এসএমএস আসবে)
                                </label>
                            </div>
                            <textarea name="sms_template_admin_alert" class="form-control" rows="2">{{ setting('sms_template_admin_alert', '[Habitto BD] নতুন অর্ডার এসেছে! অর্ডার #{order_id}, গ্রাহক: {customer_name}, মূল্য: ৳{order_total}, জেলা: {district}।') }}</textarea>
                        </div>
                    </x-core::card.body>

                    <x-core::card.footer class="d-flex justify-content-end">
                        <button type="submit" class="btn btn-primary">
                            <x-core::icon name="ti ti-device-floppy" /> এসএমএস সেটিংস সংরক্ষণ করুন
                        </button>
                    </x-core::card.footer>
                </x-core::card>
            </form>
        </div>

        {{-- SIDEBAR: TEST SMS TOOL & LOGS --}}
        <div class="col-md-4">
            {{-- INSTANT TEST SMS CARD --}}
            <x-core::card class="shadow-sm mb-3 border-primary-subtle">
                <x-core::card.header class="bg-primary-subtle py-2">
                    <x-core::card.title class="d-flex align-items-center gap-2" style="font-size: 14px;">
                        <x-core::icon name="ti ti-bolt" class="text-primary" />
                        ইনস্ট্যান্ট টেস্ট এসএমএস টুল
                    </x-core::card.title>
                </x-core::card.header>

                <x-core::card.body class="p-3">
                    <p class="text-muted small mb-2">আপনার গেটওয়ে সঠিকভাবে কাজ করছে কিনা পরীক্ষা করতে যেকোনো নম্বরে একটি পরীক্ষামূলক এসএমএস পাঠান:</p>

                    <div class="mb-2">
                        <label class="form-label small mb-1">প্রাপকের মোবাইল নম্বর</label>
                        <input type="text" id="test_phone" class="form-control form-control-sm" placeholder="017xxxxxxxx" value="{{ setting('sms_admin_phone', '01674936203') }}">
                    </div>

                    <div class="mb-3">
                        <label class="form-label small mb-1">টেস্ট মেসেজ</label>
                        <textarea id="test_message" class="form-control form-control-sm" rows="2">Habitto BD টেস্ট মেসেজ: আপনার এসএমএস গেটওয়ে সফলভাবে কনফিগার হয়েছে!</textarea>
                    </div>

                    <div class="d-grid">
                        <button type="button" id="btn-send-test-sms" class="btn btn-sm btn-primary">
                            <span id="test-sms-spinner" class="spinner-border spinner-border-sm d-none me-1" role="status"></span>
                            <i class="ti ti-send" id="test-sms-icon"></i> টেস্ট এসএমএস পাঠান
                        </button>
                    </div>

                    <div id="test-sms-result" class="mt-2 d-none"></div>
                </x-core::card.body>
            </x-core::card>

            {{-- RECENT SMS LOGS --}}
            <x-core::card class="shadow-sm">
                <x-core::card.header class="py-2">
                    <x-core::card.title class="d-flex align-items-center gap-2" style="font-size: 14px;">
                        <x-core::icon name="ti ti-history" />
                        সর্বশেষ পাঠানো এসএমএস হিস্ট্রি
                    </x-core::card.title>
                </x-core::card.header>

                <x-core::card.body class="p-0">
                    <div class="table-responsive" style="max-height: 400px; overflow-y: auto;">
                        <table class="table table-sm table-striped m-0" style="font-size: 12px;">
                            <thead>
                                <tr>
                                    <th>নম্বর</th>
                                    <th>স্ট্যাটাস</th>
                                    <th>সময়</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($logs as $log)
                                    <tr>
                                        <td>
                                            <span class="font-monospace fw-bold">{{ $log->phone }}</span>
                                            <div class="text-muted text-truncate" style="max-width: 150px; font-size: 10px;" title="{{ $log->message }}">
                                                {{ $log->message }}
                                            </div>
                                        </td>
                                        <td>
                                            @if ($log->status === 'sent')
                                                <span class="badge bg-success-subtle text-success">Sent</span>
                                            @elseif ($log->status === 'simulated')
                                                <span class="badge bg-warning-subtle text-warning">Test</span>
                                            @else
                                                <span class="badge bg-danger-subtle text-danger">Failed</span>
                                            @endif
                                        </td>
                                        <td class="text-muted" style="font-size: 10px;">
                                            {{ \Carbon\Carbon::parse($log->created_at)->diffForHumans() }}
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="3" class="text-center text-muted p-3">
                                            এখনো কোনো এসএমএস পাঠানো হয়নি।
                                        </td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </x-core::card.body>
            </x-core::card>
        </div>
    </div>

    <script>
    document.addEventListener('DOMContentLoaded', function () {
        const providerSelect = document.getElementById('sms_provider');
        const customFields = document.getElementById('custom_gateway_fields');

        if (providerSelect && customFields) {
            providerSelect.addEventListener('change', function () {
                if (this.value === 'custom') {
                    customFields.classList.remove('d-none');
                } else {
                    customFields.classList.add('d-none');
                }
            });
        }

        const btnTest = document.getElementById('btn-send-test-sms');
        if (btnTest) {
            btnTest.addEventListener('click', function () {
                const phone = document.getElementById('test_phone').value;
                const message = document.getElementById('test_message').value;
                const spinner = document.getElementById('test-sms-spinner');
                const icon = document.getElementById('test-sms-icon');
                const resultBox = document.getElementById('test-sms-result');

                if (!phone || !message) {
                    alert('মোবাইল নম্বর ও মেসেজ উভয়ই পূরণ করুন।');
                    return;
                }

                btnTest.disabled = true;
                spinner.classList.remove('d-none');
                icon.classList.add('d-none');
                resultBox.className = 'mt-2 d-none';

                fetch('{{ route('sms.send-test') }}', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                    },
                    body: JSON.stringify({ phone: phone, message: message })
                })
                .then(res => res.json())
                .then(data => {
                    btnTest.disabled = false;
                    spinner.classList.add('d-none');
                    icon.classList.remove('d-none');

                    resultBox.classList.remove('d-none');
                    if (data.success) {
                        resultBox.className = 'mt-2 alert alert-success p-2 small';
                        resultBox.innerHTML = '<strong>✓ ' + data.message + '</strong>';
                        if (window.Botble && typeof Botble.showSuccess === 'function') {
                            Botble.showSuccess(data.message);
                        }
                    } else {
                        resultBox.className = 'mt-2 alert alert-danger p-2 small';
                        resultBox.innerHTML = '<strong>✕ ' + (data.message || 'ব্যর্থ হয়েছে') + '</strong>';
                        if (window.Botble && typeof Botble.showError === 'function') {
                            Botble.showError(data.message || 'ব্যর্থ হয়েছে');
                        }
                    }
                })
                .catch(err => {
                    btnTest.disabled = false;
                    spinner.classList.add('d-none');
                    icon.classList.remove('d-none');
                    resultBox.className = 'mt-2 alert alert-danger p-2 small';
                    resultBox.innerHTML = 'সার্ভার এরর: ' + err.message;
                });
            });
        }
    });
    </script>
@stop
