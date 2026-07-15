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
        Schema::create('employee_positions', function (Blueprint $table) {
            $table->id('ep_id');
            $table->foreignId('emp_id')->constrained('employees', 'emp_id')->cascadeOnDelete();
            $table->foreignId('pos_id')->nullable()->constrained('positions', 'pos_id')->nullOnDelete();
            $table->integer('emp_id_atasan')->nullable();
            $table->integer('pos_id_atasan')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('employee_positions');
    }
};
