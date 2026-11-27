<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        if (! Schema::hasTable('settings')) {
            return;
        }

        $updates = [
            'theme-ninico-logo' => 'general/habitto-logo-luxury.png',
            'theme-ninico-logo_light' => 'general/habitto-logo-luxury-light.png',
            'theme-ninico-favicon' => 'general/habitto-logo-luxury.png',
            'theme-ninico-primary_color' => '#252525',
            'theme-ninico-header_background_color' => '#FDF6EE',
            'theme-ninico-header_text_color' => '#252525',
            'theme-ninico-header_menu_text_color' => '#252525',
            'theme-ninico-header_menu_text_hover_color' => '#55526B',
            'theme-ninico-footer_background_color' => '#252525',
            'theme-ninico-footer_bottom_background_color' => '#1C1C1C',
            'theme-ninico-footer_text_color' => '#FDF6EE',
            'theme-ninico-footer_text_muted_color' => '#D6CFC4',
            'theme-ninico-footer_border_color' => '#383838',
            'theme-ninico-breadcrumb_background' => '',
            'theme-ninico-breadcrumb_background_color' => '#F5F1EA',
            'theme-ninico-newsletter_popup_enable' => '0',
        ];

        foreach ($updates as $key => $value) {
            DB::table('settings')->updateOrInsert(['key' => $key], ['value' => $value]);
        }

        // Update Footer SiteInfoWidget logo if present so dark footer displays light luxury "H" mark cleanly
        if (Schema::hasTable('widgets')) {
            $widgets = DB::table('widgets')->where('widget_id', 'SiteInfoWidget')->get();
            foreach ($widgets as $widget) {
                $data = json_decode((string) $widget->data, true);
                if (is_array($data)) {
                    $data['logo'] = 'general/habitto-logo-luxury-light.png';
                    DB::table('widgets')->where('id', $widget->id)->update([
                        'data' => json_encode($data, JSON_UNESCAPED_UNICODE),
                    ]);
                }
            }
        }
    }

    public function down(): void
    {
        if (! Schema::hasTable('settings')) {
            return;
        }

        $revert = [
            'theme-ninico-logo' => 'general/habitto-logo.jpg',
            'theme-ninico-logo_light' => 'general/habitto-logo.jpg',
            'theme-ninico-favicon' => 'general/habitto-logo.jpg',
            'theme-ninico-primary_color' => '#0F172A',
            'theme-ninico-header_background_color' => '#FFFFFF',
            'theme-ninico-header_text_color' => '#0F172A',
            'theme-ninico-header_menu_text_color' => '#0F172A',
            'theme-ninico-header_menu_text_hover_color' => '#64748B',
            'theme-ninico-footer_background_color' => '#0F172A',
            'theme-ninico-footer_bottom_background_color' => '#020617',
            'theme-ninico-footer_text_color' => '#F1F5F9',
            'theme-ninico-footer_text_muted_color' => '#94A3B8',
            'theme-ninico-footer_border_color' => '#1E293B',
        ];

        foreach ($revert as $key => $value) {
            DB::table('settings')->updateOrInsert(['key' => $key], ['value' => $value]);
        }
    }
};
