<?php

use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    $client = new Client(); //GuzzleHttp\Client
    $url = env('API_URL');

    $responseMenu = $client->request('GET', $url . "menu", [
        'verify'  => false,
    ]);
    $menus = json_decode($responseMenu->getBody(), true);

    $responseHeader = $client->request('GET', $url . "header", [
        'verify'  => false,
    ]);
    $header = json_decode($responseHeader->getBody(), true) ?? [];

    $responseBerita = $client->request('GET', $url . "berita?per_page=3", [
        'verify'  => false,
    ]);
    $beritas = json_decode($responseBerita->getBody(), true);

    $responsePegawai = $client->request('GET', $url . "pegawai", [
        'verify'  => false,
    ]);
    $pegawais = json_decode($responsePegawai->getBody(), true);

    return view('pages.home.index')
        ->with('menus', $menus)
        ->with('header', $header)
        ->with('beritas', $beritas['data'])
        ->with('pegawais', $pegawais);
});

Route::get('/tentang', function () {
    return view('pages.profil.about');
});


Route::get('/sejarah', function () {
    return view('pages.profil.sejarah');
});

Route::get('/berita', function (Request $request) {
    $client = new Client(); //GuzzleHttp\Client
    $url = env('API_URL');

    $responseMenu = $client->request('GET', $url . "menu", [
        'verify'  => false,
    ]);
    $menus = json_decode($responseMenu->getBody(), true);

    $responseLatestBerita = $client->request('GET', $url . "berita?per_page=4", [
        'verify'  => false,
    ]);
    $latestBeritas = json_decode($responseLatestBerita->getBody(), true);


    $responseBerita = $client->request('GET', $url . "berita?per_page=6&page=" . $request->query('page'), [
        'verify'  => false,
    ]);
    $beritas = json_decode($responseBerita->getBody(), true);

    return view('pages.berita.index')
        ->with('beritas', $beritas)
        ->with('latestBeritas', $latestBeritas['data'])
        ->with('menus', $menus);
});

Route::get('/berita/{slug?}', function ($slug = null) {
    $client = new Client(); //GuzzleHttp\Client
    $url = env('API_URL');

    $responseMenu = $client->request('GET', $url . "menu", [
        'verify'  => false,
    ]);
    $menus = json_decode($responseMenu->getBody(), true);

    $responseLatestBerita = $client->request('GET', $url . "berita?per_page=4", [
        'verify'  => false,
    ]);
    $latestBeritas = json_decode($responseLatestBerita->getBody(), true);

    $responseKategori = $client->request('GET', $url . "kategori", [
        'verify'  => false,
    ]);
    $kategoris = json_decode($responseKategori->getBody(), true);


    $responseBerita = $client->request('GET', $url . "berita/" . $slug, [
        'verify'  => false,
    ]);
    $berita = json_decode($responseBerita->getBody(), true);

    return view('pages.berita.detail')
        ->with('berita', $berita)
        ->with('latestBeritas', $latestBeritas['data'])
        ->with('kategoris', $kategoris)
        ->with('menus', $menus);
})->name('berita.detail');

Route::get('/umkm', function (Request $request) {
    $client = new Client(); //GuzzleHttp\Client
    $url = env('API_URL');

    $responseMenu = $client->request('GET', $url . "menu", [
        'verify'  => false,
    ]);
    $menus = json_decode($responseMenu->getBody(), true);

    $responseUmkm = $client->request('GET', $url . "umkm?per_page=6&page=" . $request->query('page'), [
        'verify'  => false,
    ]);

    $umkms = json_decode($responseUmkm->getBody(), true);

    return view('pages.umkm.index')
        ->with('umkms', $umkms)
        ->with('menus', $menus);
});

Route::get('/umkm/{slug?}', function ($slug = null) {

    $client = new Client(); //GuzzleHttp\Client
    $url = env('API_URL');

    $responseMenu = $client->request('GET', $url . "menu", [
        'verify'  => false,
    ]);
    $menus = json_decode($responseMenu->getBody(), true);

    $responseLatestBerita = $client->request('GET', $url . "berita?per_page=4", [
        'verify'  => false,
    ]);
    $latestBeritas = json_decode($responseLatestBerita->getBody(), true);

    $responseKategori = $client->request('GET', $url . "kategori", [
        'verify'  => false,
    ]);
    $kategoris = json_decode($responseKategori->getBody(), true);

    $responseUmkm = $client->request('GET', $url . "umkm/" . $slug, [
        'verify'  => false,
    ]);

    $umkm = json_decode($responseUmkm->getBody(), true);

    return view('pages.umkm.detail')
        ->with('umkm', $umkm)
        ->with('latestBeritas', $latestBeritas['data'])
        ->with('kategoris', $kategoris)
        ->with('menus', $menus);
})->name('umkm.detail');

Route::get('/pariwisata', function (Request $request) {
    $client = new Client(); //GuzzleHttp\Client
    $url = env('API_URL');

    $responseMenu = $client->request('GET', $url . "menu", [
        'verify'  => false,
    ]);
    $menus = json_decode($responseMenu->getBody(), true);

    $responsePariwisata = $client->request('GET', $url . "pariwisata?per_page=6&page=" . $request->query('page'), [
        'verify'  => false,
    ]);

    $pariwisatas = json_decode($responsePariwisata->getBody(), true);

    return view('pages.pariwisata.index')
        ->with('pariwisatas', $pariwisatas)
        ->with('menus', $menus);;
});

Route::get('/pariwisata/{slug?}', function ($slug = null) {
    $client = new Client(); //GuzzleHttp\Client
    $url = env('API_URL');

    $responseMenu = $client->request('GET', $url . "menu", [
        'verify'  => false,
    ]);
    $menus = json_decode($responseMenu->getBody(), true);

    $responseLatestBerita = $client->request('GET', $url . "berita?per_page=4", [
        'verify'  => false,
    ]);
    $latestBeritas = json_decode($responseLatestBerita->getBody(), true);

    $responseKategori = $client->request('GET', $url . "kategori", [
        'verify'  => false,
    ]);
    $kategoris = json_decode($responseKategori->getBody(), true);

    $responsePariwisata = $client->request('GET', $url . "pariwisata/" . $slug, [
        'verify'  => false,
    ]);
    $pariwisata = json_decode($responsePariwisata->getBody(), true);

    return view('pages.pariwisata.detail')
        ->with('pariwisata', $pariwisata)
        ->with('latestBeritas', $latestBeritas['data'])
        ->with('kategoris', $kategoris)
        ->with('menus', $menus);
})->name('pariwisata.detail');

Route::get('content/{slug?}', function ($slug = null) {
    $client = new Client(); //GuzzleHttp\Client
    $url = env('API_URL');

    $responseMenu = $client->request('GET', $url . "menu", [
        'verify'  => false,
    ]);
    $menus = json_decode($responseMenu->getBody(), true);

    $responseLatestBerita = $client->request('GET', $url . "berita?per_page=4", [
        'verify'  => false,
    ]);
    $latestBeritas = json_decode($responseLatestBerita->getBody(), true);

    $responseMenu = $client->request('GET', $url . "menu/" . $slug, [
        'verify'  => false,
    ]);
    $menu = json_decode($responseMenu->getBody(), true);

    $responseKategori = $client->request('GET', $url . "kategori", [
        'verify'  => false,
    ]);
    $kategoris = json_decode($responseKategori->getBody(), true);

    return view('pages.content.single')
        ->with('latestBeritas', $latestBeritas['data'])
        ->with('menus', $menus)
        ->with('kategoris', $kategoris)
        ->with('menu', $menu);
})->name('content.single');

Route::get('transparansi', function (Request $request) {
    $client = new Client(); //GuzzleHttp\Client
    $url = env('API_URL');

    $responseMenu = $client->request('GET', $url . "menu", [
        'verify'  => false,
    ]);
    $menus = json_decode($responseMenu->getBody(), true);

    $responseLatestBerita = $client->request('GET', $url . "berita?per_page=4", [
        'verify'  => false,
    ]);
    $latestBeritas = json_decode($responseLatestBerita->getBody(), true);

    $responseMenu = $client->request('GET', $url . "menu/", [
        'verify'  => false,
    ]);
    $menu = json_decode($responseMenu->getBody(), true);

    $responseKategori = $client->request('GET', $url . "kategori", [
        'verify'  => false,
    ]);
    $kategoris = json_decode($responseKategori->getBody(), true);

    $keywordCari = $request->cari ?? request()->q;
    $responseTransparansi = $client->request('GET', $url . "transparansi?q=" . $keywordCari . "&page=" . request()->page, [
        'verify'  => false,
    ]);

    $transparansis = json_decode($responseTransparansi->getBody(), true);

    return view('pages.transparansi.index')
        ->with('latestBeritas', $latestBeritas['data'])
        ->with('menus', $menus)
        ->with('kategoris', $kategoris)
        ->with('menu', $menu)
        ->with('transparansis', $transparansis)
        ->with('cari', $keywordCari);
})->name('transparansi');


Route::get('/berkas', function (Request $request) {
    $client = new Client(); //GuzzleHttp\Client
    $url = env('API_URL');

    $responseMenu = $client->request('GET', $url . "menu", [
        'verify'  => false,
    ]);
    $menus = json_decode($responseMenu->getBody(), true);

    $responseLatestBerita = $client->request('GET', $url . "berita?per_page=4", [
        'verify'  => false,
    ]);
    $latestBeritas = json_decode($responseLatestBerita->getBody(), true);

    $responseMenu = $client->request('GET', $url . "menu/", [
        'verify'  => false,
    ]);
    $menu = json_decode($responseMenu->getBody(), true);

    $responseKategori = $client->request('GET', $url . "kategori", [
        'verify'  => false,
    ]);
    $kategoris = json_decode($responseKategori->getBody(), true);

    $keywordCari = $request->cari ?? request()->q;

    $filter = $request->filter ?? request()->filter;

    $responseBerkas = $client->request('GET', $url . "berkas?q=" . $keywordCari . "&filter=" . $filter . "&page=" . request()->page, [
        'verify'  => false,
    ]);

    $berkas = json_decode($responseBerkas->getBody(), true);

    $responseKategoriBerkas = $client->request('GET', $url . "kategori_berkas", [
        'verify'  => false,
    ]);

    $kategoriBerkas = json_decode($responseKategoriBerkas->getBody(), true);

    return view('pages.berkas.index')
        ->with('latestBeritas', $latestBeritas['data'])
        ->with('menus', $menus)
        ->with('kategoris', $kategoris)
        ->with('menu', $menu)
        ->with('berkas', $berkas)
        ->with('kategoriBerkas', $kategoriBerkas)
        ->with('cari', $keywordCari)
        ->with('filter', $filter);
})->name('berkas');
