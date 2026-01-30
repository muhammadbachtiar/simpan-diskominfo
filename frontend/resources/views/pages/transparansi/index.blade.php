@extends('layout.app')
@section('content')
    <!--=================================
                                                                                                                                                                                        BLOG DETAILS PAGE START
                                                                                                                                                                                    ==================================-->
    <section class="tf__blog_details_page mt_195 xs_mt_100" style="padding-bottom:20px">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-lg-8">
                    <div class="tf__blog_details_area" style="padding-top: 25px">
                        <div class="tf__blog_details_text wow fadeInUp" data-wow-duration="1.5s">
                            <h2>Transparansi</h2>
                            <div style="padding-bottom: 20px"></div>
                            @if (count($transparansis['data']) > 0)
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Nama Informasi Transparansi</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($transparansis['data'] as $transparansi)
                                            <tr>
                                                <td>{{ $transparansi['nama'] }}</td>
                                                <td><a href="{{ env('API_STORAGE') . $transparansi['path'] }}">Download</a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>

                                <div class="tf__pagination mt_50" style="padding-bottom: 50px">
                                    <div class="row">
                                        <div class="col-12">
                                            <nav aria-label="Page navigation example">
                                                <ul class="pagination">
                                                    @for ($i = 1; $i < count($transparansis['links']) - 1; $i++)
                                                        @if ($transparansis['links'][$i]['active'])
                                                            <li class="page-item"><a class="page-link active"
                                                                    href="#">{{ $transparansis['links'][$i]['label'] }}</a>
                                                            </li>
                                                        @else
                                                            <li class="page-item"><a class="page-link"
                                                                    href="{{ '/transparansi?q=' . $cari . '&page=' . $transparansis['links'][$i]['label'] }}">{{ $transparansis['links'][$i]['label'] }}</a>
                                                            </li>
                                                        @endif
                                                    @endfor
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            @else
                                <center style="padding-top: 100px">
                                    <h3>Tidak ada Data</h3>
                                </center>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4">
                    <div class="tf__sidebar">
                        <div class="tf__sidebar_category sidebar_item">
                            <h3>Cari Transparansi</h3>
                            <div class="search_widget relative-position">
                                <form action="{{ route('transparansi') }}">
                                    <div class="row" style="padding-bottom: 20px">
                                        <div class="col-md-9">
                                            <input class="form-input" name="cari" id="cari" type="search"
                                                placeholder="Masukkan Kata Kunci"
                                                @isset($cari) value="{{ $cari }}" @endisset>
                                        </div>
                                        <div class="col-md-2">
                                            <center>
                                                <button class="btn btn-warning" style="color: white"
                                                    type="submit">Cari</button>
                                            </center>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
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
