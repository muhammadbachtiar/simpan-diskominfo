@extends('layout.app')
@section('content')
    <!--=================================
                                                                    BLOG DETAILS PAGE START
                                                                ==================================-->
    <section class="tf__blog_details_page mt_195 xs_mt_100" style="padding-bottom:20px">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-lg-8">
                    <div class="tf__blog_details_area">
                        <div class="tf__blog_details_img wow fadeInUp" data-wow-duration="1.5s">
                            <img src="{{ env('API_STORAGE') . $berita['path'] }}" alt="blog details" class="img-fluid w-100">
                        </div>
                        <div class="tf__blog_details_text wow fadeInUp" data-wow-duration="1.5s">
                            <ul class="date d-flex flex-wrap">
                                <li><i class="far fa-user-edit"></i> {{ $berita['penulis']['nama'] ?? '' }}</li>
                                <li><i class="fal fa-calendar-alt"></i> {{ $berita['tanggal'] }}</li>
                            </ul>
                            <h3>{{ $berita['judul'] }}</h3>
                            {{-- {!! $berita['isi'] !!} --}}
                            {!! str_replace('/storage/', env('API_STORAGE'), $berita['isi']) !!}

                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4">
                    <div class="tf__sidebar">
                        <div class="tf__sidebar_blog sidebar_item">
                            <h3>Berita Terkini</h3>
                            <ul>
                                @foreach ($latestBeritas as $latestBerita)
                                    <li>
                                        <div class="img">
                                            <img src="{{ env('API_STORAGE') . $latestBerita['path'] }}" alt="blog"
                                                class="img-fluid w-100">
                                        </div>
                                        <div class="text">
                                            <p><i class="far fa-calendar-alt"></i> {{ $latestBerita['tanggal'] }}</p>
                                            <a
                                                href="{{ route('berita.detail', $latestBerita['slug']) }}">{{ $latestBerita['judul'] }}</a>
                                        </div>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                        <div class="tf__sidebar_category sidebar_item">
                            <h3>Kategori Berita</h3>
                            <ul>
                                @foreach ($kategoris as $kategori)
                                    {{-- pakai span untuk menampilkan jumlah --}}
                                    {{-- <li><a href="#">{{ $kategori['nama'] }} <span>23</span></a></li> --}}
                                    <li><a href="#">{{ $kategori['nama'] }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=================================
                                                                    BLOG DETAILS PAGE END
                                                                ==================================-->
@endsection
