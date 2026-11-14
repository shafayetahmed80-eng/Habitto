@php
    $errors ??= new \Illuminate\Support\ViewErrorBag();
    $address = $address ?? ($form ? $form->getModel() : new \Botble\Ecommerce\Models\Address());
    $customer = auth('customer')->user();
    
    $oldState = old('state', $address->state);
    $oldCity = old('city', $address->city);
    $oldAddress = old('address', $address->address);

    // Extract existing upazila from address if present
    $existingUpazila = '';
    $cleanAddress = $oldAddress;
    if ($cleanAddress && preg_match('/উপজেলা\/থানা:\s*([^,]+),\s*(.*)/u', $cleanAddress, $matches)) {
        $existingUpazila = trim($matches[1]);
        $cleanAddress = trim($matches[2]);
    }
@endphp

<div class="customer-address-form-wrapper">
    <input type="hidden" name="country" value="{{ EcommerceHelper::getFirstCountryId() }}">
    <input type="hidden" name="email" value="{{ old('email', $address->email ?? ($customer ? $customer->email : '')) }}">

    <div class="row">
        <!-- Full Name -->
        <div class="col-md-6 col-12 mb-3">
            <div class="form-group">
                <label for="address-name" class="form-label font-medium mb-1">
                    সম্পূর্ণ নাম (Full Name) <span class="text-danger">*</span>
                </label>
                <input
                    type="text"
                    name="name"
                    id="address-name"
                    class="form-control"
                    value="{{ old('name', $address->name ?? ($customer ? $customer->name : '')) }}"
                    placeholder="আপনার সম্পূর্ণ নাম লিখুন"
                    required
                >
                {!! Form::error('name', $errors) !!}
            </div>
        </div>

        <!-- Phone -->
        <div class="col-md-6 col-12 mb-3">
            <div class="form-group">
                <label for="address-phone" class="form-label font-medium mb-1">
                    ফোন নম্বর (Phone) <span class="text-danger">*</span>
                </label>
                <input
                    type="tel"
                    name="phone"
                    id="address-phone"
                    class="form-control"
                    value="{{ old('phone', $address->phone ?? ($customer ? $customer->phone : '')) }}"
                    placeholder="০১xxxxxxxxx"
                    required
                >
                {!! Form::error('phone', $errors) !!}
            </div>
        </div>

        <!-- Division (বিভাগ) -->
        <div class="col-md-6 col-12 mb-3">
            <div class="form-group">
                <label for="address-state" class="form-label font-medium mb-1">
                    বিভাগ (Division) <span class="text-danger">*</span>
                </label>
                <select
                    name="state"
                    id="address-state"
                    class="form-control select--arrow"
                    data-type="state"
                    data-url="{{ route('ajax.states-by-country') }}"
                    required
                >
                    <option value="">বিভাগ নির্বাচন করুন (Select Division)...</option>
                    @foreach (EcommerceHelper::getAvailableStatesByCountry(EcommerceHelper::getFirstCountryId()) as $stateId => $stateName)
                        <option value="{{ $stateId }}" @selected($oldState == $stateId || $oldState == $stateName)>
                            {{ $stateName }}
                        </option>
                    @endforeach
                </select>
                {!! Form::error('state', $errors) !!}
            </div>
        </div>

        <!-- District (জেলা) -->
        <div class="col-md-6 col-12 mb-3">
            <div class="form-group">
                <label for="address-city" class="form-label font-medium mb-1">
                    জেলা (District) <span class="text-danger">*</span>
                </label>
                <select
                    name="city"
                    id="address-city"
                    class="form-control select--arrow"
                    data-type="city"
                    data-url="{{ route('ajax.cities-by-state') }}"
                    required
                >
                    <option value="">জেলা নির্বাচন করুন (Select District)...</option>
                    @if ($oldState)
                        @foreach (EcommerceHelper::getAvailableCitiesByState($oldState) as $cityId => $cityName)
                            <option value="{{ $cityId }}" @selected($oldCity == $cityId || $oldCity == $cityName)>
                                {{ $cityName }}
                            </option>
                        @endforeach
                    @endif
                </select>
                {!! Form::error('city', $errors) !!}
            </div>
        </div>

        <!-- Upazila / Thana (উপজেলা / থানা) -->
        <div class="col-12 mb-3">
            <div class="form-group">
                <label for="address-upazila" class="form-label font-medium mb-1">
                    উপজেলা / থানা (Upazila / Thana) <span class="text-danger">*</span>
                </label>
                <select id="address-upazila" class="form-control select--arrow" required>
                    <option value="">উপজেলা / থানা নির্বাচন করুন (Select Upazila / Thana)...</option>
                </select>
            </div>
        </div>

        <!-- Detailed Address (বিস্তারিত ঠিকানা) -->
        <div class="col-12 mb-3">
            <div class="form-group">
                <label for="address-address" class="form-label font-medium mb-1">
                    সম্পূর্ণ বিস্তারিত ঠিকানা (Detailed Address) <span class="text-danger">*</span>
                </label>
                <input
                    type="text"
                    name="address"
                    id="address-address"
                    class="form-control"
                    value="{{ $cleanAddress }}"
                    placeholder="বাসা নং, রোড নং, এলাকা/গ্রাম (যেমন: বাড়ি # ১২, রোড # ৪)"
                    required
                >
                {!! Form::error('address', $errors) !!}
            </div>
        </div>

        <!-- Default Address Checkbox -->
        <div class="col-12 mb-4">
            <div class="form-check">
                <input
                    type="checkbox"
                    name="is_default"
                    value="1"
                    id="is_default"
                    class="form-check-input"
                    @checked($address->is_default)
                >
                <label class="form-check-label font-medium" for="is_default">
                    ডিফল্ট ঠিকানা হিসেবে ব্যবহার করুন (Use this address as default)
                </label>
            </div>
        </div>

        <!-- Submit Button -->
        <div class="col-12">
            <button
                type="submit"
                class="btn text-white px-4 py-2 font-medium"
                style="background-color: #0F172A; border-color: #0F172A; border-radius: 6px;"
            >
                {{ ($address && $address->getKey()) ? 'ঠিকানা আপডেট করুন (Update Address)' : 'নতুন ঠিকানা সেভ করুন (Save Address)' }}
            </button>
            <a href="{{ route('customer.address') }}" class="btn btn-outline-secondary ms-2 px-3 py-2">
                বাতিল করুন (Cancel)
            </a>
        </div>
    </div>
</div>

<script>
(function() {
    const bdDistrictsUpazilas = @json(json_decode(file_get_contents(storage_path('bd_districts_upazilas.json')), true) ?: []);
    const existingUpazila = @json($existingUpazila);

    function getDistrictKey(text) {
        if (!text) return '';
        const match = text.match(/\(([^)]+)\)/);
        if (match && match[1] && bdDistrictsUpazilas[match[1].trim()]) {
            return match[1].trim();
        }
        const trimmed = text.trim();
        if (bdDistrictsUpazilas[trimmed]) {
            return trimmed;
        }
        const lower = trimmed.toLowerCase();
        for (const k in bdDistrictsUpazilas) {
            if (k.toLowerCase() === lower || lower.includes(k.toLowerCase())) {
                return k;
            }
        }
        return '';
    }

    function populateUpazilas() {
        const citySelect = document.getElementById('address-city');
        const upazilaSelect = document.getElementById('address-upazila');
        if (!citySelect || !upazilaSelect) return;

        const selectedOption = citySelect.options[citySelect.selectedIndex];
        if (!selectedOption || !selectedOption.value) {
            upazilaSelect.innerHTML = '<option value="">প্রথমে জেলা নির্বাচন করুন (Select District first)...</option>';
            return;
        }

        const districtKey = getDistrictKey(selectedOption.text);
        const upazilas = bdDistrictsUpazilas[districtKey] || [];

        let html = '<option value="">উপজেলা / থানা নির্বাচন করুন (Select Upazila / Thana)...</option>';
        if (upazilas.length > 0) {
            upazilas.forEach(function(upz) {
                html += '<option value="' + upz + '">' + upz + '</option>';
            });
        } else {
            html += '<option value="সদর (Sadar)">সদর (Sadar)</option>';
        }

        upazilaSelect.innerHTML = html;

        // Pre-select existing upazila if editing
        if (existingUpazila) {
            for (let i = 0; i < upazilaSelect.options.length; i++) {
                if (upazilaSelect.options[i].value.toLowerCase() === existingUpazila.toLowerCase()) {
                    upazilaSelect.selectedIndex = i;
                    break;
                }
            }
        }
    }

    function initCustomerAddressEnhancer() {
        const stateSelect = document.getElementById('address-state');
        const citySelect = document.getElementById('address-city');
        const addressInput = document.getElementById('address-address');
        const upazilaSelect = document.getElementById('address-upazila');
        const form = addressInput ? addressInput.closest('form') : null;

        if (form && !form.dataset.customerUpazilaAttached) {
            form.dataset.customerUpazilaAttached = 'true';
            form.addEventListener('submit', function() {
                if (upazilaSelect && upazilaSelect.value && addressInput) {
                    const upzVal = upazilaSelect.value.trim();
                    let rawAddr = addressInput.value.replace(/উপজেলা\/থানা:\s*[^,]+,\s*/, '').trim();
                    if (upzVal && rawAddr) {
                        addressInput.value = 'উপজেলা/থানা: ' + upzVal + ', ' + rawAddr;
                    }
                }
            });
        }

        if (citySelect && citySelect.value) {
            populateUpazilas();
        }
    }

    if (window.jQuery) {
        window.jQuery(document).off('change.customer_upazila', '#address-city').on('change.customer_upazila', '#address-city', function() {
            populateUpazilas();
        });

        window.jQuery(document).off('change.customer_division', '#address-state').on('change.customer_division', '#address-state', function() {
            const upazilaSelect = document.getElementById('address-upazila');
            if (upazilaSelect) {
                upazilaSelect.innerHTML = '<option value="">প্রথমে জেলা নির্বাচন করুন (Select District first)...</option>';
            }
        });

        window.jQuery(document).ajaxComplete(function(event, xhr, settings) {
            if (settings.url && settings.url.includes('cities-by-state')) {
                setTimeout(populateUpazilas, 100);
            }
        });
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', initCustomerAddressEnhancer);
    } else {
        initCustomerAddressEnhancer();
    }
})();
</script>
