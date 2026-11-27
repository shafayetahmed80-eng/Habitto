@php
    $sectionTitle = $shortcode->title ?: 'Shop by Category';
    $qty = min(10, max(1, (int) ($shortcode->quantity ?: 5)));
    $items = [];
    for ($i = 1; $i <= $qty; $i++) {
        $label = $shortcode->{"title_$i"} ?? null;
        $img = $shortcode->{"image_$i"} ?? null;
        $link = $shortcode->{"url_$i"} ?? '/products';
        if ($label) {
            $items[] = [
                'title' => $label,
                'image' => $img ? RvMedia::getImageUrl($img) : url('/storage/editorial/cat-oversized-tees.jpg'),
                'url' => url($link),
            ];
        }
    }
@endphp

@if (count($items))
    <section class="gw-section gw-categories">
        <div class="gw-page-width">
            <h2 class="gw-section-heading">{{ $sectionTitle }}</h2>
            <div class="gw-cat-grid">
                @foreach ($items as $item)
                    <a href="{{ $item['url'] }}" class="gw-cat-card">
                        <div class="gw-cat-card__media">
                            <img src="{{ $item['image'] }}" alt="{{ $item['title'] }}" loading="lazy">
                        </div>
                        <div class="gw-cat-card__caption">
                            <span>{{ $item['title'] }}</span>
                            <span class="gw-arrow" aria-hidden="true">&rarr;</span>
                        </div>
                    </a>
                @endforeach
            </div>
        </div>
    </section>
@endif
