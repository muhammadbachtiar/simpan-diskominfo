@extends('layout.app')
@section('content')
    <!--=================================
                            BLOG PAGE START
                        ==================================-->
    <section class="tf__blog_page mt_190 xs_mt_95" style="padding-bottom:20px">
        <div class="container">
            <div class="row wow fadeInUp" data-wow-duration="1.5s">
                <div class="col-xl-6 col-md-8 col-lg-6 m-auto">
                    <div class="tf__heading_area mb_15">
                        <h5>Pariwisata</h5>
                        <h2>Kunjungi Lokasi Bersejarah untuk mengenal desa kami lebih lanjut</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($pariwisatas['data'] as $pariwisata)
                    <div class="col-xl-4 wow fadeInUp" data-wow-duration="1.5s">
                        <div class="tf__single_blog">
                            <a class="tf__single_blog_img" href="#">
                                <img src="{{ env('API_STORAGE') . $pariwisata['foto'] }}" alt="blog"
                                    class="img-fluid w-100">
                            </a>
                            <div class="tf__single_blog_text">
                                <a class="title"
                                    href="{{ route('pariwisata.detail', $pariwisata['slug']) }}">{{ $pariwisata['nama_tempat'] }}</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="tf__pagination mt_50">
                <div class="row">
                    <div class="col-12">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                @for ($i = 1; $i < count($pariwisatas['links']) - 1; $i++)
                                    @if ($pariwisatas['links'][$i]['active'])
                                        <li class="page-item"><a class="page-link active"
                                                href="#">{{ $pariwisatas['links'][$i]['label'] }}</a></li>
                                    @else
                                        <li class="page-item"><a class="page-link"
                                                href="{{ '/pariwisata?page=' . $pariwisatas['links'][$i]['label'] }}">{{ $pariwisatas['links'][$i]['label'] }}</a>
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
                            BLOG PAGE END
                        ==================================-->
@endsection
