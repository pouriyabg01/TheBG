<?php


use App\Http\Controllers\HomeController;
use App\Http\Controllers\ShopController;
use Illuminate\Support\Facades\Route;


Route::controller(ShopController::class)->group(function () {
    Route::get('/shop/products' , 'grid')->name('shop-grid');
    Route::get('/product/{product}' , 'show')->name('product-show');
//    Route::get('/compare' , 'compare')->name('comparison');
    Route::get('/compare/{codes}' , 'compare')->where('codes' , '.*')->name('comparison');
    Route::get('/about-us' , 'about')->name('about');
});

