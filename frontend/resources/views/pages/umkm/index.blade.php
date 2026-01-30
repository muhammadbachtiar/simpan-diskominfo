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
                        <h5>UMKM Desa</h5>
                        <h2>Majukan Kesejahteraan dengan membeli produk dari UMKM Lokal</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($umkms['data'] as $umkm)
                    <div class="col-xl-4">
                        <div class="tf__activities_item light_blue">
                            <img style="padding-bottom: 35px" src="{{ env('API_STORAGE') . $umkm['foto'] }}" alt="">
                            <h3><a href="{{ route('umkm.detail', $umkm['slug']) }}">{{ $umkm['nama_tempat'] }}</a></h3>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="tf__pagination mt_50" style="padding-bottom: 50px">
                <div class="row">
                    <div class="col-12">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                @for ($i = 1; $i < count($umkms['links']) - 1; $i++)
                                    @if ($umkms['links'][$i]['active'])
                                        <li class="page-item"><a class="page-link active"
                                                href="#">{{ $umkms['links'][$i]['label'] }}</a></li>
                                    @else
                                        <li class="page-item"><a class="page-link"
                                                href="{{ '/umkm?page=' . $umkms['links'][$i]['label'] }}">{{ $umkms['links'][$i]['label'] }}</a>
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
