<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
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
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <link rel="stylesheet" media="screen" href="{{ asset('vendor/simplebar/dist/simplebar.min.css') }}"/>
    <link rel="stylesheet" media="screen" href="{{ asset('vendor/tiny-slider/dist/tiny-slider.css') }}"/>
    <link rel="stylesheet" media="screen" href="{{ asset('vendor/drift-zoom/dist/drift-basic.min.css') }}"/>
{{--    <link rel="stylesheet" media="screen" href="vendor/lightgallery.js/dist/css/lightgallery.min.css"/>--}}
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="{{ asset('css/theme.min.css') }}">
    <!-- Google Tag Manager-->

{{--      <script src="{{ asset('js/sweetalert2@11') }}"></script>--}}

      <!-- custom css & js file-->
      <script src="{{ asset('js/custom/toggleWishlist.js') }}"></script>
      <script src="{{ asset('js/custom/cart.js') }}"></script>
      <script src="{{ asset('js/custom/review.js') }}"></script>
      <link rel="stylesheet" href="{{ asset('css/custom/style.css') }}">

      <script src="{{ asset('js/custom/sweetalert.js') }}"></script>

  </head>
  <!-- Body-->
  <body class="handheld-toolbar-enabled">
  @include('sweetalert::alert')

  <!-- Google Tag Manager (noscript)-->
    <noscript>
      <iframe src="//www.googletagmanager.com/ns.html?id=GTM-WKV3GT5" height="0" width="0" style="display: none; visibility: hidden;"></iframe>
    </noscript>
    <!-- Sign in / sign up modal-->
    <div class="modal fade" id="signin-modal" tabindex="-1" role="dialog">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header bg-secondary">
            <ul class="nav nav-tabs card-header-tabs" role="tablist">
              <li class="nav-item"><a class="nav-link fw-medium active" href="#signin-tab" data-bs-toggle="tab" role="tab" aria-selected="true"><i class="ci-unlocked me-2 mt-n1"></i>Sign in</a></li>
              <li class="nav-item"><a class="nav-link fw-medium" href="#signup-tab" data-bs-toggle="tab" role="tab" aria-selected="false"><i class="ci-user me-2 mt-n1"></i>Sign up</a></li>
            </ul>
            <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body tab-content py-4">
            <form class="needs-validation tab-pane fade show active" action="{{ route('login') }}" autocomplete="off" novalidate id="signin-tab">
                @csrf
              <div class="mb-3">
                <label class="form-label" for="loginEmail">Email address</label>
                <input class="form-control" type="email" id="loginEmail" placeholder="enter your email" required>
                <div class="invalid-feedback">Please provide a valid email address.</div>
              </div>
              <div class="mb-3">
                <label class="form-label" for="loginPassword">Password</label>
                <div class="password-toggle">
                  <input class="form-control" type="password" id="loginPassword" required>
                  <label class="password-toggle-btn" aria-label="Show/hide password">
                    <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                  </label>
                </div>
              </div>
              <div class="mb-3 d-flex flex-wrap justify-content-between">
                <div class="form-check mb-2">
                  <input class="form-check-input" type="checkbox" id="si-remember">
                  <label class="form-check-label" for="remember">Remember me</label>
                </div><a class="fs-sm" href="#">Forgot password?</a>
              </div>
              <button class="btn btn-primary btn-shadow d-block w-100" type="submit">Sign in</button>
            </form>
            <form class="needs-validation tab-pane fade" autocomplete="off" action="{{ route('register') }}" novalidate id="signup-tab">
                @csrf
              <div class="mb-3">
                <label class="form-label" for="su-name">Full name</label>
                <input class="form-control" type="text" id="su-name" placeholder="John Doe" required>
                <div class="invalid-feedback">Please fill in your name.</div>
              </div>
              <div class="mb-3">
                <label for="su-email">Email address</label>
                <input class="form-control" type="email" id="su-email" placeholder="johndoe@example.com" required>
                <div class="invalid-feedback">Please provide a valid email address.</div>
              </div>
              <div class="mb-3">
                <label class="form-label" for="su-password">Password</label>
                <div class="password-toggle">
                  <input class="form-control" type="password" id="su-password" required>
                  <label class="password-toggle-btn" aria-label="Show/hide password">
                    <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                  </label>
                </div>
              </div>
              <div class="mb-3">
                <label class="form-label" for="su-password-confirm">Confirm password</label>
                <div class="password-toggle">
                  <input class="form-control" type="password" id="su-password-confirm" required>
                  <label class="password-toggle-btn" aria-label="Show/hide password">
                    <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                  </label>
                </div>
              </div>
              <button class="btn btn-primary btn-shadow d-block w-100" type="submit">Sign up</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <main class="page-wrapper">

{{--        @include('shop.modal.product')--}}


      <!-- Navbar Electronics Store-->
        @include('shop-layout.header.header')


        <!-- Page Title-->
        @yield('address-bar')

        <!-- main page wrapper -->
        @yield('main-content')

        <div class="container pb-5 mb-2 mb-md-4">
            <div class="row">
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


            </div>
            @yield('mobile')
        </div>






      <!-- Blog + Instagram info cards-->
        @yield('blog')
    </main>
    <!-- Footer-->
    @include('shop-layout.footer')

    <!-- Toolbar for handheld devices (Default)-->

    <!-- Back To Top Button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon ci-arrow-up">   </i></a>



    <!-- Vendor scrits: js libraries and plugins-->
    <script src="{{ asset('vendor/bootstrap/dist/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('vendor/simplebar/dist/simplebar.min.js') }}"></script>
    <script src="{{ asset('vendor/tiny-slider/dist/min/tiny-slider.js') }}"></script>
    <script src="{{ asset('vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js') }}"></script>
    <script src="{{ asset('vendor/drift-zoom/dist/Drift.min.js') }}"></script>
{{--    <script src="vendor/lightgallery.js/dist/js/lightgallery.min.js"></script>--}}
{{--    <script src="{{ asset('vendor/lg-video.js/dist/lg-video.min.js') }}"></script>--}}
    <!-- Main theme script-->
    <script src="{{ asset('js/theme.min.js') }}"></script>
  </body>
</html>
