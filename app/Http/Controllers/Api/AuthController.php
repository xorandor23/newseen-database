<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\ValidationException;
use Illuminate\Auth\Events\Registered; // <--- 1. TAMBAHKAN IMPORT INI
use App\Mail\WelcomeMail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\URL;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;   // <--- TAMBAHKAN INI
use Illuminate\Support\Facades\Auth; // Pastikan ini diimpor
use App\Models\Otp;
use App\Mail\OtpMail;

/**
 * @OA\Tag(
 *     name="Authentication",
 *     description="API Endpoints untuk autentikasi"
 * )
 */
class AuthController extends Controller
{
    /**
     * @OA\Post(
     *     path="/register",
     *     tags={"Authentication"},
     *     summary="Register new user",
     *     description="Mendaftarkan user baru dan menyimpan data ke tabel user",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(
     *             required={"username","name","email","password","password_confirmation","role","membership"},
     *             @OA\Property(property="username", type="string", example="johndoe"),
     *             @OA\Property(property="name", type="string", example="John Doe"),
     *             @OA\Property(property="email", type="string", format="email", example="john@gmail.com"),
     *             @OA\Property(property="password", type="string", format="password", example="P@ssW0rd3"),
     *             @OA\Property(property="password_confirmation", type="string", format="password", example="P@ssW0rd3"),
     *             @OA\Property(property="role", type="string", enum={"penulis", "pembaca"}, example="pembaca"),
     *             @OA\Property(property="membership", type="string", enum={"guest","free","premium"}, example="free")
     *         )
     *     ),
     *     @OA\Response(
     *         response=201,
     *         description="User registered successfully",
     *         @OA\JsonContent(
     *             @OA\Property(property="success", type="boolean", example=true),
     *             @OA\Property(property="message", type="string", example="User berhasil didaftarkan"),
     *             @OA\Property(
     *                 property="data",
     *                 type="object",
     *                 @OA\Property(property="id_user", type="integer", example=1),
     *                 @OA\Property(property="username", type="string", example="johndoe"),
     *                 @OA\Property(property="name", type="string", example="John Doe"),
     *                 @OA\Property(property="email", type="string", example="john@gmail.com"),
     *                 @OA\Property(property="role", type="string", example="pembaca"),
     *                 @OA\Property(property="membership", type="string", example="free"),
     *                 @OA\Property(property="foto_profil", type="string", example="profile.jpg")
     *             )
     *         )
     *     ),
     *     @OA\Response(
     *         response=422,
     *         description="Validation error",
     *         @OA\JsonContent(
     *             @OA\Property(property="success", type="boolean", example=false),
     *             @OA\Property(property="message", type="string", example="Validation error"),
     *             @OA\Property(property="errors", type="object")
     *         )
     *     ),
     *     @OA\Response(
     *         response=500,
     *         description="Server error",
     *         @OA\JsonContent(
     *             @OA\Property(property="success", type="boolean", example=false),
     *             @OA\Property(property="message", type="string", example="Terjadi kesalahan saat registrasi")
     *         )
     *     )
     * )
     */
    public function register(Request $request): JsonResponse
    {
        try {
            $passwordRules = [
                'required',
                'string',
                'min:8',
                'confirmed',
                'regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$#!%*?&]+$/'
            ];

            $validated = $request->validate([
                'username' => 'required|string|max:255|unique:user,username',
                'name' => 'required|string|max:255',
                'email' => 'required|string|email|max:255|unique:user,email',
                'password' => $passwordRules,
                'role' => 'required|string|in:penulis,pembaca',
                'membership' => 'required|string|in:guest,free,premium'
            ]);

            DB::beginTransaction();

            $user = User::create([
                'username' => $validated['username'],
                'name' => $validated['name'],
                'email' => $validated['email'],
                'password' => Hash::make($validated['password']),
                'role' => $validated['role'],
                'membership' => $validated['membership']
            ]);

            DB::commit();

            $verificationUrl = URL::temporarySignedRoute(
                'verification.verify',
                Carbon::now()->addMinutes(60),
                [
                    'id' => $user->id_user, // sesuaikan dengan primary key Anda
                    'hash' => sha1($user->email),
                ]
            );

            try {
                Mail::to($user->email)->send(new WelcomeMail($user, $verificationUrl));
            } catch (\Exception $e) {
                // Kita gunakan try-catch agar jika email gagal terkirim,
                // user tidak mendapatkan error 500 karena akunnya sendiri sudah berhasil dibuat.
                Log::error("Gagal mengirim email ke {$user->email}: " . $e->getMessage());
            }

            // Response (✅ tampilkan membership dan foto_profil)
            return response()->json([
                'success' => true,
                'message' => 'User berhasil didaftarkan',
                'data' => [
                    'id_user' => $user->id_user,
                    'username' => $user->username,
                    'name' => $user->name,
                    'email' => $user->email,
                    'role' => $user->role,
                    'membership' => $user->membership,
                    'foto_profil' => $user->foto_profil
                ]
            ], 201);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation error',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'Terjadi kesalahan saat registrasi',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // ============================================================
    // Register sederhana (tidak menghapus versi di atas)
    // ============================================================
    public function simpleRegister(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:user,email',
            'password' => 'required|string|min:8|confirmed',
            'role' => 'required|in:penulis,pembaca', // user tidak bisa register admin
            'membership' => 'required|in:guest,free,premium'
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role' => $request->role,
            'membership' => $request->membership
        ]);

        return response()->json([
            'message' => 'Registrasi berhasil',
            'user' => $user
        ], 201);
    }

    /**
     * @OA\Post(
     *     path="/login",
     *     tags={"Authentication"},
     *     summary="Login user",
     *     description="Login user dengan email, password, dan role. Mengembalikan access token untuk autentikasi selanjutnya.",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(
     *             required={"email","password","role"},
     *             @OA\Property(property="email", type="string", format="email", example="john@gmail.com"),
     *             @OA\Property(property="password", type="string", format="password", example="P@ssW0rd3"),
     *             @OA\Property(property="role", type="string", enum={"admin", "penulis", "pembaca"}, example="pembaca")
     *         )
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Login berhasil",
     *         @OA\JsonContent(
     *             @OA\Property(property="message", type="string", example="Login berhasil"),
     *             @OA\Property(property="access_token", type="string", example="1|abc123..."),
     *             @OA\Property(property="token_type", type="string", example="Bearer"),
     *             @OA\Property(property="role", type="string", example="pembaca"),
     *             @OA\Property(property="membership", type="string", example="free"),
     *             @OA\Property(property="foto_profil", type="string", nullable=true, example="profil/1234567890_image.jpg")
     *         )
     *     ),
     *     @OA\Response(
     *         response=401,
     *         description="User not found, make sure you type the correct credentials.",
     *         @OA\JsonContent(
     *             @OA\Property(property="message", type="string", example="User not found, make sure you type the correct credentials.")
     *         )
     *     )
     * )
     */
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|string',
            'role' => 'required|in:admin,penulis,pembaca' // semua role bisa login
        ]);

        $user = User::where('email', $request->email)
            ->where('role', $request->role)
            ->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json(['message' => 'User not found, make sure you type the correct credentials.'], 401);
        }

        if (!$user->hasVerifiedEmail()) {
            return response()->json([
                'success' => false,
                'message' => 'Email Anda belum diverifikasi. Silakan cek inbox email Anda.'
            ], 403); // 403 Forbidden
        }

        Auth::login(user: $user); // Mendaftarkan identitas user ke session server
        $request->session()->regenerate(); // Keamanan: Membuat ID session baru agar tidak bisa dibajak

        $token = $user->createToken('auth_token')->plainTextToken;

        return response()->json([
            'message' => 'Login berhasil',
            'access_token' => $token,
            'token_type' => 'Bearer',
            'role' => $user->role,
            'membership' => $user->membership, // ✅ tampilkan membership saat login
            'foto_profil' => $user->foto_profil // ✅ tampilkan foto_profil saat login
        ]);
    }

    /**
     * @OA\Post(
     * path="/send-otp",
     * summary="Mengirim kode OTP ke email",
     * tags={"Autentikasi"},
     * @OA\RequestBody(
     * required=true,
     * @OA\JsonContent(
     * required={"email"},
     * @OA\Property(property="email", type="string", format="email", example="user@example.com")
     * )
     * ),
     * @OA\Response(
     * response=200,
     * description="OTP berhasil dikirim",
     * @OA\JsonContent(
     * @OA\Property(property="message", type="string", example="OTP telah dikirim ke email Anda.")
     * )
     * ),
     * @OA\Response(
     * response=422,
     * description="Email tidak ditemukan atau format salah"
     * )
     * )
     */
    public function sendOtp(Request $request)
    {
        $request->validate(['email' => 'required|email|exists:user,email']);

        // 1. Cek apakah ada OTP yang dikirim dalam 10 menit terakhir untuk email ini
        $lastOtp = Otp::where('email', $request->email)
            ->where('created_at', '>', now()->subMinutes(10))
            ->first();

        if ($lastOtp) {
            // Hitung berapa menit lagi user harus menunggu
            $secondsRemaining = now()->diffInSeconds($lastOtp->created_at->addMinutes(10));
            $remainingTime = ceil($secondsRemaining / 60);

            return response()->json([
                'message' => "Please wait {$remainingTime} minutes before requesting new OTPs."
            ], 429); // 429 adalah status code untuk Too Many Requests
        }

        // 2. Jika tidak ada OTP aktif (atau sudah lebih dari 10 menit), hapus OTP lama
        Otp::where('email', $request->email)->delete();

        // 3. Generate dan simpan OTP baru
        $otpCode = rand(100000, 999999);
        Otp::create([
            'email' => $request->email,
            'otp' => $otpCode,
            'expires_at' => now()->addMinutes(10),
        ]);

        // 4. Kirim Email
        Mail::to($request->email)->send(new OtpMail($otpCode));

        return response()->json(['message' => 'OTP telah dikirim ke email Anda.']);
    }

    /**
     * @OA\Post(
     * path="/reset-password-otp",
     * summary="Reset Password dengan OTP",
     * description="Mengganti password user menggunakan validasi kode OTP tanpa memerlukan password lama.",
     * tags={"Autentikasi"},
     * @OA\RequestBody(
     * required=true,
     * @OA\JsonContent(
     * required={"email", "otp", "new_password", "new_password_confirmation"},
     * @OA\Property(property="email", type="string", format="email", example="user@example.com"),
     * @OA\Property(property="otp", type="string", example="123456"),
     * @OA\Property(property="new_password", type="string", format="password", minLength=8, example="PasswordBaru123!"),
     * @OA\Property(property="new_password_confirmation", type="string", format="password", example="PasswordBaru123!")
     * )
     * ),
     * @OA\Response(
     * response=200,
     * description="Password berhasil diperbarui",
     * @OA\JsonContent(
     * @OA\Property(property="message", type="string", example="Password berhasil diperbarui. Silakan login kembali.")
     * )
     * ),
     * @OA\Response(
     * response=422,
     * description="OTP tidak valid, kedaluwarsa, atau konfirmasi password tidak cocok",
     * @OA\JsonContent(
     * @OA\Property(property="message", type="string", example="OTP tidak valid atau sudah kedaluwarsa.")
     * )
     * )
     * )
     */
    public function resetPasswordWithOtp(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:user,email',
            'otp' => 'required|string',
            'new_password' => 'required|string|min:8|confirmed', // 'confirmed' akan mencari 'new_password_confirmation'
        ]);

        // 1. Verifikasi OTP
        $otpEntry = Otp::where('email', $request->email)
            ->where('otp', $request->otp)
            ->where('expires_at', '>', now())
            ->first();

        if (!$otpEntry) {
            return response()->json(['message' => 'OTP tidak valid atau sudah kedaluwarsa.'], 422);
        }

        // 2. Cari User dan Update Password
        $user = User::where('email', $request->email)->first();
        $user->update([
            'password' => Hash::make($request->new_password)
        ]);

        // 3. Hapus OTP agar tidak bisa dipakai lagi
        $otpEntry->update(['used_at' => now()]);

        return response()->json(['message' => 'Password berhasil diperbarui. Silakan login kembali.']);
    }

    public function logout(Request $request)
    {
        // 1. Logout dari Guard Web (Stateful)
        Auth::guard('web')->logout();

        // 2. Hancurkan/Invalidasi Session di Server
        $request->session()->invalidate();

        // 3. Buat ulang Token CSRF baru agar token lama tidak bisa dipakai lagi
        $request->session()->regenerateToken();

        return response()->json([
            'message' => 'Berhasil keluar (Logged out)'
        ]);
    }
}
