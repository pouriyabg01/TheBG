@php
    $customer = auth('customer')->user();
    $cartItem = null;
    if ($customer){
        $cartItem = $customer->cart()->exists();
        $cartItem = $customer->cart;
    }
@endphp


<header class="shadow-sm">
    <div class="topbar topbar-dark bg-dark">
        <div class="container">
            <div>
                <div class="topbar-text dropdown disable-autohide"><a class="topbar-link dropdown-toggle" href="#" data-bs-toggle="dropdown"><img class="me-2" src="{{ asset('img/flags/en.png') }}" width="20" alt="English">Eng / $</a>
                    <ul class="dropdown-menu my-1">
                        <li class="dropdown-item">
                            <select class="form-select form-select-sm">
                                <option value="usd">$ USD</option>
                                <option value="eur">€ EUR</option>
                                <option value="ukp">£ UKP</option>
                                <option value="jpy">¥ JPY</option>
                            </select>
                        </li>
                        <li><a class="dropdown-item pb-1" href="#"><img class="me-2" src="{{ asset('img/flags/fr.png') }}" width="20" alt="Français">Français</a></li>
                        <li><a class="dropdown-item pb-1" href="#"><img class="me-2" src="{{ asset('img/flags/de.png') }}" width="20" alt="Deutsch">Deutsch</a></li>
                        <li><a class="dropdown-item" href="#"><img class="me-2" src="{{ asset('img/flags/it.png') }}" width="20" alt="Italiano">Italiano</a></li>
                    </ul>
                </div>
                <div class="topbar-text text-nowrap d-none d-md-inline-block border-start border-light ps-3 ms-3"><span class="text-muted me-1">Available 24/7 at</span><a class="topbar-link" href="tel:00331697720">(00) 33 169 7720</a></div>
            </div>
                <div class="topbar-text dropdown d-md-none ms-auto"><a class="topbar-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Wishlist / Compare / Track</a>
                    <ul class="dropdown-menu dropdown-menu-end">

                        <li><a class="dropdown-item" href="{{ route('account-wishlist') }}" ><i  class="headerWishlistIcon {{ $customer ? ($customer->wishlist()->exists() ? 'ci-heart-filled' : 'ci-heart') : 'ci-heart' }} text-muted me-2"></i>Wishlist ({{ $customer ? $customer->wishlist()->count() : 0 }}) </a></li>
{{--                        <li><a class="dropdown-item" href="{{ route('comparison') }}"><i class="ci-compare text-muted me-2"></i>Compare (3)</a></li>--}}
                        <li><a class="dropdown-item" href="order-tracking.html"><i class="ci-location text-muted me-2"></i>Order tracking</a></li>
                    </ul>
                </div>
                <div class="d-none d-md-block ms-3 text-nowrap">
                    <a class="topbar-link d-none d-md-inline-block" href="{{ route('account-wishlist') }}" id="headerWishlistCount"><i class="headerWishlistIcon {{ $customer ? ($customer->wishlist()->exists() ? 'ci-heart-filled' : 'ci-heart') : 'ci-heart' }} mt-n1"></i>Wishlist ({{ $customer ? $customer->wishlist()->count() : 0 }})</a>
{{--                    <a class="topbar-link ms-3 ps-3 border-start border-light d-none d-md-inline-block" href="{{ route('comparison') }}"><i class="ci-compare mt-n1"></i>Compare (3)</a>--}}
                    <a class="topbar-link ms-3 border-start border-light ps-3 d-none d-md-inline-block" href="order-tracking.html"><i class="ci-location mt-n1"></i>Order tracking</a></div>
        </div>
    </div>
    <!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
    <div class="navbar-sticky bg-light">
        <div class="navbar navbar-expand-lg navbar-light">
            <div class="container"><a class="navbar-brand d-none d-sm-block me-3 flex-shrink-0" href="{{ route('home') }}"><img src="{{ asset('img/rowTheBG.png') }}" width="142" alt="Cartzilla"></a><a class="navbar-brand d-sm-none me-2" href="index.html"><img src="{{ asset('img/logo-icon.png') }}" width="74" alt="Cartzilla"></a>
                <!-- Search-->
                <div class="input-group d-none d-lg-flex flex-nowrap mx-4"><i class="ci-search position-absolute top-50 start-0 translate-middle-y ms-3"></i>
                    <input class="form-control rounded-start w-100" type="text" placeholder="Search for products">
{{--                    <select class="form-select flex-shrink-0" style="width: 10.5rem;">--}}
{{--                        <option>All Categories</option>--}}
{{--                        @foreach($categories as $category)--}}
{{--                            <option>{{ $category->name }}</option>--}}
{{--                        @endforeach--}}
{{--                    </select>--}}
                </div>
                <!-- Toolbar-->
                <div class="navbar-toolbar d-flex flex-shrink-0 align-items-center">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"><span class="navbar-toggler-icon"></span></button><a class="navbar-tool navbar-stuck-toggler" href="#"><span class="navbar-tool-tooltip">Toggle menu</span>
                        <div class="navbar-tool-icon-box"><i class="navbar-tool-icon ci-menu"></i></div></a><a class="navbar-tool ms-1 ms-lg-0 me-n1 me-lg-2" href="#signin-modal" data-bs-toggle="modal">
                        <div class="navbar-tool-icon-box"><i class="navbar-tool-icon ci-user"></i></div>
                        <div class="navbar-tool-text ms-n3">
                            @if(Route::has('login'))
                                @auth('customer')
                                    <small>Hello, {{ $customer->name }}</small>
                                    <a class="text-black" href="{{ route('profile.edit') }}">My Account</a>
                                @else
                                    <a class="text-black" href="{{ route('login') }}">Log In</a>
                                    @if(Route::has('register'))
                                        / <a class="text-red-600" href="{{ route('register') }}">Register</a>
                                    @endif
                                    @endauth
                            @endif
                            </div></a>
                    <div class="navbar-tool dropdown ms-3">

                            <a class="navbar-tool-icon-box bg-secondary dropdown-toggle" href="{{ route('checkout-cart') }}">@auth('customer')<span class="navbar-tool-label cartItemCount">{{ $customer->cartItemCount() }}</span>@endauth
                            <i class="navbar-tool-icon ci-cart"></i></a><a class="navbar-tool-text" id="headerCartItemSubTotal" href="{{ route('checkout-cart') }}" ><small>My Cart</small>@auth('customer'){{ $customer->cartItemSubTotal() }}@endauth</a>
                        <!-- Cart dropdown-->
                        @if($cartItem != null)
                            <div class="dropdown-menu dropdown-menu-end">
                            <div class="widget widget-cart px-3 pt-2 pb-3" style="width: 20rem;">
                                <div style="height: 15rem;" data-simplebar data-simplebar-auto-hide="false">
                                    @foreach($cartItem as $product)
                                        <div class="headerCartItem" data-product-id="{{ $product->id }}">
                                            <div class="widget-cart-item pb-2 border-bottom">
                                            <button class="btn-close text-danger" type="button" aria-label="Remove" onclick="dellItemFromCart(this)" data-route="{{ route('remove-cart', $product) }}" data-csrf="{{ csrf_token() }}"><span aria-hidden="true">&times;</span></button>
                                                <div class="d-flex align-items-center"><a class="d-block flex-shrink-0" href="{{ route('product-show' , $product) }}"><img src="{{ asset('storage/' . $product->thumbnail_url) }}" width="64" alt="Product"></a>
                                                    <div class="ps-2">
                                                        <h6 class="widget-product-title"><a href="{{ route('product-show' , $product) }}">{{ $product->title }}</a></h6>
                                                        <div class="widget-product-meta"><span class="text-accent me-2">{{ $product->price }}</span><span class="text-muted">x {{ $product->pivot->quantity }}</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                                <div class="d-flex flex-wrap justify-content-between align-items-center py-3">
                                    <div class="fs-sm me-2 py-2"><span class="text-muted" >Subtotal:</span>@auth('customer')<span class="text-accent fs-base ms-1" id="cartItemSubTotal">{{ $customer->cartItemSubTotal() }}@endauth</span></div><a class="btn btn-outline-secondary btn-sm" href="{{ route('checkout-cart') }}">Expand cart<i class="ci-arrow-right ms-1 me-n1"></i></a>
                                </div><a class="btn btn-primary btn-sm d-block w-100" href="{{ route('checkout-cart') }}"><i class="ci-card me-2 fs-base align-middle"></i>Checkout</a>
                            </div>
                        </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
        <div class="navbar navbar-expand-lg navbar-light navbar-stuck-menu mt-n2 pt-0 pb-2">
            <div class="container">
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <!-- Search-->
                    <div class="input-group d-lg-none my-3"><i class="ci-search position-absolute top-50 start-0 translate-middle-y ms-3"></i>
                        <input class="form-control rounded-start" type="text" placeholder="Search for products">
                    </div>
                    <!-- Departments menu-->
                    <ul class="navbar-nav navbar-mega-nav pe-lg-2 me-lg-2">
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle ps-lg-0" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside"><i class="ci-menu align-middle mt-n1 me-2"></i>Departments</a>
                            <ul class="dropdown-menu">
                            @foreach($categories as $category)
                                    <li class="dropdown mega-dropdown">
                                        <a class="dropdown-item dropdown-toggle" href="{{ route('shop-grid-category' , $category) }}" data-bs-toggle="dropdown">
                                            <i class="ci-{{ $category->icon }} opacity-60 fs-lg mt-n1 me-2"></i>{{ $category->name }}
                                        </a>
                                        <div class="dropdown-menu p-0">
                                            <div class="d-flex flex-wrap flex-sm-nowrap px-2">
                                            @if($category->child->count() > 0)
                                                <!-- Divide child categories into two chunks -->
                                                    @foreach($category->child->chunk(ceil($category->child->count() / 2)) as $chunk)
                                                        <div class="mega-dropdown-column pt-4 pb-0 py-sm-4 px-3">
                                                            <div class="widget widget-links">
                                                                @foreach($chunk as $child)
                                                                    @if($child->child->count() > 0)
                                                                        <a class="widget-list-link" style="font-weight: bold; font-size: 1.1em;" href="{{ route('shop-grid-category' , $child) }}">
                                                                            {{ $child->name }}▹
                                                                        </a>
                                                                        <ul class="widget-list">
                                                                            @foreach($child->child as $subChild)
                                                                                <li class="widget-list-item">
                                                                                    <a class="widget-list-link" href="{{ route('shop-grid-category' , $subChild) }}">{{ $subChild->name }}</a>
                                                                                </li>
                                                                            @endforeach
                                                                        </ul>
                                                                    @else
                                                                        <ul class="widget-list">
                                                                            <li class="widget-list-item">
                                                                                <a class="widget-list-link" href="{{ route('shop-grid-category' , $child) }}">{{ $child->name }}</a>
                                                                            </li>
                                                                        </ul>
                                                                    @endif
                                                                @endforeach
                                                            </div>
                                                        </div>
                                                @endforeach
                                            @endif
                                            <!-- Column for Marketing Content -->
                                                <div class="mega-dropdown-column d-none d-lg-block py-4 text-center">
                                                    <a class="d-block mb-2" href="#">
                                                        <img src="{{ asset('storage/' . $category->image) }}" alt="{{ $category->name }}">
                                                    </a>
                                                    <div class="fs-sm mb-3">Starting from <span class='fw-medium'>${{ $category->products->min('price')}}</span></div>
                                                    <a class="btn btn-primary btn-shadow btn-sm" href="#">See offers<i class="ci-arrow-right fs-xs ms-1"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                @endforeach
                            </ul>
                        </li>
                    </ul>
                    <!-- Primary menu-->
                    <ul class="navbar-nav">
                        @foreach($navItems as $item => $link)
                        <li class="nav-item dropdown {{ request()->routeIs($link) ? ' active' : '' }}"><a class="nav-link dropdown-toggle" href="{{ route($link) }}">{{ $item }}</a>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
