<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (!Schema::hasTable('habitto_sms_logs')) {
            Schema::create('habitto_sms_logs', function (Blueprint $table): void {
                $table->id();
                $table->string('phone', 30);
                $table->text('message');
                $table->string('provider', 50)->default('simulation');
                $table->string('status', 30)->default('sent');
                $table->text('response')->nullable();
                $table->unsignedBigInteger('order_id')->nullable()->index();
                $table->timestamps();
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('habitto_sms_logs');
    }
};
