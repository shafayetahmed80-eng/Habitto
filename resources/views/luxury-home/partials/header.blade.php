@php
    $logoImg = theme_option('logo') ?: 'general/habitto-logo-luxury.png';
    $logoUrl = RvMedia::getImageUrl($logoImg, null, false, url('/storage/general/habitto-logo-luxury.png'));
@endphp

<header class="gw-header" id="gw-sticky-header">
    <div class="d-none d-xl-block">
        <div class="gw-page-width">
            <div class="d-flex align-items-center justify-content-between flex-nowrap w-100 gw-header__inner">
                <div class="d-flex align-items-center flex-grow-1 min-w-0">
                    <div class="flex-shrink-0">
                        <a href="{{ BaseHelper::getHomepageUrl() }}" class="gw-logo__link" aria-label="Habbito">
                            <img src="{{ $logoUrl }}" alt="{{ theme_option('site_title', 'Habbito') }}" class="gw-logo__mark">
                        </a>
                    </div>
                    <div class="gw-nav-wrap d-flex align-items-center p-relative">
                        <div class="main-menu gw-main-menu">
                            <nav id="mobile-menu">
                                {!! Menu::renderMenuLocation('main-menu', ['view' => 'menu']) !!}
                            </nav>
                        </div>
                    </div>
                </div>

                @if (is_plugin_active('ecommerce'))
                    <div class="gw-header__icons d-flex align-items-center justify-content-end flex-shrink-0">
                        <button type="button" class="gw-icon-btn tp-search-sidebar-toggle" title="{{ __('Search') }}" aria-label="{{ __('Search') }}">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="7.5"></circle><line x1="20" y1="20" x2="16.35" y2="16.35"></line></svg>
                        </button>

                        @auth('customer')
                            <a href="{{ route('customer.overview') }}" class="gw-icon-btn" title="{{ auth('customer')->user()->name }}" aria-label="{{ __('Account') }}">
                                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                            </a>
                        @else
                            <a href="{{ route('customer.login') }}" class="gw-icon-btn" title="{{ __('Login') }}" aria-label="{{ __('Login') }}">
                                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                            </a>
                        @endauth

                        @if(EcommerceHelper::isCartEnabled())
                            <button type="button" class="gw-icon-btn header-cart p-relative tp-cart-toggle" title="{{ __('Bag') }}" aria-label="{{ __('Bag') }}">
                                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path><line x1="3" y1="6" x2="21" y2="6"></line><path d="M16 10a4 4 0 0 1-8 0"></path></svg>
                                <span class="tp-product-count gw-bag-count">{{ Cart::instance('cart')->count() }}</span>
                            </button>
                        @endif
                    </div>
                @endif
            </div>
        </div>
    </div>
</header>

{!! Theme::partial('navbar') !!}
