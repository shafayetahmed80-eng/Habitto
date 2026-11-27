@php
    $atelierImg = $shortcode->image
        ? RvMedia::getImageUrl($shortcode->image)
        : url('/storage/editorial/atelier-craft.jpg');
    $eyebrow = $shortcode->eyebrow ?: 'HABBITO ATELIER';
    $title = $shortcode->title ?: 'Designed by Habbito, Crafted in 240+ GSM Cotton.';
    $desc = $shortcode->description ?: 'Cut from densely knitted combed cotton and finished in small batches for structured drape and everyday permanence.';
    $btnLabel = $shortcode->button_label ?: 'Order via WhatsApp';
    $rawPhone = theme_option('whatsapp_phone_number') ?: theme_option('hotline', '8801889151058');
    $waPhone = preg_replace('/[^0-9]/', '', $rawPhone) ?: '8801889151058';
    $defaultWaUrl = 'https://api.whatsapp.com/send?phone=' . $waPhone . '&text=' . urlencode('Assalamu Alaikum Habbito! I would like to inquire about your 240+ GSM collection.');
    $btnUrl = $shortcode->button_url ?: $defaultWaUrl;
    $isExternal = str_starts_with($btnUrl, 'http');
@endphp

<section class="gw-section gw-atelier-section">
    <div class="gw-page-width">
        <div class="gw-atelier-card">
            <div class="gw-atelier-card__media">
                <img src="{{ $atelierImg }}" alt="{{ $title }}" loading="lazy">
            </div>
            <div class="gw-atelier-card__panel">
                @if ($eyebrow)
                    <span class="gw-atelier-card__eyebrow">{{ $eyebrow }}</span>
                @endif
                <h2 class="gw-atelier-card__title">{{ $title }}</h2>
                @if ($desc)
                    <p class="gw-atelier-card__desc">{{ $desc }}</p>
                @endif
                @if ($btnLabel)
                    <div class="gw-atelier-card__actions">
                        <a href="{{ $btnUrl }}" @if($isExternal) target="_blank" rel="noopener noreferrer" @endif class="gw-btn-cream">
                            {{ $btnLabel }}
                        </a>
                    </div>
                @endif
            </div>
        </div>
    </div>
</section>
