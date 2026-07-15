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
        Schema::create('departments', function (Blueprint $table) {
            $table->id('department_id');
            $table->foreignId('directorate_id')->nullable();
            $table->integer('parent')->nullable();
            $table->string('code', 64);
            $table->string('num_code', 6)->nullable();
            $table->string('name', 100)->nullable();
            $table->text('description')->nullable();
            $table->string('course_model', 2)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('departments');
    }
};
