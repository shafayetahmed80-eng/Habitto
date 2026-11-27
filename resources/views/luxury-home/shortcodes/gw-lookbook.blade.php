@php
    $bannerImg = $shortcode->banner_image
        ? RvMedia::getImageUrl($shortcode->banner_image)
        : url('/storage/editorial/slow-hours-banner.jpg');
    $bannerHeading = $shortcode->banner_heading ?: 'SLOW HOURS';
    $bannerCaption = $shortcode->banner_caption ?: "Slow Hours — Collection '26";
    $bannerUrl = url($shortcode->banner_url ?: '/products');

    $qty = min(8, max(1, (int) ($shortcode->quantity ?: 4)));
    $looks = [];
    for ($i = 1; $i <= $qty; $i++) {
        $label = $shortcode->{"title_$i"} ?? null;
        $img = $shortcode->{"image_$i"} ?? null;
        $link = $shortcode->{"url_$i"} ?? '/products';
        if ($label) {
            $looks[] = [
                'title' => $label,
                'image' => $img ? RvMedia::getImageUrl($img) : url('/storage/editorial/look-1-acid-black.jpg'),
                'url' => url($link),
            ];
        }
    }
@endphp

<section class="gw-inverse-band gw-lookbook-section">
    <div class="gw-page-width">
        <a href="{{ $bannerUrl }}" class="gw-campaign-card">
            <div class="gw-campaign-card__media">
                <img src="{{ $bannerImg }}" alt="{{ $bannerCaption }}" loading="lazy">
                @if ($bannerHeading)
                    <div class="gw-campaign-card__overlay">
                        <svg viewBox="0 0 600 180" class="gw-arched-svg" aria-hidden="true">
                            <defs>
                                <path id="gw-slow-hours-arc" d="M 60,150 Q 300,55 540,150" fill="transparent" />
                            </defs>
                            <text class="gw-arched-text">
                                <textPath href="#gw-slow-hours-arc" startOffset="50%" text-anchor="middle">
                                    {{ $bannerHeading }}
                                </textPath>
                            </text>
                        </svg>
                    </div>
                @endif
            </div>
            <div class="gw-campaign-card__caption">
                <span>{{ $bannerCaption }}</span>
                <span class="gw-arrow" aria-hidden="true">&rarr;</span>
            </div>
        </a>

        @if (count($looks))
            <div class="gw-look-grid">
                @foreach ($looks as $look)
                    <a href="{{ $look['url'] }}" class="gw-look-card">
                        <div class="gw-look-card__media">
                            <img src="{{ $look['image'] }}" alt="{{ $look['title'] }}" loading="lazy">
                        </div>
                        <div class="gw-look-card__caption">
                            <span>{{ $look['title'] }}</span>
                            <span class="gw-arrow" aria-hidden="true">&rarr;</span>
                        </div>
                    </a>
                @endforeach
            </div>
        @endif
    </div>
</section>
