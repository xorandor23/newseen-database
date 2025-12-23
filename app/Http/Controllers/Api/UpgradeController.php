<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Token;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Auth;

/**
 * @OA\Tag(
 *     name="Upgrade",
 *     description="API Endpoints untuk upgrade membership user"
 * )
 */
class UpgradeController extends Controller
{
    /**
     * @OA\Post(
     *     path="/upgrade",
     *     tags={"Upgrade"},
     *     summary="Upgrade user membership to premium",
     *     description="Upgrade membership user menjadi premium dengan token yang didapat dari transaksi pembayaran.",
     *     security={{"sanctum":{}}},
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(
     *             required={"token"},
     *             @OA\Property(property="token", type="string", example="UPGRADE_1_1699234200_1234", description="Token premium yang valid dari transaksi pembayaran")
     *         )
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Upgrade berhasil",
     *         @OA\JsonContent(
     *             @OA\Property(property="success", type="boolean", example=true),
     *             @OA\Property(property="message", type="string", example="Membership berhasil diupgrade ke premium"),
     *             @OA\Property(
     *                 property="data",
     *                 type="object",
     *                 @OA\Property(property="id_user", type="integer", example=1),
     *                 @OA\Property(property="membership", type="string", example="premium")
     *             )
     *         )
     *     ),
     *     @OA\Response(
     *         response=400,
     *         description="Token tidak valid atau user sudah premium",
     *         @OA\JsonContent(
     *             @OA\Property(property="success", type="boolean", example=false),
     *             @OA\Property(property="message", type="string", example="Token tidak valid atau sudah digunakan")
     *         )
     *     ),
     *     @OA\Response(
     *         response=401,
     *         description="Unauthorized",
     *         @OA\JsonContent(
     *             @OA\Property(property="success", type="boolean", example=false),
     *             @OA\Property(property="message", type="string", example="Unauthorized")
     *         )
     *     )
     * )
     */
    public function upgrade(Request $request): JsonResponse
    {
        $user = Auth::user();
        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'Unauthorized'
            ], 401);
        }

        $request->validate([
            'token' => 'required|string'
        ]);

        // Validasi token di DB
        $token = Token::where('token', $request->token)
                      ->where('id_user', $user->id_user)
                      ->where('status', 'unused')
                      ->first();

        if (!$token) {
            return response()->json([
                'success' => false,
                'message' => 'Token tidak valid atau sudah digunakan'
            ], 400);
        }

        if ($user->membership === 'premium') {
            return response()->json([
                'success' => false,
                'message' => 'User sudah memiliki membership premium'
            ], 400);
        }

        // Tandai token sebagai sudah digunakan
        $token->status = 'used';
        $token->save();

        // Upgrade membership
        $user->membership = 'premium';
        $user->save();

        return response()->json([
            'success' => true,
            'message' => 'Membership berhasil diupgrade ke premium',
            'data' => [
                'id_user' => $user->id_user,
                'membership' => $user->membership
            ]
        ], 200);
    }
}
