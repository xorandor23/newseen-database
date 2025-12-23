<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\EmailVerificationRequest;
use Illuminate\Auth\Events\Verified;

class VerificationController extends Controller
{
    /**
     * @OA\Get(
     * path="/api/email/verify/{id}/{hash}",
     * summary="Verifikasi Email User (Klik Link dari Email)",
     * description="Endpoint ini diakses saat user mengklik link di email. URL ini memiliki signature keamanan.",
     * tags={"Verification"},
     * @OA\Parameter(
     * name="id",
     * in="path",
     * required=true,
     * description="ID User",
     * @OA\Schema(type="integer")
     * ),
     * @OA\Parameter(
     * name="hash",
     * in="path",
     * required=true,
     * description="Hash unik email",
     * @OA\Schema(type="string")
     * ),
     * @OA\Response(response="200", description="Email berhasil diverifikasi"),
     * @OA\Response(response="400", description="Link tidak valid atau kadaluarsa")
     * )
     */
    public function verify(Request $request, $id, $hash)
    {
        $user = \App\Models\User::findOrFail($id);
        $baseUrl = config('app.frontend');

        // 1. Cek apakah hash valid (keamanan Laravel)
        if (! hash_equals((string) $hash, sha1($user->getEmailForVerification()))) {
            return redirect($baseUrl . '/verify-expired');
        }

        // 2. Cek apakah sudah diverifikasi sebelumnya
        if ($user->hasVerifiedEmail()) {
            return redirect($baseUrl . '/verify-done');
        }

        // 3. Tandai email sebagai verified
        if ($user->markEmailAsVerified()) {
            return redirect($baseUrl . '/verify-done');
        }

        return response()->json(['message' => 'Email berhasil diverifikasi! Akun Anda aktif.'], 200);
    }

    /**
     * @OA\Post(
     * path="/api/email/resend",
     * summary="Kirim Ulang Link Verifikasi",
     * tags={"Verification"},
     * security={{"bearerAuth":{}}},
     * @OA\Response(response="200", description="Link dikirim ulang"),
     * @OA\Response(response="400", description="Email sudah diverifikasi")
     * )
     */
    public function resend(Request $request)
    {
        if ($request->user()->hasVerifiedEmail()) {
            return response()->json(['message' => 'Email sudah diverifikasi.'], 400);
        }

        $request->user()->sendEmailVerificationNotification();

        return response()->json(['message' => 'Link verifikasi telah dikirim ulang ke email Anda.']);
    }
}
