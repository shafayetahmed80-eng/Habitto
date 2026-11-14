<style>
/* Modern Delivery Method Cards on Checkout */
.shipping-method-wrapper .list-group {
    display: grid !important;
    grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)) !important;
    gap: 12px !important;
    border: none !important;
    margin-top: 8px !important;
}
.shipping-method-wrapper .list-group-item {
    border: 1.5px solid #E2E8F0 !important;
    border-radius: 8px !important;
    padding: 14px 16px !important;
    background: #FFFFFF !important;
    cursor: pointer;
    transition: all 0.2s ease !important;
    display: flex !important;
    align-items: center !important;
    position: relative !important;
    margin-bottom: 0 !important;
}
.shipping-method-wrapper .list-group-item:hover {
    border-color: #0F172A !important;
    background: #F8FAFC !important;
}
.shipping-method-wrapper .list-group-item:has(input:checked),
.shipping-method-wrapper .list-group-item.active-shipping {
    border-color: #0F172A !important;
    background-color: #F8FAFC !important;
    box-shadow: 0 4px 12px rgba(15, 23, 42, 0.06) !important;
}
.shipping-method-wrapper .list-group-item label {
    margin-bottom: 0;
    cursor: pointer;
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-weight: 500;
}
.shipping-method-wrapper .magic-radio {
    margin-right: 12px !important;
    accent-color: #0F172A !important;
}

/* Floating labels for Division, District, Upazila and Address */
.form-input-wrapper label[for="address_state"],
.form-input-wrapper label[for="address_city"],
.form-input-wrapper label[for="address_upazila"],
.form-input-wrapper label[for="address_address"] {
    font-weight: 500 !important;
}

#wrapper_address_upazila {
    position: relative;
}
</style>

<script>
(function() {
    // 555 Upazilas mapped by 64 Districts
    const bdDistrictsUpazilas = @json(json_decode(file_get_contents(storage_path('bd_districts_upazilas.json')), true) ?: []);

    function getDistrictKey(text) {
        if (!text) return '';
        // 1. Try to extract English from parentheses: "ঢাকা (Dhaka)" -> "Dhaka"
        const match = text.match(/\(([^)]+)\)/);
        if (match && match[1] && bdDistrictsUpazilas[match[1].trim()]) {
            return match[1].trim();
        }
        // 2. Direct match
        const trimmed = text.trim();
        if (bdDistrictsUpazilas[trimmed]) {
            return trimmed;
        }
        // 3. Case-insensitive or partial match
        const lower = trimmed.toLowerCase();
        for (const k in bdDistrictsUpazilas) {
            if (k.toLowerCase() === lower || lower.includes(k.toLowerCase())) {
                return k;
            }
        }
        return '';
    }

    function populateUpazilasForCity() {
        const citySelect = document.getElementById('address_city');
        const upazilaSelect = document.getElementById('address_upazila');
        const addressInput = document.getElementById('address_address');
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

        // Check if address already contains an upazila prefix, pre-select it
        if (addressInput && addressInput.value) {
            const match = addressInput.value.match(/উপজেলা\/থানা:\s*([^,]+)/);
            if (match && match[1]) {
                const savedUpazila = match[1].trim();
                for (let i = 0; i < upazilaSelect.options.length; i++) {
                    if (upazilaSelect.options[i].value.toLowerCase() === savedUpazila.toLowerCase()) {
                        upazilaSelect.selectedIndex = i;
                        break;
                    }
                }
            }
        }
    }

    function updateShippingByDistrict() {
        const citySelect = document.getElementById('address_city');
        if (!citySelect || !citySelect.value) return;

        const selectedCityText = (citySelect.options[citySelect.selectedIndex]?.text || '').trim().toLowerCase();
        // Check if district is Dhaka
        const isInsideDhaka = selectedCityText.includes('(dhaka)') || selectedCityText.startsWith('dhaka') || selectedCityText.startsWith('ঢাকা');

        const shippingRadios = document.querySelectorAll('input[name="shipping_method"]');
        if (!shippingRadios.length) return;

        let freeDeliveryRadio = null;
        let insideDhakaRadio = null;
        let outsideDhakaRadio = null;

        shippingRadios.forEach(function(radio) {
            const labelText = radio.closest('li')?.textContent || '';
            if (labelText.toLowerCase().includes('free') || labelText.includes('ফ্রি')) {
                freeDeliveryRadio = radio;
            } else if (labelText.toLowerCase().includes('inside dhaka') || labelText.includes('ঢাকার ভেতরে') || labelText.includes('70')) {
                insideDhakaRadio = radio;
            } else if (labelText.toLowerCase().includes('outside dhaka') || labelText.includes('ঢাকার বাইরে') || labelText.includes('130')) {
                outsideDhakaRadio = radio;
            }
        });

        // 1. Free Delivery priority if eligible
        if (freeDeliveryRadio && !freeDeliveryRadio.disabled) {
            if (!freeDeliveryRadio.checked) {
                freeDeliveryRadio.checked = true;
                if (window.jQuery) window.jQuery(freeDeliveryRadio).trigger('change');
            }
            return;
        }

        // 2. Intelligent filtering: Inside Dhaka vs Outside Dhaka
        if (isInsideDhaka) {
            if (insideDhakaRadio) {
                const item = insideDhakaRadio.closest('.list-group-item');
                if (item) item.style.setProperty('display', 'flex', 'important');
                insideDhakaRadio.disabled = false;
                if (!insideDhakaRadio.checked) {
                    insideDhakaRadio.checked = true;
                    if (window.jQuery) window.jQuery(insideDhakaRadio).trigger('change');
                }
            }
            if (outsideDhakaRadio) {
                const item = outsideDhakaRadio.closest('.list-group-item');
                if (item) item.style.setProperty('display', 'none', 'important');
            }
        } else {
            // Outside Dhaka (e.g. Tangail, Gazipur, Chittagong, etc.)
            if (outsideDhakaRadio) {
                const item = outsideDhakaRadio.closest('.list-group-item');
                if (item) item.style.setProperty('display', 'flex', 'important');
                outsideDhakaRadio.disabled = false;
                if (!outsideDhakaRadio.checked) {
                    outsideDhakaRadio.checked = true;
                    if (window.jQuery) window.jQuery(outsideDhakaRadio).trigger('change');
                }
            }
            if (insideDhakaRadio) {
                const item = insideDhakaRadio.closest('.list-group-item');
                if (item) item.style.setProperty('display', 'none', 'important');
            }
        }
    }

    function initLocationEnhancer() {
        const stateSelect = document.getElementById('address_state');   // Division (8 Divisions)
        const citySelect = document.getElementById('address_city');     // District (64 Districts)
        const addressInput = document.getElementById('address_address');
        let upazilaSelect = document.getElementById('address_upazila');

        // 1. Ensure Upazila select exists in DOM (inject if not added server-side)
        if (!upazilaSelect && citySelect) {
            const cityFormGroup = citySelect.closest('.form-group') || citySelect.closest('.col-sm-6') || citySelect.parentElement;
            const parentRow = cityFormGroup ? (cityFormGroup.closest('.row') || cityFormGroup.parentElement) : null;
            
            if (parentRow) {
                const upazilaWrapper = document.createElement('div');
                upazilaWrapper.className = 'form-group mb-3';
                upazilaWrapper.id = 'wrapper_address_upazila';
                upazilaWrapper.innerHTML = `
                    <div class="select--arrow form-input-wrapper">
                        <select class="form-control" id="address_upazila" name="address[upazila_select]" required>
                            <option value="">উপজেলা / থানা নির্বাচন করুন (Select Upazila / Thana)...</option>
                        </select>
                        <svg class="icon icon-tabler icon-tabler-chevron-down" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); pointer-events: none;">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                            <polyline points="6 9 12 15 18 9"></polyline>
                        </svg>
                        <label for="address_upazila">উপজেলা / থানা (Upazila / Thana)</label>
                    </div>
                `;
                parentRow.insertAdjacentElement('afterend', upazilaWrapper);
                upazilaSelect = document.getElementById('address_upazila');
            }
        }

        // 2. Set Labels and Prompts
        if (stateSelect) {
            const stateLabel = document.querySelector('label[for="address_state"]');
            if (stateLabel) stateLabel.textContent = 'বিভাগ (Division)';
            
            const firstStateOpt = stateSelect.querySelector('option[value=""]');
            if (firstStateOpt) firstStateOpt.textContent = 'বিভাগ নির্বাচন করুন (Select Division)...';
        }

        if (citySelect) {
            const cityLabel = document.querySelector('label[for="address_city"]');
            if (cityLabel) cityLabel.textContent = 'জেলা (District)';
            
            const firstCityOpt = citySelect.querySelector('option[value=""]');
            if (firstCityOpt) firstCityOpt.textContent = 'জেলা নির্বাচন করুন (Select District)...';
        }

        if (upazilaSelect) {
            const upazilaLabel = document.querySelector('label[for="address_upazila"]');
            if (upazilaLabel) upazilaLabel.textContent = 'উপজেলা / থানা (Upazila / Thana)';
        }

        if (addressInput) {
            addressInput.setAttribute('placeholder', 'বাসা নং, রোড নং, এলাকা/গ্রাম (যেমন: বাড়ি # ১২, রোড # ৪)');
            const addrLabel = document.querySelector('label[for="address_address"]');
            if (addrLabel) addrLabel.textContent = 'সম্পূর্ণ বিস্তারিত ঠিকানা (Detailed Address)';
        }

        // 3. Highlight active shipping card visually
        function highlightActiveShippingCard() {
            document.querySelectorAll('.shipping-method-wrapper .list-group-item').forEach(function(item) {
                const radio = item.querySelector('input[type="radio"]');
                if (radio && radio.checked) {
                    item.classList.add('active-shipping');
                } else {
                    item.classList.remove('active-shipping');
                }
            });
        }
        highlightActiveShippingCard();

        // 4. Before form submission, format address with selected Upazila
        const checkoutForm = document.querySelector('form.checkout-form') || document.querySelector('.customer-address-payment-form')?.closest('form');
        if (checkoutForm && !checkoutForm.dataset.upazilaSubmitAttached) {
            checkoutForm.dataset.upazilaSubmitAttached = 'true';
            checkoutForm.addEventListener('submit', function() {
                const currentUpazila = document.getElementById('address_upazila');
                const currentAddr = document.getElementById('address_address');
                if (currentUpazila && currentUpazila.value && currentAddr) {
                    const upzVal = currentUpazila.value.trim();
                    let rawAddr = currentAddr.value.replace(/উপজেলা\/থানা:\s*[^,]+,\s*/, '').trim();
                    if (upzVal && rawAddr) {
                        currentAddr.value = 'উপজেলা/থানা: ' + upzVal + ', ' + rawAddr;
                    }
                }
            });
        }

        // Initial check if district is already pre-selected
        if (citySelect && citySelect.value) {
            populateUpazilasForCity();
            updateShippingByDistrict();
        }
    }

    // jQuery Delegated Event Handlers
    if (window.jQuery) {
        window.jQuery(document).off('change.upazila', '#address_city').on('change.upazila', '#address_city', function() {
            populateUpazilasForCity();
            updateShippingByDistrict();
        });

        window.jQuery(document).off('change.division', '#address_state').on('change.division', '#address_state', function() {
            const upazilaSelect = document.getElementById('address_upazila');
            if (upazilaSelect) {
                upazilaSelect.innerHTML = '<option value="">প্রথমে জেলা নির্বাচন করুন (Select District first)...</option>';
            }
        });

        window.jQuery(document).off('change.shipping_highlight', 'input[name="shipping_method"]').on('change.shipping_highlight', 'input[name="shipping_method"]', function() {
            document.querySelectorAll('.shipping-method-wrapper .list-group-item').forEach(function(item) {
                const radio = item.querySelector('input[type="radio"]');
                if (radio && radio.checked) {
                    item.classList.add('active-shipping');
                } else {
                    item.classList.remove('active-shipping');
                }
            });
        });

        window.jQuery(document).ajaxComplete(function(event, xhr, settings) {
            if (settings.url && (settings.url.includes('cities-by-state') || settings.url.includes('states-by-country') || settings.url.includes('save-shipping-information'))) {
                setTimeout(function() {
                    initLocationEnhancer();
                    populateUpazilasForCity();
                    updateShippingByDistrict();
                }, 100);
            }
        });
    }

    // Run on load
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', initLocationEnhancer);
    } else {
        initLocationEnhancer();
    }
})();
</script>
