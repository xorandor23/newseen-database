<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @OA\Schema(
 *     schema="Disukai",
 *     type="object",
 *     title="Disukai",
 *     description="Data Like/Disukai",
 *     @OA\Property(property="id_disukai", type="integer", example=1),
 *     @OA\Property(property="id_user", type="integer", example=3),
 *     @OA\Property(property="id_berita", type="integer", example=7),
 *     @OA\Property(property="suka", type="boolean", example=true, description="True jika like, false jika dislike"),
 *     @OA\Property(property="created_at", type="string", format="date-time", example="2025-11-06T08:00:00Z"),
 *     @OA\Property(property="updated_at", type="string", format="date-time", example="2025-11-06T08:10:00Z")
 * )
 */
class Disukai extends Model
{
    use HasFactory;

    protected $table = 'disukai';
    protected $primaryKey = 'id_disukai';
    public $timestamps = true;

    protected $fillable = [
        'id_user',
        'id_berita',
        'suka'
    ];
}
