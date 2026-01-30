@extends('layout.app')
@section('content')
    <!--=================================
                                                            EVENT PAGE START
                                                        ==================================-->
    <section class="tf__event_page mt_190 xs_mt_95">
        <div class="container">
            <div class="row wow fadeInUp" data-wow-duration="1.5s">
                <div class="col-xl-6 col-md-8 col-lg-6 m-auto">
                    <div class="tf__heading_area mb_15">
                        <h5>Berita Terkini</h5>
                        <h2>Dapatkan Informasi Terupdate disini</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($beritas['data'] as $berita)
                    <div class="col-xl-4 wow fadeInUp" data-wow-duration="1.5s">
                        <div class="tf__single_event">
                            <div class="tf__single_event_img">
                                <img src="{{ env('API_STORAGE') . $berita['path'] }}" alt="event"
                                    class="img-fluid w-100">
                                <a class="event_category orange" href="#">{{ $berita['kategori']['nama'] ?? '-' }}</a>
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
            <div class="tf__pagination mt_50" style="padding-bottom: 50px">
                <div class="row">
                    <div class="col-12">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                @for ($i = 1; $i < count($beritas['links']) - 1; $i++)
                                    @if ($beritas['links'][$i]['active'])
                                        <li class="page-item"><a class="page-link active"
                                                href="#">{{ $beritas['links'][$i]['label'] }}</a></li>
                                    @else
                                        <li class="page-item"><a class="page-link"
                                                href="{{ '/berita?page=' . $beritas['links'][$i]['label'] }}">{{ $beritas['links'][$i]['label'] }}</a>
                                        </li>
                                    @endif
                                @endfor
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=================================
                                                            EVENT PAGE END
                                                        ==================================-->
@endsection
