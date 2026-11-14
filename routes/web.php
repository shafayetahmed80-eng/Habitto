<?php

use App\Http\Controllers\Admin\CourierController;
use Botble\Base\Facades\AdminHelper;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
*/

AdminHelper::registerRoutes(function (): void {
    Route::group(['prefix' => 'couriers', 'as' => 'couriers.'], function (): void {
        Route::post('book/{order}', [CourierController::class, 'bookOrder'])->name('book');
        Route::get('track/{order}', [CourierController::class, 'trackOrder'])->name('track');
        Route::get('packing-slip/{order}', [CourierController::class, 'packingSlip'])->name('packing-slip');
        Route::match(['get', 'post'], 'settings', [CourierController::class, 'settings'])->name('settings');
    });

    Route::group(['prefix' => 'sms', 'as' => 'sms.'], function (): void {
        Route::match(['get', 'post'], 'settings', [\App\Http\Controllers\Admin\SmsController::class, 'settings'])->name('settings');
        Route::post('send-test', [\App\Http\Controllers\Admin\SmsController::class, 'sendTestSms'])->name('send-test');
        Route::post('send-order/{order}', [\App\Http\Controllers\Admin\SmsController::class, 'sendOrderSms'])->name('send-order');
    });
});
