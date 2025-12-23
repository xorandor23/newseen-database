<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Api\BeritaController;
use App\Http\Controllers\Api\DisukaiController;
use App\Http\Controllers\Api\KategoriController;
use App\Http\Controllers\Api\UpgradeController;
use App\Http\Controllers\Api\TransactionController;
use App\Http\Controllers\Api\SearchController;
use App\Http\Controllers\Api\BookmarkController;
use App\Http\Controllers\Api\AnalyticsController;

// Auth
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']); // ditambahkan login

// User
Route::get('/users', [UserController::class, 'index']);
Route::get('/users/{id_user}', [UserController::class, 'show']);
Route::middleware(['auth:sanctum'])->group(function () {
    Route::post('/users/{id_user}', [UserController::class, 'update']);
    Route::delete('/users/{id_user}', [UserController::class, 'destroy']);
    Route::get('/myinfo', [UserController::class, 'myInfo']);
});

// Kategori

Route::get('/kategori', [KategoriController::class, 'index']);
Route::get('/kategori/{id_kategori}', [KategoriController::class, 'show']);

Route::middleware('auth:sanctum')->group(function () {
    Route::post('/kategori', [KategoriController::class, 'store']);
    Route::put('/kategori/{id_kategori}', [KategoriController::class, 'update']);
    Route::delete('/kategori/{id_kategori}', [KategoriController::class, 'destroy']);
});



// Berita
Route::get('/berita/search', [BeritaController::class, 'search']);
Route::get('/berita', [BeritaController::class, 'index']);
Route::get('/berita/{id_berita}', [BeritaController::class, 'show']);
Route::get('/berita/user/{id_user}', [BeritaController::class, 'getByUser']);
Route::get('/berita/category/{id_kategori}', [BeritaController::class, 'getByCategory']);

// Protected routes (butuh login + role)
// Penulis & Admin bisa tambah atau edit berita
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/berita', [BeritaController::class, 'store']);
    Route::post('/berita/{id_berita}', [BeritaController::class, 'update']); // edit menggunakan put
    Route::patch('/berita/{id_berita}', [BeritaController::class, 'update']); // alternatif patch
});

// Hanya Admin bisa hapus berita
Route::middleware('auth:sanctum')->group(function () {
    Route::delete('/berita/{id_berita}', [BeritaController::class, 'destroy']);
});

// Likes
Route::get('/likes', [DisukaiController::class, 'index']);
Route::get('/likes/true', [DisukaiController::class, 'getTrueLikes']);
Route::get('/likes/false', [DisukaiController::class, 'getFalseLikes']);

Route::middleware(['auth:sanctum'])->group(function () {
    Route::post('/likes', [DisukaiController::class, 'store']);
    Route::put('/likes/{id_disukai}', [DisukaiController::class, 'update']);
    Route::delete('/likes/{id_disukai}', [DisukaiController::class, 'destroy']);
});

// Transaction
Route::middleware(['auth:sanctum'])->group(function () {
    Route::post('/transaction', [TransactionController::class, 'transaction']);
});

// Upgrade
Route::middleware(['auth:sanctum'])->group(function () {
    Route::post('/upgrade', [UpgradeController::class, 'upgrade']);
});

// Search
Route::get('/search', [SearchController::class, 'search']);
Route::get('/search/advanced', [SearchController::class, 'advancedSearch']);

// Bookmark
Route::middleware(['auth:sanctum'])->group(function () {
    Route::get('/bookmarks', [BookmarkController::class, 'index']);
    Route::post('/bookmarks', [BookmarkController::class, 'store']);
    Route::delete('/bookmarks/{id_bookmark}', [BookmarkController::class, 'destroy']);
});

// Analytics (Admin only)
Route::middleware(['auth:sanctum'])->group(function () {
    Route::get('/analytics/dashboard', [AnalyticsController::class, 'dashboard']);
    Route::get('/analytics/users', [AnalyticsController::class, 'users']);
    Route::get('/analytics/content', [AnalyticsController::class, 'content']);
});

// Verifikasi Email
use App\Http\Controllers\Api\VerificationController;

// Route untuk Link yang diklik dari Email (Public)
// PERHATIKAN: name('verification.verify') itu WAJIB ada.
Route::get('/email/verify/{id}/{hash}', [VerificationController::class, 'verify'])
    ->name('verification.verify');

// Route untuk user minta kirim ulang email (Harus Login / Pakai Token)
Route::middleware('auth:sanctum')->post('/email/resend', [VerificationController::class, 'resend']);

// User
Route::middleware('auth:sanctum')->group(function () {
    Route::post('users/{id_user}/role', [UserController::class, 'updateRole']);
});

Route::middleware(['throttle:register_cooldown'])->post('/register', [AuthController::class, 'register']);

// BENAR (akan menghasilkan api/send-otp)
Route::post('/send-otp', [AuthController::class, 'sendOtp']);
Route::post('/reset-password-otp', [AuthController::class, 'resetPasswordWithOtp']);
Route::middleware('auth:sanctum')->post('/logout', [AuthController::class, 'logout']);
