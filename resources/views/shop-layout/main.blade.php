<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <meta charset="utf-8">
    <title>{{ config('app.name', 'Laravel') }}</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Cartzilla - Bootstrap E-commerce Template">
    <meta name="keywords" content="bootstrap, shop, e-commerce, market, modern, responsive,  business, mobile, bootstrap, html5, css3, js, gallery, slider, touch, creative, clean">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('apple-touch-icon.png') }}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('32BG.png') }}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('16BG.png') }}">
    {{--    <link rel="manifest" href="site.webmanifest">--}}
    <link rel="mask-icon" color="#fe6a6a" href="{{ asset('safari-pinned-tab.svg') }}">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">
    <!-- Vendor Styles including: Font Icons, Plugins, etc.-->

    <link rel="stylesheet" media="screen" href="{{ asset('vendor/simplebar/dist/simplebar.min.css') }}"/>
    <link rel="stylesheet" media="screen" href="{{ asset('vendor/tiny-slider/dist/tiny-slider.css') }}"/>
    <link rel="stylesheet" media="screen" href="{{ asset('vendor/drift-zoom/dist/drift-basic.min.css') }}"/>
{{--    <link rel="stylesheet" media="screen" href="vendor/lightgallery.js/dist/css/lightgallery.min.css"/>--}}
<!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="{{ asset('css/theme.min.css') }}">
    <!-- Google Tag Manager-->

    <!-- custom css & js file-->
    <script src="{{ asset('js/custom/toggleWishlist.js') }}"></script>
    <link rel="stylesheet" href="{{ asset('css/custom/style.css') }}">

</head>
<!-- Body-->
<body class="handheld-toolbar-enabled">
<!-- Google Tag Manager (noscript)-->
<noscript>
    <iframe src="//www.googletagmanager.com/ns.html?id=GTM-WKV3GT5" height="0" width="0" style="display: none; visibility: hidden;"></iframe>
</noscript>

<main class="page-wrapper">

@yield('shop.modal.product')


<!-- Navbar Electronics Store-->
@yield('shop-layout.header.header')


<!-- Page Title-->
    @yield('address-bar')


{{--    <div class="container pb-5 mb-2 mb-md-4">--}}
{{--        <div class="row">--}}
        @yield('sidebar-before')

        <!-- side bar before section -->



            <!-- content in container row -->
            @yield('container-content')
            <section class="col-lg-8">

                <!-- Steps -->
            @yield('checkout-steps')


            <!-- profile info -->
            @yield('checkout-profile-info')

            <!-- products section -->
                @yield('section-content')

                @yield('profile-content')

                @yield('back-or-proceed')

            </section>

            @yield('sidebar-after')


{{--        </div>--}}
{{--    </div>--}}


    <!-- main page wrapper -->
    @yield('main-content')



<!-- Blog + Instagram info cards-->
    @yield('blog')
</main>
<!-- Footer-->
@yield('shop-layout.footer')
<!-- Toolbar for handheld devices (Default)-->
<div class="handheld-toolbar">
    <div class="d-table table-layout-fixed w-100"><a class="d-table-cell handheld-toolbar-item" href="account-wishlist.html"><span class="handheld-toolbar-icon"><i class="ci-heart"></i></span><span class="handheld-toolbar-label">Wishlist</span></a><a class="d-table-cell handheld-toolbar-item" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" onclick="window.scrollTo(0, 0)"><span class="handheld-toolbar-icon"><i class="ci-menu"></i></span><span class="handheld-toolbar-label">Menu</span></a><a class="d-table-cell handheld-toolbar-item" href="shop-cart.html"><span class="handheld-toolbar-icon"><i class="ci-cart"></i><span class="badge bg-primary rounded-pill ms-1">4</span></span><span class="handheld-toolbar-label">$265.00</span></a></div>
</div>
<!-- Back To Top Button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon ci-arrow-up">   </i></a>
<!-- Vendor scrits: js libraries and plugins-->
<script src="{{ asset('vendor/bootstrap/dist/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('vendor/simplebar/dist/simplebar.min.js') }}"></script>
<script src="{{ asset('vendor/tiny-slider/dist/min/tiny-slider.js') }}"></script>
<script src="{{ asset('vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js') }}"></script>
<script src="{{ asset('vendor/drift-zoom/dist/Drift.min.js') }}"></script>
{{--    <script src="vendor/lightgallery.js/dist/js/lightgallery.min.js"></script>--}}
<script src="{{ asset('vendor/lg-video.js/dist/lg-video.min.js') }}"></script>
<!-- Main theme script-->
<script src="{{ asset('js/theme.min.js') }}"></script>
</body>
</html>
