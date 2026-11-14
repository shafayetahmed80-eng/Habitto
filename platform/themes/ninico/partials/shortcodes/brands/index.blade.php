@php($backgroundImage = RvMedia::getImageUrl($shortcode->background_image))

<section
    class="brand-area tpbrand pt-65 pb-60"
    @style([
        "background: url($backgroundImage) center center / cover no-repeat" => $backgroundImage,
        "background-color: $shortcode->background_color" => $shortcode->background_color
    ])
>
    <div class="container">
        @if($title = $shortcode->title)
            <div class="row">
                <div class="col-md-12 col-12">
                    <div class="tpsection text-center mb-45">
                        <h2 class="tpsection__title left-line right-line" @style(["color: $shortcode->title_color;" => $shortcode->title_color])>
                            {!! BaseHelper::clean($title) !!}
                        </h2>
                    </div>
                </div>
            </div>
        @endif
        <div class="swiper-container brand-active">
            <div class="swiper-wrapper brand-items align-items-center">
                @foreach(range(1, $shortcode->quantity) as $i)
                    <a href="{{ $shortcode->{"link_$i"} }}" class="swiper-slide text-center text-decoration-none d-flex flex-column align-items-center justify-content-center p-2">
                        <img src="{{ RvMedia::getImageUrl($shortcode->{"image_$i"}) }}" alt="{{ $shortcode->{"name_$i"} }}" style="max-height: 48px; width: auto; object-fit: contain; margin-bottom: 8px;">
                        @if ($name = $shortcode->{"name_$i"})
                            <span class="d-block fw-semibold text-dark text-nowrap" style="font-size: 13px; letter-spacing: 0.3px;">{{ $name }}</span>
                        @endif
                    </a>
                @endforeach
            </div>
        </div>
    </div>
</section>
