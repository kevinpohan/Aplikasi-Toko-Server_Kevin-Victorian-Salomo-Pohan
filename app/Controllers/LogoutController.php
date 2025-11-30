<?php

namespace App\Controllers;

use App\Models\MemberTokenModel;

class LogoutController extends BaseController
{
    /**
     * Fungsi untuk memproses logout member.
     * Dipetakan ke POST /logout
     */
    public function logout()
    {
        $modelToken = new MemberTokenModel();

        // 1. Ambil Token dari Header Otorisasi
        // Format: Authorization: Bearer <token>
        $authHeader = $this->request->getHeaderLine('Authorization');

        // Cek apakah header ada dan memiliki format Bearer Token
        if (empty($authHeader) || !preg_match('/Bearer\s(\S+)/', $authHeader, $matches)) {
            return $this->failResponse("Akses ditolak. Token tidak ditemukan.", 401);
        }

        $token = $matches[1]; // Ambil string token-nya

        // 2. Cari dan Hapus token dari database
        // $modelToken->where('auth_key', $token)->delete();
        // Artinya: "HAPUS dari tabel member_token DIMANA auth_key = $token"

        // Cari dulu untuk mendapatkan ID baris token
        $tokenData = $modelToken->where('auth_key', $token)->first();

        if ($tokenData) {
            // Hapus baris token berdasarkan ID-nya
            $modelToken->delete($tokenData['id']);
            return $this->successResponse("Logout berhasil");
        }

        // Jika token tidak ditemukan
        return $this->failResponse("Token tidak valid atau sudah kadaluarsa", 401);
    }
}
