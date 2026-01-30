<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densityDpi=device-dpi" />

    <title>{{ env('DESA_NAME') }}</title>

    <link rel="icon" type="image/png" href="{{ asset(env('DESA_LOGO')) }}">
    <link rel="stylesheet" href="{{ asset('/assets/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/assets/css/venobox.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/assets/css/animated_barfiller.css') }}">
    <link rel="stylesheet" href="{{ asset('/assets/css/slick.css') }}">
    <link rel="stylesheet" href="{{ asset('/assets/css/animate.css') }}">
    <link rel="stylesheet" href="{{ asset('/assets/css/nice-select.css') }}">

    <link rel="stylesheet" href="{{ asset('/assets/css/spacing.css') }}">
    <link rel="stylesheet" href="{{ asset('/assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('/assets/css/responsive.css') }}">
</head>

<body>
    <!--=================================
        MAIN MENU START
    ==================================-->
    <nav class="navbar navbar-expand-lg main_menu">
        <div class="container">
            <a class="navbar-brand" href="/">
                {{-- TODO: Ganti Logo Desa --}}
                <img src="{{ asset(env('DESA_LOGO')) }}" class="img-fluid w-100">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <i class="far fa-bars menu_icon"></i>
                <i class="far fa-times close_icon"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Beranda</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/berita">Berita</a>
                    </li>
                    @foreach ($menus as $menu)
                        @if ($menu['status_menu'] == 'Tidak Ada')
                            <li class="nav-item">
                                <a class="nav-link"
                                    href="{{ route('content.single', $menu['slug']) }}">{{ $menu['nama_menu'] }}</a>
                            </li>
                        @else
                            @if ($menu['parent_id'] == null)
                                <li class="nav-item">
                                    <a class="nav-link" href="#">{{ $menu['nama_menu'] }}
                                        <i class="far fa-angle-down"></i></a>
                                    <ul class="tf__droap_menu">
                                        @foreach ($menus as $sub_menu)
                                            @if ($sub_menu['parent_id'] == $menu['id'])
                                                <li>
                                                    <a href="{{ route('content.single', $sub_menu['slug']) }}">
                                                        {{ $sub_menu['nama_menu'] }}
                                                    </a>
                                                </li>
                                            @endif
                                        @endforeach
                                    </ul>
                                </li>
                            @endif
                        @endif
                    @endforeach
                    <li class="nav-item">
                        <a class="nav-link" href="/berkas">Berkas</a>
                    </li>
                    {{-- ini kalo mau ada container di tulisannya --}}
                    {{-- <li class="nav-item">
                        <a class="nav-link common_btn" href="#">LEARN MORE</a>
                    </li> --}}
                </ul>
            </div>
        </div>
    </nav>
    <!--=================================
        MAIN MENU END
    ==================================-->

    @yield('content')

    <!--=================================
        FOOTER START
    ==================================-->
    <footer>
        <div class="tf__footer_overlay">
            <div class="container">
                <div class="row">
                    <div style="padding-top: 10px; padding-bottom: 10px">
                        <p style="color: white">Copyright ©{{ env('DESA_NAME') }} 2023</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--=================================
        FOOTER END
    ==================================-->

    <style>
        .float {
            position: fixed;
            width: 60px;
            height: 60px;
            bottom: 10px;
            right: 10px;
            background-color: #25d366;
            color: #FFF;
            border-radius: 50px;
            text-align: center;
            font-size: 30px;
            box-shadow: 2px 2px 3px #999;
            z-index: 100;
        }

        .my-float {
            margin-top: 16px;
        }
    </style>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    {{-- <a href="https://api.whatsapp.com/send/?phone=6281319962002&text=Halo%20Admin,%0ASaya%20mau%20bertanya%20perihal%20..&type=phone_number&app_absent=0"
        class="float" target="_blank">
        <i class="fa fa-whatsapp my-float"></i>
    </a> --}}

    @yield('footer')

    <!--=============================
        SCROLL BUTTON START
    ==============================-->
    <div class="tf__scroll_btn"> go to top </div>
    <!--=============================
        SCROLL BUTTON END
    ==============================-->


    <!--jquery library js-->
    <script src="{{ asset('/assets/js/jquery-3.6.3.min.js') }}"></script>
    <!--bootstrap js-->
    <script src="{{ asset('/assets/js/bootstrap.bundle.min.js') }}"></script>
    <!--font-awesome js-->
    <script src="{{ asset('/assets/js/Font-Awesome.js') }}"></script>
    <!--venobox js-->
    <script src="{{ asset('/assets/js/venobox.min.js') }}"></script>
    <!--slick slider js-->
    <script src="{{ asset('/assets/js/slick.min.js') }}"></script>
    <!--wow js-->
    <script src="{{ asset('/assets/js/wow.min.js') }}"></script>
    <!--counterup js-->
    <script src="{{ asset('/assets/js/jquery.waypoints.min.js') }}"></script>
    <script src="{{ asset('/assets/js/jquery.countup.min.js') }}"></script>
    <!--animated barfiller js-->
    <script src="{{ asset('/assets/js/animated_barfiller.js') }}"></script>
    <!--sticky sidebar js-->
    <script src="{{ asset('/assets/js/sticky_sidebar.js') }}"></script>
    <!--nice select js-->
    <script src="{{ asset('/assets/js/jquery.nice-select.min.js') }}"></script>

    <!--main/custom js-->
    <script src="{{ asset('/assets/js/main.js') }}"></script>

    {{-- Instagram --}}
    <script src="https://apps.elfsight.com/p/platform.js" defer></script>
</body>

</html>
