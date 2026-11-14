<header class="main-header">
    {!! Theme::partial('header-top') !!}
    <div class="main-menu-area d-none d-xl-block">
        <div class="container-fluid px-3 px-xl-4 px-xxl-5">
            <div class="d-flex align-items-center justify-content-between flex-nowrap w-100 header-navbar-row">
                <div class="header-nav-left d-flex align-items-center flex-grow-1 min-w-0">
                    <div class="header-logo-wrap flex-shrink-0">
                        {!! Theme::partial('logo') !!}
                    </div>
                    <div class="mainmenu__main d-flex align-items-center p-relative">
                        <div class="main-menu">
                            <nav id="mobile-menu">
                                {!! Menu::renderMenuLocation('main-menu', ['view' => 'menu']) !!}
                            </nav>
                        </div>
                    </div>
                </div>
                @if (is_plugin_active('ecommerce'))
                    <div class="header-nav-right d-flex align-items-center justify-content-end flex-shrink-0">
                        <div class="mainmenu__search">
                            <form action="{{ route('public.products') }}" class="position-relative form--quick-search" data-url="{{ route('public.ajax.search-products') }}" method="GET">
                                <div class="mainmenu__search-bar p-relative">
                                    <button class="mainmenu__search-icon" title="search"><i class="fal fa-search"></i></button>
                                    <input type="text" name="q" class="input-search-product" placeholder="{{ __('Search products...') }}" value="{{ BaseHelper::stringify(request()->query('q')) }}" autocomplete="off">
                                </div>
                                <div class="panel--search-result"></div>
                            </form>
                        </div>
                        {!! Theme::partial('header-meta') !!}
                    </div>
                @endif
            </div>
        </div>
    </div>
</header>

{!! Theme::partial('navbar') !!}
