<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Otp extends Model
{
    use HasFactory;

    // Menentukan nama tabel (opsional jika nama tabel sudah 'otps')
    protected $table = 'otps';

    // Kolom yang boleh diisi secara massal
    protected $fillable = [
        'email',
        'otp',
        'expires_at',
    ];

    // Mengatur agar expires_at dibaca sebagai objek tanggal (Carbon)
    protected $casts = [
        'expires_at' => 'datetime',
    ];
}
