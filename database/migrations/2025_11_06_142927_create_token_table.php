<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Jalankan migrasi untuk membuat tabel token upgrade premium.
     */
    public function up(): void
    {
        Schema::create('token', function (Blueprint $table) {
            $table->bigIncrements('id_token');

            // Relasi ke tabel user (bukan users)
            $table->unsignedBigInteger('id_user');

            // Token unik hasil transaksi
            $table->string('token')->unique();

            // Status token (unused / used)
            $table->enum('status', ['unused', 'used'])->default('unused');

            $table->timestamps();

            // Foreign key ke tabel user
            $table->foreign('id_user')
                ->references('id_user')
                ->on('user') // <- nama tabel kamu 'user'
                ->onDelete('cascade');
        });
    }

    /**
     * Rollback migrasi.
     */
    public function down(): void
    {
        Schema::dropIfExists('token');
    }
};
