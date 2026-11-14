<div class="col-xl-6 col-lg-8 col-md-8 col-sm-6">
    <div class="footer-cta__source">
        <div class="footer-cta__source-content">
            @if($title = Arr::get($config, 'title'))
                <h4 class="footer-cta__source-title">{!! BaseHelper::clean($title) !!}</h4>
            @endif
            @if($subtitle = Arr::get($config, 'subtitle'))
                <p>{!! BaseHelper::clean($subtitle) !!}</p>
            @endif
        </div>
        <div class="footer-cta__source-thumb">
            @if ($iosLink = Arr::get($config, 'ios_link'))
                <a href="{{ $iosLink }}">
                    <img src="{{ RvMedia::getImageUrl(Arr::get($config, 'ios_image')) }}" alt="apple">
                </a>
            @endif

            @if ($androidLink = Arr::get($config, 'android_link'))
                <a href="{{ $androidLink }}">
                    <img src="{{ RvMedia::getImageUrl(Arr::get($config, 'android_image')) }}" alt="google">
                </a>
            @endif

            @if (! $iosLink && ! $androidLink)
                <div class="d-inline-flex align-items-center gap-2 px-3 py-2 rounded" style="background: rgba(255, 255, 255, 0.06); border: 1px solid rgba(255, 255, 255, 0.12);">
                    <i class="fal fa-shipping-fast text-warning fs-4"></i>
                    <span class="text-white small fw-bold text-uppercase" style="letter-spacing: 0.5px;">Cash On Delivery</span>
                </div>
            @endif
        </div>
    </div>
</div>
