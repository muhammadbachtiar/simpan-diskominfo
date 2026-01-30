<?php

use App\Models\Pengumuman;
use GuzzleHttp\Client;
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
    return redirect()->route('filament.auth.login');
});

Route::get('file/download/{record}', function (Pengumuman $record) {
    return Storage::download('public/' . $record->file);
})->name('file.download');

Route::get('berita', function () {
    $client = new Client(); //GuzzleHttp\Client
    $url = env('API_URL') . "berita/";

    $response = $client->request('GET', $url, [
        'verify'  => false,
    ]);

    $berita = json_decode($response->getBody());

    dd($berita[0]->kategori);

    return view('projects.apiwithkey', compact('berita'));

    //akses image
    //<img src="URL::asset($berita->path)" class="rounded-sm" width="100">
});
