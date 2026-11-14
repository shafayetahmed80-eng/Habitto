<div class="col-lg-3 col-md-4 col-sm-6">
    <div class="footer-widget footer-col-1 mb-40">
        <div class="footer-logo mb-30">
            @php
                $footerLogo = Theme::get('footerLogo', $config['logo']) ?: theme_option('logo');
                if ($footerLogo === 'general/logo-white.png' || $footerLogo === 'general/logo.png') {
                    $footerLogo = 'general/habitto-logo.jpg';
                }
                $siteName = config('app.name', 'Habitto BD');
            @endphp
            <a href="{{ BaseHelper::getHomepageUrl() }}" class="d-inline-flex align-items-center gap-2 text-decoration-none" title="{{ $siteName }}">
                @if ($footerLogo)
                    {!! Theme::getLogoImage(['class' => 'rounded', 'style' => 'max-height: 38px; width: auto; object-fit: contain;'], 'logo', 38, $footerLogo) !!}
                @endif
                <span class="footer-site-name text-white fw-bold fs-5 text-uppercase" style="letter-spacing: 1.5px;">
                    {{ $siteName }}
                </span>
            </a>
        </div>

        @if ($description = $config['description'])
            <div class="footer-content">
                <div>{!! BaseHelper::clean($description) !!}</div>
            </div>
        @endif
    </div>
</div>
