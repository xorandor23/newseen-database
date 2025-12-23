<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Contracts\Auth\MustVerifyEmail; // <--- 1. Import ini
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Prunable; // <--- 1. Import ini

class User extends Authenticatable implements MustVerifyEmail
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasApiTokens, HasFactory, Notifiable, Prunable;

    protected $table = 'user';
    protected $primaryKey = 'id_user';

    protected $fillable = [
        'name',
        'username',
        'email',
        'password',
        'role',
        'membership',
        'foto_profil',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    public function prunable()
    {
        // HAPUS JIKA:
        // 1. created_at sudah lebih dari 24 jam yang lalu (now - 24 jam)
        // 2. DAN email_verified_at masih KOSONG (NULL)
        return static::where('created_at', '<=', now()->subHours(3))
                     ->whereNull('email_verified_at');
    }

    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }


    public function isAdmin()
    {
        return $this->role === 'admin';
    }

    public function isPenulis()
    {
        return $this->role === 'penulis';
    }

    public function isPembaca()
    {
        return $this->role === 'pembaca';
    }


    public function isGuest()
    {
        return $this->membership === 'guest';
    }

    public function isFree()
    {
        return $this->membership === 'free';
    }

    public function isPremium()
    {
        return $this->membership === 'premium';
    }

    public function berita()
    {
        return $this->hasMany(Berita::class, 'id_user', 'id_user');
    }
}
