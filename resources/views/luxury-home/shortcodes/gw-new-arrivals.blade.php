@php
    $title = $shortcode->title ?: 'New Arrivals';
    $viewAllLabel = $shortcode->view_all_label ?: 'View all';
    $viewAllUrl = url($shortcode->view_all_url ?: '/products');
@endphp

@if ($products->isNotEmpty())
    <section class="gw-section gw-new-arrivals">
        <div class="gw-page-width">
            <h2 class="gw-section-heading">{{ $title }}</h2>
            <div class="gw-products-grid">
                @foreach ($products as $product)
                    <div class="gw-products-grid__col">
                        @include('habitto-luxury::partials.product-card', ['product' => $product])
                    </div>
                @endforeach
            </div>
            @if ($viewAllLabel)
                <div class="gw-view-all-wrap">
                    <a href="{{ $viewAllUrl }}" class="gw-underlined-link">{{ $viewAllLabel }}</a>
                </div>
            @endif
        </div>
    </section>
@endif
