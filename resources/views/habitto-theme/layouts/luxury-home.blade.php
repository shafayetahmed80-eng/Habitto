<!doctype html>
<html {!! Theme::htmlAttributes() !!}>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@1,400;1,500;1,600&family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,600&family=Trirong:ital,wght@0,400;0,500;0,600;0,700;1,400&display=swap" rel="stylesheet">

        {!! Theme::header() !!}

        <link rel="stylesheet" href="{{ asset('css/habitto-luxury.css') }}?v=1.0.3">
    </head>
    <body {!! Theme::bodyAttributes() !!}>
        <script>document.body.classList.add('gw-luxury-home');</script>

        {!! apply_filters(THEME_FRONT_BODY, null) !!}

        {!! Theme::partial('scroll-top') !!}

        @include('habitto-luxury::partials.header')

        <main class="gw-main">
            {!! Theme::content() !!}
        </main>

        @include('habitto-luxury::partials.footer')

        @if(is_plugin_active('ecommerce') && theme_option('bottom_mobile_menu_enabled', 'yes') === 'yes')
            @include(Theme::getThemeNamespace('partials.navigation-bar'))
        @endif

        <script>
            'use strict';

            window.trans = {};
            window.siteConfig = {};
            @if (is_plugin_active('ecommerce'))
                window.currencies = @json(get_currencies_json());
                @if(EcommerceHelper::isCartEnabled())
                    siteConfig.ajaxCart = '{{ route('public.ajax.cart') }}';
                    siteConfig.cartUrl = '{{ route('public.cart') }}';
                @endif
            @endif
        </script>

        {!! Theme::footer() !!}

        @if (is_plugin_active('ecommerce'))
            @include('plugins/ecommerce::themes.includes.gtm-script')
        @endif
    </body>
</html>
