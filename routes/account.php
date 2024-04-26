<?php

use App\Http\Controllers\Account\AccountController;
use App\Http\Controllers\Account\AddressController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;


Route::middleware('auth:customer')->prefix('account/')->controller(AccountController::class)->group(function (){
    Route::get('orders' , 'order')->name('account-orders');
    Route::get('wishlist' , 'wishlist')->name('account-wishlist');
});



Route::prefix('account/')->middleware('auth:customer')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});
