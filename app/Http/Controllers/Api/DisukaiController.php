<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Disukai;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;

/**
 * @OA\Tag(
 *     name="Disukai",
 *     description="API Endpoints untuk manajemen likes/disukai"
 * )
 */
class DisukaiController extends Controller
{
    /**
     * @OA\Get(
     *     path="/likes",
     *     tags={"Disukai"},
     *     summary="Get all likes",
     *     description="Mengambil semua like/disukai (umum, tidak memerlukan login)",
     *     @OA\Response(
     *         response=200,
     *         description="List semua like",
     *         @OA\JsonContent(type="array", @OA\Items(ref="#/components/schemas/Disukai"))
     *     )
     * )
     */
    public function index(): JsonResponse
    {
        return response()->json(Disukai::all());
    }

    /**
     * @OA\Get(
     *     path="/likes/true",
     *     tags={"Disukai"},
     *     summary="Get all true likes",
     *     description="Mengambil semua data disukai dengan nilai suka = true",
     *     @OA\Response(
     *         response=200,
     *         description="List like dengan suka = true",
     *         @OA\JsonContent(type="array", @OA\Items(ref="#/components/schemas/Disukai"))
     *     )
     * )
     */
    public function getTrueLikes(): JsonResponse
    {
        return response()->json(Disukai::where('suka', true)->get());
    }

    /**
     * @OA\Get(
     *     path="/likes/false",
     *     tags={"Disukai"},
     *     summary="Get all dislike",
     *     description="Mengambil semua data disukai dengan nilai suka = false",
     *     @OA\Response(
     *         response=200,
     *         description="List like dengan suka = false",
     *         @OA\JsonContent(type="array", @OA\Items(ref="#/components/schemas/Disukai"))
     *     )
     * )
     */
    public function getFalseLikes(): JsonResponse
    {
        return response()->json(Disukai::where('suka', false)->get());
    }

    /**
     * @OA\Post(
     *     path="/likes",
     *     tags={"Disukai"},
     *     summary="Create or toggle like",
     *     description="Menambahkan like baru atau update jika sudah ada. Hanya dapat dilakukan oleh user yang sedang login.",
     *     security={{"sanctum":{}}},
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(
     *             required={"id_berita"},
     *             @OA\Property(property="id_berita", type="integer", example=1),
     *             @OA\Property(property="suka", type="boolean", example=true)
     *         )
     *     ),
     *     @OA\Response(response=201, description="Like berhasil dibuat atau diupdate", @OA\JsonContent(ref="#/components/schemas/Disukai")),
     *     @OA\Response(response=401, description="Unauthenticated")
     * )
     */
    public function store(Request $request): JsonResponse
    {
        $user = $request->user();
        if (!$user) {
            return response()->json(['message' => 'Unauthenticated'], 401);
        }

        $request->validate([
            'id_berita' => 'required|integer|exists:berita,id_berita',
            'suka' => 'nullable|boolean'
        ]);

        $like = Disukai::updateOrCreate(
            ['id_user' => $user->id_user, 'id_berita' => $request->id_berita],
            ['suka' => $request->suka ?? true]
        );

        return response()->json($like, 201);
    }

    /**
     * @OA\Put(
     *     path="/likes/{id_disukai}",
     *     tags={"Disukai"},
     *     summary="Update like (only owner)",
     *     description="Mengubah status like/disukai. Hanya user pemilik like yang dapat mengubah.",
     *     security={{"sanctum":{}}},
     *     @OA\Parameter(name="id_disukai", in="path", required=true, @OA\Schema(type="integer", example=1)),
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(required={"suka"}, @OA\Property(property="suka", type="boolean", example=false))
     *     ),
     *     @OA\Response(response=200, description="Like berhasil diupdate", @OA\JsonContent(ref="#/components/schemas/Disukai")),
     *     @OA\Response(response=403, description="Akses ditolak (bukan pemilik like)"),
     *     @OA\Response(response=404, description="Like tidak ditemukan"),
     *     @OA\Response(response=401, description="Unauthenticated")
     * )
     */
    public function update(Request $request, $id_disukai): JsonResponse
    {
        $user = $request->user();
        if (!$user) return response()->json(['message' => 'Unauthenticated'], 401);

        $like = Disukai::find($id_disukai);
        if (!$like) return response()->json(['error' => 'Like tidak ditemukan'], 404);

        if ($like->id_user !== $user->id_user) {
            return response()->json(['message' => 'Akses ditolak, hanya pemilik like yang dapat mengubah'], 403);
        }

        $request->validate(['suka' => 'required|boolean']);
        $like->update(['suka' => $request->suka]);

        return response()->json($like);
    }

    /**
     * @OA\Delete(
     *     path="/likes/{id_disukai}",
     *     tags={"Disukai"},
     *     summary="Delete like (only owner)",
     *     description="Menghapus like/disukai. Hanya user pemilik like yang dapat menghapus.",
     *     security={{"sanctum":{}}},
     *     @OA\Parameter(name="id_disukai", in="path", required=true, @OA\Schema(type="integer", example=1)),
     *     @OA\Response(response=200, description="Like berhasil dihapus", @OA\JsonContent(@OA\Property(property="message", type="string", example="Like berhasil dihapus"))),
     *     @OA\Response(response=403, description="Akses ditolak (bukan pemilik like)"),
     *     @OA\Response(response=404, description="Like tidak ditemukan"),
     *     @OA\Response(response=401, description="Unauthenticated")
     * )
     */
    public function destroy(Request $request, $id_disukai): JsonResponse
    {
        $user = $request->user();
        if (!$user) return response()->json(['message' => 'Unauthenticated'], 401);

        $like = Disukai::find($id_disukai);
        if (!$like) return response()->json(['error' => 'Like tidak ditemukan'], 404);

        if ($like->id_user !== $user->id_user) {
            return response()->json(['message' => 'Akses ditolak, hanya pemilik like yang dapat menghapus'], 403);
        }

        $like->delete();
        return response()->json(['message' => 'Like berhasil dihapus']);
    }
}
