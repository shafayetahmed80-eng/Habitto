@php
    $heroImg = $shortcode->image
        ? RvMedia::getImageUrl($shortcode->image)
        : url('/storage/editorial/hero-modern-minimalist.jpg');
    $scriptText = $shortcode->script_text ?: 'for the';
    $heading = $shortcode->heading ?: 'Modern Minimalist';
    $subheading = $shortcode->subheading ?: 'EVERY DAY';
    $url = url($shortcode->url ?: '/products');
@endphp

<section class="gw-hero">
    <a href="{{ $url }}" class="gw-hero__frame" aria-label="{{ $heading }}">
        <img src="{{ $heroImg }}" alt="{{ $heading }}" class="gw-hero__img" fetchpriority="high">
        <div class="gw-hero__gradient"></div>
        <div class="gw-hero__copy">
            @if ($scriptText)
                <span class="gw-hero__script">{{ $scriptText }}</span>
            @endif
            @if ($heading)
                <h2 class="gw-hero__title">{{ $heading }}</h2>
            @endif
            @if ($subheading)
                <span class="gw-hero__eyebrow">{{ $subheading }}</span>
            @endif
        </div>
    </a>
</section>
