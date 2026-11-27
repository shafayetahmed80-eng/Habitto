<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        if (! Schema::hasTable('pages') || ! Schema::hasTable('settings')) {
            return;
        }

        $homepageId = (int) (DB::table('settings')->where('key', 'theme-ninico-homepage_id')->value('value') ?: 2);
        $page = DB::table('pages')->where('id', $homepageId)->first();

        if (! $page) {
            return;
        }

        // Preserve original homepage content & template once for clean rollback
        $existingBackup = DB::table('settings')->where('key', 'habitto_prev_home_content')->first();
        if (! $existingBackup && ! str_contains((string) $page->content, '[gw-hero')) {
            DB::table('settings')->updateOrInsert(
                ['key' => 'habitto_prev_home_content'],
                ['value' => (string) $page->content]
            );
            DB::table('settings')->updateOrInsert(
                ['key' => 'habitto_prev_home_template'],
                ['value' => (string) ($page->template ?: 'full-width')]
            );
        }

        $preferredIds = [148, 178, 64, 124, 154, 88, 172, 130];
        $productIdsAttr = '';
        if (Schema::hasTable('ec_products')) {
            $foundCount = DB::table('ec_products')
                ->whereIn('id', $preferredIds)
                ->where('is_variation', 0)
                ->count();
            if ($foundCount === count($preferredIds)) {
                $productIdsAttr = ' product_ids="' . implode(',', $preferredIds) . '"';
            }
        }

        $luxuryContent = implode("\n", [
            '[gw-hero image="editorial/hero-modern-minimalist.jpg" script_text="for the" heading="Modern Minimalist" subheading="EVERY DAY" url="/products"][/gw-hero]',
            '[gw-categories title="Shop by Category" quantity="5" title_1="Oversized Tees" image_1="editorial/cat-oversized-tees.jpg" url_1="/product-categories/oversized-t-shirts" title_2="Cuban Shirts" image_2="editorial/cat-cuban-shirts.jpg" url_2="/product-categories/shirts" title_3="Pique Polos" image_3="editorial/cat-pique-polos.jpg" url_3="/product-categories/polo-t-shirts" title_4="Trousers" image_4="editorial/cat-trousers.jpg" url_4="/product-categories/pants-trousers" title_5="Hoodies" image_5="editorial/cat-hoodies.jpg" url_5="/product-categories/hoodies"][/gw-categories]',
            '[gw-atelier image="editorial/atelier-craft.jpg" eyebrow="HABBITO ATELIER" title="Designed by Habbito, Crafted in 240+ GSM Cotton." description="Cut from densely knitted combed cotton and finished in small batches for structured drape and everyday permanence." button_label="Order via WhatsApp"][/gw-atelier]',
            '[gw-lookbook banner_image="editorial/slow-hours-banner.jpg" banner_heading="SLOW HOURS" banner_caption="Slow Hours — Collection \'26" banner_url="/products" quantity="4" title_1="Look 1" image_1="editorial/look-1-acid-black.jpg" url_1="/product-categories/acid-wash-t-shirts" title_2="Look 2" image_2="editorial/look-2-cuban-olive.jpg" url_2="/product-categories/shirts" title_3="Look 3" image_3="editorial/look-3-polo-olive.jpg" url_3="/product-categories/polo-t-shirts" title_4="Look 4" image_4="editorial/look-4-hoodie-charcoal.jpg" url_4="/product-categories/hoodies"][/gw-lookbook]',
            '[gw-new-arrivals title="New Arrivals" limit="8"' . $productIdsAttr . ' view_all_label="View all" view_all_url="/products"][/gw-new-arrivals]',
        ]);

        DB::table('pages')->where('id', $homepageId)->update([
            'content' => $luxuryContent,
            'template' => 'luxury-home',
        ]);
    }

    public function down(): void
    {
        if (! Schema::hasTable('pages') || ! Schema::hasTable('settings')) {
            return;
        }

        $homepageId = (int) (DB::table('settings')->where('key', 'theme-ninico-homepage_id')->value('value') ?: 2);
        $prevContent = DB::table('settings')->where('key', 'habitto_prev_home_content')->value('value');
        $prevTemplate = DB::table('settings')->where('key', 'habitto_prev_home_template')->value('value') ?: 'full-width';

        if ($prevContent) {
            DB::table('pages')->where('id', $homepageId)->update([
                'content' => $prevContent,
                'template' => $prevTemplate,
            ]);
        }
    }
};
