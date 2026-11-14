@php
    $enable = theme_option('enable_whatsapp_floating_button', 'yes');
    if ($enable === 'no') {
        return;
    }

    $rawPhone = theme_option('whatsapp_phone_number');
    if (! $rawPhone) {
        $rawPhone = theme_option('hotline', '8801700000000');
    }
    $whatsappPhone = preg_replace('/[^0-9]/', '', $rawPhone);
    if (! $whatsappPhone || strlen($whatsappPhone) < 6) {
        $whatsappPhone = '8801700000000';
    }

    $position = theme_option('whatsapp_floating_position', 'bottom_right');
    $isRight = ($position !== 'bottom_left');
    $motionEffect = theme_option('whatsapp_motion_effect') ?: 'radar_pulse';
    $defaultMessage = theme_option('whatsapp_default_message') ?: 'Assalamu Alaikum Habitto BD! I need assistance with an order.';
@endphp

<div id="habitto-floating-whatsapp" class="habitto-wa-pos-{{ $isRight ? 'right' : 'left' }} habitto-wa-motion-{{ $motionEffect }}">
    <a
        href="https://api.whatsapp.com/send?phone={{ $whatsappPhone }}&text={{ urlencode($defaultMessage) }}"
        target="_blank"
        rel="noopener noreferrer"
        class="habitto-wa-btn"
        title="Chat with Habitto BD on WhatsApp"
        aria-label="Chat on WhatsApp"
    >
        @if ($motionEffect === 'radar_pulse')
            <!-- Motion 1: Radar Ripple Pulses -->
            <span class="habitto-wa-pulse"></span>
            <span class="habitto-wa-pulse habitto-wa-delay"></span>
        @endif

        @if ($motionEffect === 'online_badge')
            <!-- Motion 3: Live Agent Online Pulsing Badge -->
            <span class="habitto-wa-online-badge" title="Live Support Online">
                <span class="habitto-wa-badge-ping"></span>
                <span class="habitto-wa-badge-dot"></span>
            </span>
        @endif

        <!-- WhatsApp Icon SVG -->
        <span class="habitto-wa-icon">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" viewBox="0 0 16 16">
                <path d="M13.601 2.326A7.854 7.854 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.933 7.933 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.898 7.898 0 0 0 13.6 2.326zM7.994 14.521a6.573 6.573 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.557 6.557 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592zm3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.099-.114.133-.198.198-.33.065-.134.034-.248-.017-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.729.729 0 0 0-.529.247c-.182.198-.691.677-.691 1.654 0 .977.71 1.916.81 2.049.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.379-.232z"/>
            </svg>
        </span>
    </a>
</div>

<style>
    /* Base Container Positioning */
    #habitto-floating-whatsapp {
        position: fixed;
        bottom: 25px;
        z-index: 9999;
    }
    #habitto-floating-whatsapp.habitto-wa-pos-right {
        right: 25px;
    }
    #habitto-floating-whatsapp.habitto-wa-pos-left {
        left: 25px;
    }

    /* Common Button Styling */
    .habitto-wa-btn {
        position: relative;
        display: flex;
        align-items: center;
        justify-content: center;
        width: 58px;
        height: 58px;
        border-radius: 50%;
        background: linear-gradient(135deg, #25D366 0%, #128C7E 100%);
        color: #ffffff !important;
        text-decoration: none !important;
        box-shadow: 0 6px 20px rgba(37, 211, 102, 0.45);
        cursor: pointer;
        transition: transform 0.35s cubic-bezier(0.34, 1.56, 0.64, 1), box-shadow 0.35s ease;
    }

    .habitto-wa-btn:hover {
        transform: scale(1.12) translateY(-3px);
        box-shadow: 0 10px 25px rgba(37, 211, 102, 0.65);
        color: #ffffff !important;
    }

    .habitto-wa-icon {
        display: inline-flex;
        align-items: center;
        justify-content: center;
    }

    /* ===================================================
       MOTION 1: Radar Ripple & Periodic Ring (radar_pulse)
       =================================================== */
    .habitto-wa-motion-radar_pulse .habitto-wa-pulse {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border-radius: 50%;
        background: rgba(37, 211, 102, 0.6);
        z-index: -1;
        pointer-events: none;
        animation: habitto-wa-ripple 2.4s infinite cubic-bezier(0.1, 0, 0.3, 1);
    }
    .habitto-wa-motion-radar_pulse .habitto-wa-pulse.habitto-wa-delay {
        animation-delay: 1.2s;
    }
    @keyframes habitto-wa-ripple {
        0% { transform: scale(0.95); opacity: 0.8; }
        50% { opacity: 0.35; }
        100% { transform: scale(1.75); opacity: 0; }
    }
    .habitto-wa-motion-radar_pulse .habitto-wa-icon {
        animation: habitto-wa-ring 5.5s infinite ease-in-out;
    }
    @keyframes habitto-wa-ring {
        0%, 82%, 100% { transform: rotate(0deg) scale(1); }
        84% { transform: rotate(14deg) scale(1.1); }
        86% { transform: rotate(-12deg) scale(1.1); }
        88% { transform: rotate(10deg); }
        90% { transform: rotate(-8deg); }
        92% { transform: rotate(0deg) scale(1); }
    }

    /* ===================================================
       MOTION 2: Gentle Float & Breathe (gentle_float)
       =================================================== */
    .habitto-wa-motion-gentle_float .habitto-wa-btn {
        animation: habitto-wa-float 3.5s infinite ease-in-out;
    }
    @keyframes habitto-wa-float {
        0%, 100% {
            transform: translateY(0);
            box-shadow: 0 6px 18px rgba(37, 211, 102, 0.45);
        }
        50% {
            transform: translateY(-8px);
            box-shadow: 0 14px 28px rgba(37, 211, 102, 0.6);
        }
    }
    .habitto-wa-motion-gentle_float .habitto-wa-btn:hover {
        animation-play-state: paused;
        transform: scale(1.12) translateY(-8px);
    }

    /* ===================================================
       MOTION 3: Live Online Badge (online_badge)
       =================================================== */
    .habitto-wa-online-badge {
        position: absolute;
        top: -2px;
        right: -2px;
        width: 16px;
        height: 16px;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .habitto-wa-badge-ping {
        position: absolute;
        width: 100%;
        height: 100%;
        border-radius: 50%;
        background-color: #25D366;
        opacity: 0.75;
        animation: habitto-wa-badge-ping 1.6s cubic-bezier(0, 0, 0.2, 1) infinite;
    }
    .habitto-wa-badge-dot {
        position: relative;
        width: 12px;
        height: 12px;
        border-radius: 50%;
        background-color: #10B981;
        border: 2px solid #ffffff;
        box-shadow: 0 0 6px rgba(16, 185, 129, 0.8);
    }
    @keyframes habitto-wa-badge-ping {
        75%, 100% {
            transform: scale(2);
            opacity: 0;
        }
    }

    /* ===================================================
       MOTION 4: Hover-Only Minimal (hover_minimal)
       =================================================== */
    .habitto-wa-motion-hover_minimal .habitto-wa-btn {
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
    }
    .habitto-wa-motion-hover_minimal .habitto-wa-btn:hover {
        transform: scale(1.14) rotate(12deg);
        box-shadow: 0 8px 24px rgba(37, 211, 102, 0.7);
    }

    /* Ninico Scroll-to-Top adjustment if on the right */
    .habitto-wa-pos-right ~ .scroll-top.open,
    body:has(.habitto-wa-pos-right) .scroll-top.open {
        bottom: 95px !important;
    }

    /* ===================================================
       Mobile Responsiveness & Bottom Nav-Bar Clearance
       =================================================== */
    @media (max-width: 768px) {
        #habitto-floating-whatsapp.habitto-wa-pos-right {
            bottom: 75px !important;
            right: 18px !important;
        }
        #habitto-floating-whatsapp.habitto-wa-pos-left {
            bottom: 75px !important;
            left: 18px !important;
        }
        .habitto-wa-btn {
            width: 50px !important;
            height: 50px !important;
        }
        .habitto-wa-icon svg {
            width: 26px !important;
            height: 26px !important;
        }
        .scroll-top.open {
            bottom: 135px !important;
            inset-inline-end: 20px !important;
        }
        /* Prevent bottom mobile navigation bar from covering footer content */
        .footer-copyright {
            padding-bottom: 70px !important;
        }
    }
</style>
