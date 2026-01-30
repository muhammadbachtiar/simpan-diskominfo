## Getting started

Backend Web Desa Kabupaten Muara Enim

Menggunakan Filament

## Modul

-   [x] Berita
-   [x] Menu
-   [x] Sub Menu
-   [x] Berita
-   [x] Pengumuman
-   [x] Pegawai
-   [x] Header
-   [x] Kategori
-   [x] Pariwisata
-   [ ] UMKM
-   [x] Auth
-   [ ] Role
-   [ ] Permission

## Konfigurasi Awal

Install Dependency

```
composer install
```

Migrate Database

```
php artisan migrate
```

Buat Filament User untuk Login (masukkan user, email dan password superadmin)

```
php artisan make:filament-user
```

Tambahkan Storage Link

```
php artisan storage:link
```

Tambahkan API_URL=http://localhost:8001/api/ pada file .env

```
API_URL=http://localhost:8001/api/
```

ENJOYYY!!!

Cara mengakses API pada Backend
URL API

```
http://site-url/api/{URI}
```

Consume API Menggunakan GUZZLE

```
Route::get('/your-url', function () {
    $client = new Client(); //GuzzleHttp\Client
    $url = env('API_URL') . "url/";

    $response = $client->request('GET', $url, [
        'verify'  => false,
    ]);

    $data = json_decode($response->getBody());

    dd($data);
});

```

## API Documentation

-   [x] Berita (Get All Data)

```
http://site-url/api/berita
```

Output JSON

```
[
    {
        "id": 1,
        "judul": "ini judul",
        "path": "KKNAw5zT2GmFmwSCnDhCJfT2JWy1cN-metaSU1HXzY0MjIuanBn-.jpg",
        "kategori_id": 1,
        "user_id": 1,
        "isi": "<p>daskkasdkasd kasdkasdka asdkasdka</p>",
        "tanggal": "2023-04-28",
        "slug": "ini-judul",
        "created_at": "2023-04-28T10:37:34.000000Z",
        "updated_at": "2023-04-28T10:38:01.000000Z",
        "kategori": {
            "id": 1,
            "nama": "teknologi",
            "slug": "teknologi",
            "created_at": "2023-04-28T10:33:47.000000Z",
            "updated_at": "2023-04-28T10:33:47.000000Z"
        }
    }
]
```

-   [x] Berita (Get 1 Slug)

```
http://site-url/api/berita/{slug}
```

Output JSON

```
    {
        "id": 1,
        "judul": "ini judul",
        "path": "KKNAw5zT2GmFmwSCnDhCJfT2JWy1cN-metaSU1HXzY0MjIuanBn-.jpg",
        "kategori_id": 1,
        "user_id": 1,
        "isi": "<p>daskkasdkasd kasdkasdka asdkasdka</p>",
        "tanggal": "2023-04-28",
        "slug": "ini-judul",
        "created_at": "2023-04-28T10:37:34.000000Z",
        "updated_at": "2023-04-28T10:38:01.000000Z",
        "kategori": {
            "id": 1,
            "nama": "teknologi",
            "slug": "teknologi",
            "created_at": "2023-04-28T10:33:47.000000Z",
            "updated_at": "2023-04-28T10:33:47.000000Z"
        }
    }
```

-   [x] Menu

```
http://site-url/api/menu
```

Output JSON

```
[
    {
        "id": 1,
        "parent_id": null,
        "nama_menu": "Profil",
        "keterangan": "<p>sdasdas asdadsa</p>",
        "slug": "profil",
        "status_menu": "Tidak Ada",
        "created_at": "2023-04-28T11:31:48.000000Z",
        "updated_at": "2023-04-28T11:31:48.000000Z"
    },
    {
        "id": 2,
        "parent_id": 1,
        "nama_menu": "Visi",
        "keterangan": "<p>adasd asdasdas</p>",
        "slug": "visi",
        "status_menu": "Ada",
        "created_at": "2023-04-28T11:32:35.000000Z",
        "updated_at": "2023-04-28T11:32:35.000000Z"
    }
]
```

-   [x] Pegawai

```
http://site-url/api/pegawai
```

Output JSON

```
[
    {
        "id": 1,
        "foto": "eByy6on4DgrW12SIdBlQRMN0DusxAc-metaY2FtYXQtbHViYWl1bHUucG5n-.png",
        "nama": "kegiatan",
        "jabatan": "Kepala Desa",
        "slug": "kegiatan",
        "created_at": "2023-04-28T13:59:37.000000Z",
        "updated_at": "2023-04-28T13:59:37.000000Z"
    }
]
```

-   [x] Pegawai (Get 1 Slug)

```
http://site-url/api/pegawai/{slug}
```

Output JSON

```
{
    "id": 1,
    "foto": "eByy6on4DgrW12SIdBlQRMN0DusxAc-metaY2FtYXQtbHViYWl1bHUucG5n-.png",
    "nama": "kegiatan",
    "jabatan": "Kepala Desa",
    "slug": "kegiatan",
    "created_at": "2023-04-28T13:59:37.000000Z",
    "updated_at": "2023-04-28T13:59:37.000000Z"
}
```

-   [x] Pengumuman

```
http://site-url/api/pengumuman
```

Output JSON

```
[
    {
        "id": 1,
        "thumbnail": "wH5K4Hanmdim7bbtvc1G062VGwKfaR-metaSU1HXzY0MjIuanBn-.jpg",
        "judul": "asdasd",
        "isi": "<p>asda asdsad asdas</p>",
        "slug": "asdasd",
        "file": "YDIugdy1ajIKBS6PqUWixA7sRY0iax-metaQXByXzI2XzIwMjMtMDZfMDEueGxzeA==-.xlsx",
        "created_at": "2023-04-28T13:03:53.000000Z",
        "updated_at": "2023-04-28T13:03:53.000000Z"
    },
    {
        "id": 2,
        "thumbnail": "K71Qu623KIFIR1TKbjCZHTMWNRB2ic-metabG9nby5wbmc=-.png",
        "judul": "ini judul 2",
        "isi": "<p>asdsa</p>",
        "slug": "ini-judul-2",
        "file": null,
        "created_at": "2023-04-28T14:19:21.000000Z",
        "updated_at": "2023-04-28T14:19:21.000000Z"
    }
]
```

-   [x] Pegawai (Get 1 Slug)

```
http://site-url/api/pengumuman/{slug}
```

Output JSON

```
{
    "id": 1,
    "thumbnail": "wH5K4Hanmdim7bbtvc1G062VGwKfaR-metaSU1HXzY0MjIuanBn-.jpg",
    "judul": "asdasd",
    "isi": "<p>asda asdsad asdas</p>",
    "slug": "asdasd",
    "file": "YDIugdy1ajIKBS6PqUWixA7sRY0iax-metaQXByXzI2XzIwMjMtMDZfMDEueGxzeA==-.xlsx",
    "created_at": "2023-04-28T13:03:53.000000Z",
    "updated_at": "2023-04-28T13:03:53.000000Z"
}
```

-   [x] Header (get All)

```
http://site-url/api/header
```

Output JSON

```
[
    {
        "id": 1,
        "foto": "11SaxjGugayGCGh8Z98oA8Xk6GgSgy-metaY2FtYXRfdWphbl9tYXMucG5n-.png",
        "keterangan": "<p>asdsdas</p>",
        "created_at": "2023-04-28T14:13:24.000000Z",
        "updated_at": "2023-04-28T14:13:24.000000Z"
    }
]
```

-   [x] Pariwisata (get All)

```
http://site-url/api/pariwisata
```

Output JSON

```
[
    {
    "id": 1,
    "foto": "kqtI9lbSLnfkmXVfM2E6TOIi6q1Urx-metaY2FtYXRfdWphbl9tYXMucG5n-.png",
    "nama_tempat": "bedegung",
    "slug": "bedegung",
    "lokasi": null,
    "long": 103.735,
    "lat": -4.06789,
    "created_at": "2023-04-28T17:51:13.000000Z",
    "updated_at": "2023-04-28T17:51:13.000000Z",
    "location": {
        "lat": -4.06789,
        "lng": 103.735
    }
    }
]
```

-   [x] Pariwisata (Get 1 Slug)

```
http://site-url/api/pariwisata/{slug}
```

Output JSON

```
{
    "id": 1,
    "foto": "kqtI9lbSLnfkmXVfM2E6TOIi6q1Urx-metaY2FtYXRfdWphbl9tYXMucG5n-.png",
    "nama_tempat": "bedegung",
    "slug": "bedegung",
    "lokasi": null,
    "long": 103.735,
    "lat": -4.06789,
    "created_at": "2023-04-28T17:51:13.000000Z",
    "updated_at": "2023-04-28T17:51:13.000000Z",
    "location": {
        "lat": -4.06789,
        "lng": 103.735
    }
}
```

Format Date
```
{{date('j F, Y', strtotime($b->tanggal))}}
```

Limit String
```
{{ Str::limit($b->judul, 20) }}
```

Img source
```
{{ env('API_URL').Storage::url($b->path) }}
```
