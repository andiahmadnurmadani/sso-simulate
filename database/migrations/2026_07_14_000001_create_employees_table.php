<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->id('emp_id');
            $table->string('name', 45)->nullable();
            $table->string('nik_telin', 45)->nullable();
            $table->string('nik_tg', 45)->nullable();
            $table->string('gender', 45)->nullable();
            $table->string('religion', 45)->nullable();
            $table->string('place_of_birth', 45)->nullable();
            $table->string('date_of_birth', 45)->nullable();
            $table->string('employee_status', 45)->nullable();
            $table->string('position_band', 45)->nullable();
            $table->string('work_location', 45)->nullable();
            $table->string('office_address', 200)->nullable();
            $table->string('city', 45)->nullable();
            $table->string('province', 45)->nullable();
            $table->string('pos_code', 45)->nullable();
            $table->string('telepon', 45)->nullable();
            $table->string('my_address', 200)->nullable();
            $table->string('my_city', 45)->nullable();
            $table->string('my_province', 45)->nullable();
            $table->string('my_country', 45)->nullable();
            $table->string('my_pos_code', 45)->nullable();
            $table->string('my_tlp_no', 45)->nullable();
            $table->string('email', 45)->nullable();
            $table->string('email_asli', 45)->nullable();
            // login fields
            $table->string('password', 120)->nullable();
            $table->string('language', 45)->nullable();
            $table->tinyInteger('user_status_id')->nullable();
            $table->tinyInteger('auth_type_id')->default(0);
            $table->dateTime('auth_dtm')->nullable();
            $table->string('nonce', 32)->nullable();
            $table->string('token', 32)->nullable();
            $table->integer('attempts')->default(0);
            $table->string('status_login', 45)->default('NON FITA');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('employees');
    }
};
