<?php

namespace App\Providers;

use Botble\Base\Facades\BaseHelper;
use Botble\Ecommerce\Models\Product;
use Botble\Page\Models\Page;
use Botble\Shortcode\Compilers\Shortcode as ShortcodeCompiler;
use Botble\Shortcode\Facades\Shortcode;
use Botble\Shortcode\Forms\ShortcodeForm;
use Botble\Theme\Facades\Theme;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class HabittoLuxuryHomeServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        View::addNamespace('habitto-luxury', resource_path('views/luxury-home'));

        app()->booted(function (): void {
            if (defined('THEME_FRONT_HEADER')) {
                add_filter(THEME_FRONT_HEADER, function (?string $html): string {
                    return (string) $html . view('habitto-luxury::partials.global-head')->render();
                }, 999);
            }

            if (function_exists('register_page_template')) {
                register_page_template([
                    'luxury-home' => 'Quiet Luxury Homepage (GW Style)',
                ]);
            }

            if (defined('BASE_ACTION_PUBLIC_RENDER_SINGLE')) {
                add_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, function (string $screen, mixed $data): void {
                    if (! defined('PAGE_MODULE_SCREEN_NAME') || $screen !== PAGE_MODULE_SCREEN_NAME || ! $data instanceof Page) {
                        return;
                    }

                    $isLuxury = $data->template === 'luxury-home'
                        || (BaseHelper::isHomepage($data->getKey()) && str_contains((string) $data->content, '[gw-'));

                    if ($isLuxury) {
                        app()->instance('habitto.is_luxury_home', true);
                    }
                }, 120, 2);
            }

            Event::listen('theme.after', function ($theme): void {
                if (! app()->bound('habitto.is_luxury_home')) {
                    return;
                }

                View::addNamespace(Theme::getThemeNamespace(), resource_path('views/habitto-theme'));
                $theme->layout('luxury-home');
            });

            if (class_exists(Shortcode::class)) {
                $this->registerLuxuryShortcodes();
            }
        });
    }

    protected function registerLuxuryShortcodes(): void
    {
        Shortcode::register('gw-hero', 'Editorial Hero Banner', 'Full-bleed editorial campaign hero', function (ShortcodeCompiler $shortcode) {
            return view('habitto-luxury::shortcodes.gw-hero', compact('shortcode'))->render();
        });

        Shortcode::setAdminConfig('gw-hero', function (array $attributes) {
            return ShortcodeForm::createFromArray($attributes)
                ->withLazyLoading()
                ->add('image', 'mediaImage', ['label' => 'Hero Image'])
                ->add('script_text', 'text', ['label' => 'Script Eyebrow (e.g. for the)'])
                ->add('heading', 'text', ['label' => 'Main Serif Heading'])
                ->add('subheading', 'text', ['label' => 'Tracked Subheading (e.g. EVERY DAY)'])
                ->add('url', 'text', ['label' => 'Target URL']);
        });

        Shortcode::register('gw-categories', 'Editorial Category Squares', '5-column 1:1 studio category cards', function (ShortcodeCompiler $shortcode) {
            return view('habitto-luxury::shortcodes.gw-categories', compact('shortcode'))->render();
        });

        Shortcode::setAdminConfig('gw-categories', function (array $attributes) {
            return ShortcodeForm::createFromArray($attributes)
                ->withLazyLoading()
                ->add('title', 'text', ['label' => 'Section Title', 'default_value' => 'Shop by Category'])
                ->add('category_tabs', 'tabs', [
                    'fields' => [
                        'title' => ['type' => 'text', 'title' => 'Label', 'required' => true],
                        'image' => ['type' => 'image', 'title' => 'Square Studio Image'],
                        'url' => ['type' => 'text', 'title' => 'Category URL'],
                    ],
                    'shortcode_attributes' => $attributes,
                    'max' => 10,
                ]);
        });

        Shortcode::register('gw-atelier', 'Editorial Atelier Split', '2-column craft image + dark charcoal story block', function (ShortcodeCompiler $shortcode) {
            return view('habitto-luxury::shortcodes.gw-atelier', compact('shortcode'))->render();
        });

        Shortcode::setAdminConfig('gw-atelier', function (array $attributes) {
            return ShortcodeForm::createFromArray($attributes)
                ->withLazyLoading()
                ->add('image', 'mediaImage', ['label' => 'Left Square Image'])
                ->add('eyebrow', 'text', ['label' => 'Eyebrow'])
                ->add('title', 'text', ['label' => 'Heading'])
                ->add('description', 'textarea', ['label' => 'Description'])
                ->add('button_label', 'text', ['label' => 'Button Label'])
                ->add('button_url', 'text', ['label' => 'Button URL']);
        });

        Shortcode::register('gw-lookbook', 'Editorial Campaign & Lookbook', 'Dark charcoal campaign banner + 4 portrait look cards', function (ShortcodeCompiler $shortcode) {
            return view('habitto-luxury::shortcodes.gw-lookbook', compact('shortcode'))->render();
        });

        Shortcode::setAdminConfig('gw-lookbook', function (array $attributes) {
            return ShortcodeForm::createFromArray($attributes)
                ->withLazyLoading()
                ->add('banner_image', 'mediaImage', ['label' => 'Campaign Banner Image'])
                ->add('banner_heading', 'text', ['label' => 'Arched Overlay Text (e.g. SLOW HOURS)'])
                ->add('banner_caption', 'text', ['label' => 'Banner Caption'])
                ->add('banner_url', 'text', ['label' => 'Banner URL'])
                ->add('look_tabs', 'tabs', [
                    'fields' => [
                        'title' => ['type' => 'text', 'title' => 'Look Label (e.g. Look 1)', 'required' => true],
                        'image' => ['type' => 'image', 'title' => '3:4 Portrait Look Image'],
                        'url' => ['type' => 'text', 'title' => 'Target URL'],
                    ],
                    'shortcode_attributes' => $attributes,
                    'max' => 8,
                ]);
        });

        if (function_exists('is_plugin_active') && is_plugin_active('ecommerce')) {
            Shortcode::register('gw-new-arrivals', 'Editorial New Arrivals Grid', '4-column 4:5 quiet-luxury product grid', function (ShortcodeCompiler $shortcode) {
                $limit = min(24, max(1, (int) ($shortcode->limit ?: 8)));
                $productIds = Shortcode::fields()->getIds('product_ids', $shortcode);

                $query = Product::query()
                    ->wherePublished()
                    ->where('is_variation', 0)
                    ->with(['slugable', 'categories', 'variations.product']);

                if ($productIds) {
                    $idsList = implode(',', array_map('intval', $productIds));
                    $products = $query
                        ->whereIn('id', $productIds)
                        ->orderByRaw("FIELD(id, $idsList)")
                        ->limit($limit)
                        ->get();
                } else {
                    $products = $query
                        ->orderByDesc('is_featured')
                        ->orderByDesc('id')
                        ->limit($limit)
                        ->get();
                }

                return view('habitto-luxury::shortcodes.gw-new-arrivals', compact('shortcode', 'products'))->render();
            });

            Shortcode::setAdminConfig('gw-new-arrivals', function (array $attributes) {
                return ShortcodeForm::createFromArray($attributes)
                    ->withLazyLoading()
                    ->add('title', 'text', ['label' => 'Section Title', 'default_value' => 'New Arrivals'])
                    ->add('limit', 'number', ['label' => 'Number of products', 'default_value' => 8])
                    ->add('product_ids', 'text', ['label' => 'Optional comma-separated Product IDs (for curated order)'])
                    ->add('view_all_label', 'text', ['label' => 'View All Link Text', 'default_value' => 'View all'])
                    ->add('view_all_url', 'text', ['label' => 'View All URL', 'default_value' => '/products']);
            });
        }
    }
}
