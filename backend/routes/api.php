<?php

use App\Models\Berita;
use App\Models\Berkas;
use App\Models\Header;
use App\Models\Kategori;
use App\Models\KategoriBerkas;
use App\Models\Navigation;
use App\Models\Pariwisata;
use App\Models\Pegawai;
use App\Models\Pengumuman;
use App\Models\Transparansi;
use App\Models\Umkm;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::get('/berita', function (Request $request) {
    $data = Berita::with('kategori', 'penulis')->orderBy('tanggal', 'desc')->paginate($request->query('per_page'));

    return response()->json($data, 200);
});

Route::get('/berita/{slug}', function ($slug) {
    $data = Berita::with('kategori')->where('slug', $slug)->first();
    return response()->json($data, 200);
});

Route::get('/menu', function () {
    $data = Navigation::with('children')->get();
    return response()->json($data, 200);
});

Route::get('/menu/{slug}', function ($slug) {
    $data = Navigation::where('slug', $slug)->first();
    return response()->json($data, 200);
});

Route::get('/pegawai', function () {
    $data = Pegawai::all();
    return response()->json($data, 200);
});

Route::get('/pegawai/{slug}', function ($slug) {
    $data = Pegawai::where('slug', $slug)->first();
    return response()->json($data, 200);
});

Route::get('/pengumuman', function () {
    $data = Pengumuman::all();
    return response()->json($data, 200);
});

Route::get('/pengumuman/{slug}', function ($slug) {
    $data = Pengumuman::where('slug', $slug)->first();
    return response()->json($data, 200);
});

Route::get('/header', function () {
    $data = Header::all();

    return response()->json($data, 200);
});

Route::get('/kategori', function () {
    $data = Kategori::all();

    return response()->json($data, 200);
});

Route::get('/pariwisata', function (Request $request) {
    $data = Pariwisata::latest()->paginate($request->query('per_page'));

    return response()->json($data, 200);
});

Route::get('/pariwisata/{slug}', function ($slug) {
    $data = Pariwisata::where('slug', $slug)->first();

    return response()->json($data, 200);
});

Route::get('/umkm', function (Request $request) {
    $data = Umkm::latest()->paginate($request->query('per_page'));

    return response()->json($data, 200);
});

Route::get('/umkm/{slug}', function ($slug) {
    $data = Umkm::where('slug', $slug)->first();

    return response()->json($data, 200);
});

Route::get('/transparansi', function () {
    $data = Transparansi::when(request()->q, function ($tranparansies) {
        $tranparansies = $tranparansies->where('nama', 'like', '%' . request()->q . '%');
    })->latest()->paginate(10);


    return response()->json($data, 200);
});

Route::get('/berkas', function () {

    $data = Berkas::with('kategoriBerkas')->when(request()->q, function ($berkas) {
        return $berkas->where('nama', 'like', '%' . request()->q . '%');
    })->when(request()->filter, function ($berkas) {
        return $berkas->where('kategori_berkas_id', (int)request()->filter);
    })->orderBy('nama', 'asc')->paginate(10);

    return response()->json($data, 200);
});

Route::get('/kategori_berkas', function () {

    $data = KategoriBerkas::all();

    return response()->json($data, 200);
});
