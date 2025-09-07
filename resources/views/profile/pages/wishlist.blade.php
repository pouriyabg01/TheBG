@extends('shop-layout.app')
@section('address1' , 'Account')
@section('address2' , 'wishlist')
@section('address3' , 'My Wishlist')
@section('address-bar' , View::make('shop-layout.address-bar'))
@section('sidebar-before')
    @include('profile.layout.sidebar' , ['customer' => $customer])
@endsection
@section('section-content')
<!-- Toolbar-->
<div class="d-none d-lg-flex justify-content-between align-items-center pt-lg-3 pb-4 pb-lg-5 mb-lg-3">
    <h6 class="fs-base text-light mb-0">List of your wishlist product:</h6>
    <form action="{{ route('logout') }}" method="POST" style="display: inline;">
        @csrf
        <button type="submit" class="btn btn-primary btn-sm">
            <i class="ci-sign-out me-2"></i>{{ __('Log Out') }}
        </button>
    </form>
</div>
<!-- no Wishlist-->
<h2 class="text-dark mb-0" style="display: none" id="emptyWishlistMessage">You have no wishlist product yet!</h2>
<!-- Item-->
@foreach($wishlist as $product)
    <div class="wishlist-item">
        <div class="d-sm-flex justify-content-between mt-lg-4 mb-4 pb-3 pb-sm-2 border-bottom">
            <div class="d-block d-sm-flex align-items-start text-center text-sm-start">
                <a class="d-block flex-shrink-0 mx-auto me-sm-4" href="{{ route('product-show' , $product) }}" style="width: 10rem;">
                    <img src="{{ asset('storage/' . $product->thumbnail->first()->name) }}" alt="Product">
                </a>
                <div class="pt-2">
                    <h3 class="product-title fs-base mb-2"><a href="{{ route('product-show' , $product) }}">{{ $product->title }}</a></h3>
                    <div class="fs-sm"><span class="text-muted me-2">Brand:</span>{{ $product->title }}</div>
                    <div class="fs-sm"><span class="text-muted me-2">Color:</span>Khaki</div>
                    <div class="fs-lg text-accent pt-2">{{ $product->price }}</div>
                </div>
            </div>
            <div class="pt-2 ps-sm-3 mx-auto mx-sm-0 text-center">
                <button class="btn btn-outline-danger btn-sm remove-from-wishlist" type="button" data-route="{{ route('dell-wishlist', $product) }}" data-product-id="{{ $product->id }}" data-csrf="{{ csrf_token() }}">
                    <i class="ci-trash me-2"></i>Remove
                </button>
            </div>
        </div>
    </div>
@endforeach

@endsection
