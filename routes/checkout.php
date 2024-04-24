<?php

use App\Http\Controllers\Account\CheckoutController;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:customer')->prefix('checkout')->controller(CheckoutController::class)->group(function (){
    Route::get('cart' , 'cart')->name('checkout-cart');
    Route::get('detail' , 'detail')->name('checkout-detail');
    Route::get('shipping' , 'shipping')->name('checkout-shipping');
    Route::get('review' , 'review')->name('checkout-review');
    Route::get('payment' , 'payment')->name('checkout-payment');
    Route::get('complete' , 'complete')->name('checkout-complete');
});


