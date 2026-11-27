@php
    $rawWa = theme_option('whatsapp_phone_number') ?: theme_option('hotline', '8801889151058');
    $waDigits = preg_replace('/[^0-9]/', '', $rawWa) ?: '8801889151058';
    $defaultMessage = theme_option('whatsapp_default_message') ?: 'Assalamu Alaikum Habbito! I need assistance with an order.';
    $fbUrl = 'https://www.facebook.com';
    $igUrl = 'https://www.instagram.com';
    if ($socialLinks = Theme::getSocialLinks()) {
        foreach ($socialLinks as $socialLink) {
            $name = strtolower((string) $socialLink->getName());
            if (str_contains($name, 'facebook') && $socialLink->getUrl()) {
                $fbUrl = $socialLink->getUrl();
            } elseif (str_contains($name, 'instagram') && $socialLink->getUrl()) {
                $igUrl = $socialLink->getUrl();
            }
        }
    }
@endphp

<footer class="gw-footer">
    <div class="gw-footer__band">
        <div class="gw-page-width">
            <div class="gw-footer__top">
                <a href="{{ $fbUrl }}" target="_blank" rel="noopener noreferrer" class="gw-footer__social-link" aria-label="Facebook">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><path d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z"/></svg>
                </a>
                <a href="{{ $igUrl }}" target="_blank" rel="noopener noreferrer" class="gw-footer__social-link" aria-label="Instagram">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>
                </a>
                <a href="https://api.whatsapp.com/send?phone={{ $waDigits }}" target="_blank" rel="noopener noreferrer" class="gw-footer__social-link" aria-label="WhatsApp">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>
                </a>
            </div>
        </div>
        <div class="gw-footer__divider"></div>
        <div class="gw-page-width">
            <div class="gw-footer__bottom">
                <span>&copy; {{ date('Y') }}, <a href="{{ BaseHelper::getHomepageUrl() }}">Habbito</a></span>
                <span class="gw-footer__dot">&middot;</span>
                <span>Nationwide Delivery</span>
                <span class="gw-footer__dot">&middot;</span>
                <a href="{{ url('/orders/tracking') }}">Track Order</a>
                <span class="gw-footer__dot">&middot;</span>
                <a href="{{ url('/contact') }}">Refund policy</a>
            </div>
        </div>
    </div>
</footer>

@if (theme_option('enable_whatsapp_floating_button', 'yes') !== 'no')
    <div class="gw-chat-pill-wrap">
        <a
            href="https://api.whatsapp.com/send?phone={{ $waDigits }}&text={{ urlencode($defaultMessage) }}"
            target="_blank"
            rel="noopener noreferrer"
            class="gw-chat-pill"
            title="Chat with Habbito on WhatsApp"
            aria-label="Chat with Habbito"
        >
            <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path>
            </svg>
            <span class="gw-chat-pill__label">Chat</span>
        </a>
    </div>
@endif
