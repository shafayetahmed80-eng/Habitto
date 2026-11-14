<?php

namespace App\Providers;

use App\Services\SmsService;
use Botble\Base\Facades\DashboardMenu;
use Botble\Ecommerce\Events\OrderCreated;
use Botble\Ecommerce\Events\OrderPlacedEvent;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        if (function_exists('is_plugin_active') && is_plugin_active('ecommerce')) {
            // Register Steadfast Courier card at the top of the Order Detail right sidebar
            add_filter('ecommerce_order_detail_sidebar_top', function (?string $html, $order): string {
                return (string) $html . view('admin.courier.order-card', compact('order'))->render();
            }, 120, 2);

            // Register Courier Settings in Ecommerce Admin Menu
            DashboardMenu::default()->registerItem([
                'id' => 'cms-couriers-settings',
                'priority' => 999,
                'parent_id' => 'cms-plugins-ecommerce',
                'name' => 'Steadfast Courier',
                'icon' => 'ti ti-truck-delivery',
                'url' => fn () => route('couriers.settings'),
                'permissions' => ['orders.index'],
            ]);

            // Register SMS Settings in Ecommerce Admin Menu
            DashboardMenu::default()->registerItem([
                'id' => 'cms-sms-settings',
                'priority' => 1000,
                'parent_id' => 'cms-plugins-ecommerce',
                'name' => 'SMS Gateway',
                'icon' => 'ti ti-message-dots',
                'url' => fn () => route('sms.settings'),
                'permissions' => ['orders.index'],
            ]);

            // Auto-send SMS when an order is placed or created
            Event::listen([OrderPlacedEvent::class, OrderCreated::class], function ($event): void {
                if (isset($event->order)) {
                    $order = $event->order;
                    // Check if confirmation SMS was already sent for this order
                    $alreadySent = DB::table('habitto_sms_logs')
                        ->where('order_id', $order->id)
                        ->where('status', '!=', 'failed')
                        ->exists();

                    if (!$alreadySent) {
                        try {
                            $sms = app(SmsService::class);
                            $sms->sendOrderConfirmationSms($order);
                            $sms->sendAdminNewOrderAlert($order);
                        } catch (\Throwable $e) {
                            \Illuminate\Support\Facades\Log::warning('Auto SMS failed: ' . $e->getMessage());
                        }
                    }
                }
            });
        }
    }
}
