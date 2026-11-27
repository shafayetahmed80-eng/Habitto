<div class="gw-product-card product-item"
    data-product-id="{{ $product->id }}"
    data-product-name="{{ $product->name }}"
    data-product-price="{{ $product->price }}"
    data-product-sku="{{ $product->sku }}"
>
    <div class="gw-product-card__media">
        @if ($product->isOutOfStock())
            <div class="gw-product-card__badge-wrap">
                <span class="gw-product-card__badge">{{ __('Sold out') }}</span>
            </div>
        @endif
        <a href="{{ $product->url }}" class="gw-product-card__link" data-bb-toggle="product-link">
            <img
                src="{{ RvMedia::getImageUrl($product->image, null, false, RvMedia::getDefaultImage()) }}"
                alt="{{ $product->name }}"
                loading="lazy"
                class="gw-product-card__img"
            >
        </a>
    </div>
    <div class="gw-product-card__info">
        <h3 class="gw-product-card__title">
            <a href="{{ $product->url }}" title="{{ $product->name }}" data-bb-toggle="product-link">{{ $product->name }}</a>
        </h3>
        <div class="gw-product-card__price" data-bb-value="product-price">
            {{ $product->price()->displayAsText() }}
        </div>
    </div>
</div>
