@php
    $shipment = $order->shipment;
    $isBooked = $shipment && !empty($shipment->tracking_id);
    $trackingCode = $isBooked ? $shipment->tracking_id : null;
    $trackingUrl = $isBooked ? ($shipment->tracking_link ?: "https://steadfast.com.bd/t/{$trackingCode}") : null;
    $address = $order->address;
@endphp

<div class="card mb-3 border-dark-subtle shadow-sm" id="steadfast-courier-card" style="border-top: 3px solid #0F172A;">
    <div class="card-header d-flex justify-content-between align-items-center py-2 px-3" style="background: #f8fafc;">
        <h4 class="card-title m-0 fw-bold d-flex align-items-center gap-2" style="font-size: 14px; color: #0F172A;">
            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="text-primary"><path d="M12 3l8 4.5v9L12 21l-8-4.5v-9L12 3m0 0v9m0 0l8-4.5M12 12L4 7.5"/></svg>
            Steadfast কুরিয়ার ও শিপমেন্ট
        </h4>
        <div class="d-flex gap-1">
            <a href="{{ route('couriers.settings') }}" class="btn btn-sm btn-icon btn-ghost-secondary" title="কুরিয়ার সেটিংস" target="_blank">
                <i class="ti ti-settings fs-3"></i>
            </a>
        </div>
    </div>

    <div class="card-body p-3">
        @if ($isBooked)
            {{-- ALREADY BOOKED VIEW --}}
            <div class="d-flex align-items-center justify-content-between mb-3 p-2 rounded bg-success-subtle border border-success-subtle">
                <div class="d-flex align-items-center gap-2">
                    <span class="badge bg-success text-white p-1 rounded-circle"><i class="ti ti-check fs-4"></i></span>
                    <span class="fw-bold text-success" style="font-size: 13px;">পার্সেল বুকিং সম্পন্ন</span>
                </div>
                <span class="badge bg-dark text-white font-monospace" style="font-size: 11px;">Steadfast</span>
            </div>

            <div class="table-responsive mb-3">
                <table class="table table-sm table-borderless m-0" style="font-size: 13px;">
                    <tr>
                        <td class="text-muted ps-0" style="width: 40%;">ট্র্যাকিং কোড:</td>
                        <td class="pe-0 text-end fw-bold font-monospace">
                            <a href="{{ $trackingUrl }}" target="_blank" class="text-primary text-decoration-underline" title="অনলাইনে ট্র্যাক করুন">
                                {{ $trackingCode }} <i class="ti ti-external-link"></i>
                            </a>
                        </td>
                    </tr>
                    @if (isset($shipment->metadata['consignment_id']))
                    <tr>
                        <td class="text-muted ps-0">কনসাইনমেন্ট ID:</td>
                        <td class="pe-0 text-end font-monospace text-secondary">{{ $shipment->metadata['consignment_id'] }}</td>
                    </tr>
                    @endif
                    <tr>
                        <td class="text-muted ps-0">ক্যাশ অন ডেলিভারি (COD):</td>
                        <td class="pe-0 text-end fw-bold text-danger">৳ {{ number_format($shipment->cod_amount ?: $order->amount, 2) }}</td>
                    </tr>
                    <tr>
                        <td class="text-muted ps-0">ডেলিভারি স্ট্যাটাস:</td>
                        <td class="pe-0 text-end">
                            <span id="courier-status-badge" class="badge bg-primary-subtle text-primary fw-semibold">
                                {{ ucfirst($shipment->status) }}
                            </span>
                        </td>
                    </tr>
                    @if (isset($shipment->metadata['mode']) && $shipment->metadata['mode'] === 'simulation')
                    <tr>
                        <td colspan="2" class="p-1">
                            <div class="small text-warning bg-warning-subtle p-1 px-2 rounded mt-1" style="font-size: 11px;">
                                ℹ️ টেস্ট মোড: লাইভ এপিআই Key ছাড়া টেস্ট বুকিং করা হয়েছে।
                            </div>
                        </td>
                    </tr>
                    @endif
                </table>
            </div>

            <div class="d-grid gap-2">
                <div class="btn-group w-100">
                    <a href="{{ $trackingUrl }}" target="_blank" class="btn btn-sm btn-outline-primary w-50">
                        <i class="ti ti-map-pin"></i> লাইভ ট্র্যাক
                    </a>
                    <button type="button" class="btn btn-sm btn-outline-secondary w-50" id="btn-refresh-courier-status" data-url="{{ route('couriers.track', $order->id) }}">
                        <i class="ti ti-refresh" id="refresh-icon"></i> রিফ্রেশ
                    </button>
                </div>

                <a href="{{ route('couriers.packing-slip', $order->id) }}" target="_blank" class="btn btn-sm btn-dark w-100" style="background: #0F172A;">
                    <i class="ti ti-printer"></i> চালান / প্যাকিং স্লিপ প্রিন্ট
                </a>
            </div>

        @else
            {{-- NOT BOOKED VIEW --}}
            <div class="mb-3 p-2 rounded bg-amber-subtle border border-amber-subtle text-amber-emphasis d-flex align-items-center gap-2" style="font-size: 12px;">
                <i class="ti ti-alert-triangle fs-3 text-warning"></i>
                <span>অর্ডারটি এখনো Steadfast কুরিয়ারে বুক করা হয়নি।</span>
            </div>

            @if ($address)
                <div class="mb-3 p-2 rounded bg-light border" style="font-size: 12px; line-height: 1.4;">
                    <div class="fw-bold text-dark mb-1">
                        <i class="ti ti-user"></i> {{ $address->name }}
                        <span class="text-muted fw-normal ms-1">({{ $address->phone }})</span>
                    </div>
                    <div class="text-secondary" style="font-size: 11px;">
                        <i class="ti ti-map-pin"></i> {{ $address->full_address ?: $address->address }}
                    </div>
                </div>

                <form id="steadfast-booking-form" onsubmit="return false;">
                    <div class="mb-2">
                        <label class="form-label mb-1 text-muted" style="font-size: 11px; font-weight: 600;">ক্যাশ অন ডেলিভারি (COD কালেকশন ৳)</label>
                        <div class="input-group input-group-sm">
                            <span class="input-group-text">৳</span>
                            <input type="number" step="0.01" class="form-control" id="courier-cod-amount" value="{{ (float) $order->amount }}" required>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label mb-1 text-muted" style="font-size: 11px; font-weight: 600;">কুরিয়ার নোট / রিমার্কস</label>
                        <input type="text" class="form-control form-control-sm" id="courier-note" value="{{ setting('steadfast_default_note', 'Habitto BD - Handle with care') }}" placeholder="যেমন: ডেলিভারির আগে কল করুন">
                    </div>

                    <div class="d-grid gap-2">
                        <button type="button" class="btn btn-sm btn-primary fw-bold" id="btn-book-steadfast" data-url="{{ route('couriers.book', $order->id) }}">
                            <span id="btn-book-spinner" class="spinner-border spinner-border-sm d-none me-1" role="status"></span>
                            <i class="ti ti-send" id="btn-book-icon"></i> Steadfast-এ ১-ক্লিকে বুক করুন
                        </button>

                        <a href="{{ route('couriers.packing-slip', $order->id) }}" target="_blank" class="btn btn-sm btn-outline-dark">
                            <i class="ti ti-printer"></i> চালান / প্যাকিং স্লিপ প্রিন্ট
                        </a>
                    </div>
                </form>
            @else
                <div class="alert alert-danger p-2 mb-0" style="font-size: 12px;">
                    গ্রাহকের ডেলিভারি ঠিকানা পাওয়া যায়নি। বুকিং করতে ঠিকানা যোগ করুন।
                </div>
            @endif
        @endif

        {{-- QUICK SMS NOTIFICATION BOX --}}
        @if ($address && $address->phone)
        <div class="mt-3 pt-3 border-top">
            <div class="d-flex justify-content-between align-items-center mb-2">
                <span class="fw-bold text-dark d-flex align-items-center gap-1" style="font-size: 12px;">
                    <i class="ti ti-message-dots text-primary"></i> গ্রাহককে দ্রুত এসএমএস পাঠান
                </span>
                <a href="{{ route('sms.settings') }}" class="small text-muted text-decoration-none" target="_blank" title="এসএমএস সেটিংস">
                    <i class="ti ti-settings"></i>
                </a>
            </div>

            <div class="btn-group w-100 mb-2">
                <button type="button" class="btn btn-sm btn-outline-success btn-send-order-sms w-50" data-type="confirmation" title="অর্ডার কনফার্মেশন মেসেজ পাঠান">
                    📩 কনফার্মেশন SMS
                </button>
                @if ($isBooked)
                <button type="button" class="btn btn-sm btn-outline-primary btn-send-order-sms w-50" data-type="courier" title="কুরিয়ার ট্র্যাকিং কোড পাঠান">
                    🚚 ট্র্যাকিং SMS
                </button>
                @else
                <button type="button" class="btn btn-sm btn-outline-secondary w-50" id="btn-toggle-custom-sms">
                    💬 কাস্টম SMS
                </button>
                @endif
            </div>

            <div id="custom-sms-box" class="d-none mt-2">
                <textarea id="custom-sms-text" class="form-control form-control-sm mb-1" rows="2" placeholder="গ্রাহককে পাঠানোর জন্য মেসেজ লিখুন..."></textarea>
                <div class="d-flex justify-content-end gap-1">
                    <button type="button" class="btn btn-sm btn-light py-0" id="btn-cancel-custom-sms" style="font-size: 11px;">বাতিল</button>
                    <button type="button" class="btn btn-sm btn-primary py-0" id="btn-submit-custom-sms" style="font-size: 11px;">পাঠান</button>
                </div>
            </div>
        </div>
        @endif
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function () {
    const btnBook = document.getElementById('btn-book-steadfast');
    if (btnBook) {
        btnBook.addEventListener('click', function () {
            const url = this.getAttribute('data-url');
            const cod = document.getElementById('courier-cod-amount').value;
            const note = document.getElementById('courier-note').value;
            const spinner = document.getElementById('btn-book-spinner');
            const icon = document.getElementById('btn-book-icon');

            if (!confirm('আপনি কি নিশ্চিত এই অর্ডারটি Steadfast কুরিয়ারে বুক করতে চান?')) {
                return;
            }

            btnBook.disabled = true;
            spinner.classList.remove('d-none');
            icon.classList.add('d-none');

            fetch(url, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]')?.getAttribute('content') || '{{ csrf_token() }}'
                },
                body: JSON.stringify({ cod_amount: cod, note: note })
            })
            .then(res => res.json())
            .then(data => {
                btnBook.disabled = false;
                spinner.classList.add('d-none');
                icon.classList.remove('d-none');

                if (data.success) {
                    if (window.Botble && typeof Botble.showSuccess === 'function') {
                        Botble.showSuccess(data.message);
                    } else {
                        alert(data.message);
                    }
                    setTimeout(() => window.location.reload(), 1200);
                } else {
                    if (window.Botble && typeof Botble.showError === 'function') {
                        Botble.showError(data.message || 'বুকিং ব্যর্থ হয়েছে।');
                    } else {
                        alert('এরর: ' + (data.message || 'বুকিং ব্যর্থ হয়েছে।'));
                    }
                }
            })
            .catch(err => {
                btnBook.disabled = false;
                spinner.classList.add('d-none');
                icon.classList.remove('d-none');
                alert('সার্ভারের সাথে সংযোগে সমস্যা হয়েছে: ' + err.message);
            });
        });
    }

    const btnRefresh = document.getElementById('btn-refresh-courier-status');
    if (btnRefresh) {
        btnRefresh.addEventListener('click', function () {
            const url = this.getAttribute('data-url');
            const refreshIcon = document.getElementById('refresh-icon');
            refreshIcon.classList.add('ti-spin');

            fetch(url)
            .then(res => res.json())
            .then(data => {
                refreshIcon.classList.remove('ti-spin');
                if (data.success) {
                    const badge = document.getElementById('courier-status-badge');
                    if (badge) {
                        badge.textContent = data.status_label || data.status;
                        badge.className = 'badge bg-success-subtle text-success fw-bold';
                    }
                    if (window.Botble && typeof Botble.showSuccess === 'function') {
                        Botble.showSuccess('স্ট্যাটাস আপডেট হয়েছে: ' + (data.status_label || data.status));
                    }
                } else {
                    if (window.Botble && typeof Botble.showError === 'function') {
                        Botble.showError(data.message || 'স্ট্যাটাস আনা যায়নি।');
                    } else {
                        alert(data.message || 'স্ট্যাটাস আনা যায়নি।');
                    }
                }
            })
            .catch(err => {
                refreshIcon.classList.remove('ti-spin');
                alert('স্ট্যাটাস আনা যায়নি: ' + err.message);
            });
        });
    }

    // Handle Quick SMS Buttons
    document.querySelectorAll('.btn-send-order-sms').forEach(btn => {
        btn.addEventListener('click', function () {
            const type = this.getAttribute('data-type');
            const label = type === 'courier' ? 'কুরিয়ার ট্র্যাকিং এসএমএস' : 'অর্ডার কনফার্মেশন এসএমএস';

            if (!confirm('আপনি কি নিশ্চিত গ্রাহককে ' + label + ' পাঠাতে চান?')) {
                return;
            }

            this.disabled = true;
            fetch('{{ route('sms.send-order', $order->id) }}', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                body: JSON.stringify({ type: type })
            })
            .then(res => res.json())
            .then(data => {
                this.disabled = false;
                if (data.success) {
                    if (window.Botble && typeof Botble.showSuccess === 'function') {
                        Botble.showSuccess(data.message);
                    } else {
                        alert(data.message);
                    }
                } else {
                    if (window.Botble && typeof Botble.showError === 'function') {
                        Botble.showError(data.message || 'ব্যর্থ হয়েছে');
                    } else {
                        alert('এরর: ' + (data.message || 'ব্যর্থ হয়েছে'));
                    }
                }
            })
            .catch(err => {
                this.disabled = false;
                alert('এরর: ' + err.message);
            });
        });
    });

    const toggleCustomBtn = document.getElementById('btn-toggle-custom-sms');
    const customBox = document.getElementById('custom-sms-box');
    const cancelCustomBtn = document.getElementById('btn-cancel-custom-sms');
    const submitCustomBtn = document.getElementById('btn-submit-custom-sms');

    if (toggleCustomBtn && customBox) {
        toggleCustomBtn.addEventListener('click', () => customBox.classList.toggle('d-none'));
    }
    if (cancelCustomBtn && customBox) {
        cancelCustomBtn.addEventListener('click', () => customBox.classList.add('d-none'));
    }
    if (submitCustomBtn && customBox) {
        submitCustomBtn.addEventListener('click', function () {
            const text = document.getElementById('custom-sms-text').value.trim();
            if (!text) {
                alert('মেসেজ লিখুন।');
                return;
            }

            this.disabled = true;
            fetch('{{ route('sms.send-order', $order->id) }}', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                body: JSON.stringify({ message: text })
            })
            .then(res => res.json())
            .then(data => {
                this.disabled = false;
                if (data.success) {
                    customBox.classList.add('d-none');
                    document.getElementById('custom-sms-text').value = '';
                    if (window.Botble && typeof Botble.showSuccess === 'function') {
                        Botble.showSuccess('কাস্টম এসএমএস সফলভাবে পাঠানো হয়েছে!');
                    } else {
                        alert('কাস্টম এসএমএস সফলভাবে পাঠানো হয়েছে!');
                    }
                } else {
                    alert('ব্যর্থ: ' + data.message);
                }
            })
            .catch(err => {
                this.disabled = false;
                alert('এরর: ' + err.message);
            });
        });
    }
});
</script>
