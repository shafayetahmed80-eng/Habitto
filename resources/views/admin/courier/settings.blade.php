@extends(BaseHelper::getAdminMasterLayoutTemplate())

@section('content')
    <div class="row">
        <div class="col-md-8 mx-auto">
            @if (session('success_msg'))
                <div class="alert alert-success alert-dismissible mb-3" role="alert">
                    <div class="d-flex">
                        <div>
                            <x-core::icon name="ti ti-check" />
                        </div>
                        <div class="ms-2">
                            <h4 class="alert-title">{{ trans('core/base::notices.success') }}</h4>
                            <div class="text-secondary">{{ session('success_msg') }}</div>
                        </div>
                    </div>
                </div>
            @endif

            <x-core::card class="shadow-sm">
                <x-core::card.header class="d-flex justify-content-between align-items-center">
                    <div>
                        <x-core::card.title class="d-flex align-items-center gap-2">
                            <x-core::icon name="ti ti-truck-delivery" class="text-primary" />
                            Steadfast Courier API সেটিংস
                        </x-core::card.title>
                        <p class="text-muted small m-0">Steadfast কুরিয়ার সার্ভিসে ১-ক্লিকে পার্সেল বুকিং এবং ট্র্যাকিং কনফিগারেশন</p>
                    </div>

                    @php
                        $isConfigured = !empty(setting('steadfast_api_key')) && !empty(setting('steadfast_secret_key'));
                    @endphp

                    <div>
                        @if ($isConfigured)
                            <span class="badge bg-success-subtle text-success p-2">
                                <i class="ti ti-check"></i> এপিআই কনফিগারেশন সচল (Live API)
                            </span>
                        @else
                            <span class="badge bg-warning-subtle text-warning p-2">
                                <i class="ti ti-alert-circle"></i> টেস্ট মোড সক্রিয় (Simulation Mode)
                            </span>
                        @endif
                    </div>
                </x-core::card.header>

                <x-core::card.body>
                    <form action="{{ route('couriers.settings') }}" method="POST">
                        @csrf

                        <div class="mb-3">
                            <label class="form-label required">Steadfast API Endpoint (Base URL)</label>
                            <input type="url" name="steadfast_base_url" class="form-control" value="{{ setting('steadfast_base_url', 'https://portal.steadfast.com.bd/api/v1') }}" required>
                            <small class="form-hint text-muted">সাধারণত: <code>https://portal.steadfast.com.bd/api/v1</code></small>
                        </div>

                        <div class="mb-3">
                            <label class="form-label required">Steadfast API Key</label>
                            <input type="text" name="steadfast_api_key" class="form-control font-monospace" value="{{ setting('steadfast_api_key') }}" placeholder="যেমন: abc123xyz...">
                            <small class="form-hint text-muted">Steadfast মার্চেন্ট পোর্টালে লগইন করে Settings ➔ API Credentials থেকে কপি করুন।</small>
                        </div>

                        <div class="mb-3">
                            <label class="form-label required">Steadfast Secret Key</label>
                            <input type="password" name="steadfast_secret_key" class="form-control font-monospace" value="{{ setting('steadfast_secret_key') }}" placeholder="Secret Key দিন...">
                            <small class="form-hint text-muted">আপনার গোপন সিক্রেট কি।</small>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">ডিফল্ট পার্সেল নোট (Default Courier Note)</label>
                            <input type="text" name="steadfast_default_note" class="form-control" value="{{ setting('steadfast_default_note', 'Habitto BD - Luxury Attire (Please handle with care)') }}" placeholder="যেমন: Habitto BD - Handle with care">
                            <small class="form-hint text-muted">প্রতিটি পার্সেল বুক করার সময় কুরিয়ার রাইডারের জন্য ডিফল্ট নির্দেশনা।</small>
                        </div>

                        <div class="alert alert-info bg-info-subtle border-0 mb-4" style="font-size: 13px;">
                            <strong>💡 নির্দেশনা:</strong>
                            <ul class="mb-0 ps-3 mt-1">
                                <li>API Key ও Secret Key ফাঁকা থাকলে সিস্টেম স্বয়ংক্রিয়ভাবে <strong>সিমুলেশন / টেস্ট মোডে</strong> কাজ করবে, যাতে আপনি সরাসরি টেস্ট বুকিং করতে পারেন।</li>
                                <li>লাইভ বুকিং করতে চাইলে Steadfast-এর দেওয়া সঠিক Key দুটি এখানে সংরক্ষণ করুন।</li>
                            </ul>
                        </div>

                        <div class="d-flex justify-content-end gap-2">
                            <a href="{{ url(BaseHelper::getAdminPrefix() . '/ecommerce/orders') }}" class="btn btn-outline-secondary">
                                অর্ডার লিস্টে ফিরে যান
                            </a>
                            <button type="submit" class="btn btn-primary">
                                <x-core::icon name="ti ti-device-floppy" /> সেটিংস সংরক্ষণ করুন
                            </button>
                        </div>
                    </form>
                </x-core::card.body>
            </x-core::card>
        </div>
    </div>
@stop
