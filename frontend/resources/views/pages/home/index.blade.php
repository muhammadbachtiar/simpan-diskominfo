@extends('layout.app')
@section('content')
    <!--Banner-->
    @if ($header)
        <section class="tf__banner"
            style="background: url({{ env('API_STORAGE') . $header[0]['foto'] }}); filter: brightness(80%); z-index:0;">
            <div class="container" style="z-index=1">
                <div class="row">
                    <div class="col-xl-7 col-lg-8">
                        <div class="tf__banner_text wow fadeInUp" data-wow-duration="1.5s">
                            {!! $header['keterangan'] !!}
                        </div>
                    </div>
                </div>
        </section>
    @endif
    <!--Banner End-->

    <!--Berita-->
    @if (count($beritas) > 0)
        <section class="tf__event mt_95">
            <div class="container">
                <div class="row">
                    <div class="m-auto col-xl-6 col-md-8 col-lg-6 wow fadeInUp" data-wow-duration="1.5s">
                        <div class="tf__heading_area mb_40">
                            <h5>Berita Terkini</h5>
                            <h2>Dapatkan Informasi Terupdate disini</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    @foreach ($beritas as $berita)
                        <div class="col-xl-4 wow fadeInUp" data-wow-duration="1.5s">
                            <div class="tf__single_event">
                                <div class="tf__single_event_img">
                                    <img src="{{ env('API_STORAGE') . $berita['path'] }}" alt="event"
                                        class="img-fluid w-100">
                                    <a class="event_category orange"
                                        href="#">{{ $berita['kategori']['nama'] ?? '-' }}</a>
                                </div>
                                <div class="tf__single_event_text">
                                    <ul>
                                        <li><i class="far fa-user-tie"></i> {{ $berita['penulis']['name'] ?? '-' }}</li>
                                        <li><i class="far fa-calendar"></i> {{ $berita['tanggal'] }}</li>
                                    </ul>
                                    <a class="title"
                                        href="{{ route('berita.detail', $berita['slug']) }}">{{ $berita['judul'] }}</a>
                                    <p>{!! substr(strip_tags($berita['isi']), 0, 150) !!}...
                                    </p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
    @endif
    <!--Berita End-->

    <!--Aparatur-->
    @if (count($pegawais) > 0)
        <section class="tf__team_2 mt_100 pt_95 pb_100">
            <div class="container">
                <div class="row wow fadeInUp" data-wow-duration="1.5s">
                    <div class="m-auto col-xl-6 col-xxl-5 col-md-8 col-lg-6">
                        <div class="tf__heading_area mb_15">
                            <h5>Pegawai Puskesmas</h5>
                            <h2>Melayani dengan Sepenuh Hati</h2>
                        </div>
                    </div>
                </div>
                <div class="row event_slider">
                    @foreach ($pegawais as $pegawai)
                        <div class="col-xl-4 wow fadeInUp" data-wow-duration="1.5s">
                            <div class="tf__single_team">
                                <div class="tf__single_team_img">
                                    <img src="{{ env('API_STORAGE') . $pegawai['foto'] }}" alt="team"
                                        class="img-fluid w-100">
                                </div>
                                <div class="tf__single_team_text">
                                    <a class="title" href="#">{{ $pegawai['nama'] }}</a>
                                    <p>{{ $pegawai['jabatan'] }}</p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
    @endif
    <!--Aparatur Desa End-->
    <!--Gallery-->
    <section class="tf__event mt_95">
        <div class="container">
            <div class="elfsight-app-6f6fbc63-c640-4564-89b3-118384604867"></div>

        </div>
    </section>
    <!--Gallery End-->
@endsection
