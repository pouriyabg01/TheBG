@extends('shop-layout.app')
@section('main-content')
    @include('shop.section.slider')
    @include('shop.section.products')
    @include('shop.section.banner')
    @include('shop.section.widget')
    @include('shop.section.brands')
    @include('shop.section.blog')
@endsection
