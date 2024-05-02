<?php

use App\Http\Controllers\Account\AccountController;
use App\Http\Controllers\Account\AddressController;
use App\Http\Controllers\Account\PaymentController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;


Route::middleware('auth:customer')->prefix('account/payment')->controller(PaymentController::class)->group(function (){
    Route::post('orders' , 'zarinPay')->name('zarin-pay');
});




