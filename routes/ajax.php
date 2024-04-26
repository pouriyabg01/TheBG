<?php


use App\Http\Controllers\Account\AccountController;
use App\Http\Controllers\Account\CheckoutController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::post('account/add/{product}/cart' , [CheckoutController::class , 'addCart'])->name('add-cart');
Route::post('account/remove/{product}/cart' , [CheckoutController::class , 'removeFromCart'])->name('remove-cart');

Route::post('account/rete/{product}' , [AccountController::class , 'rate'])->name('rate');
Route::post('account/comment/{product}' , [AccountController::class , 'comment'])->name('comment');


Route::post('account/toggle/{product}/wishlist' , [AccountController::class , 'toggleWishlist'])->name('toggle-wishlist');
Route::post('account/dell/{product}/wishlist' , [AccountController::class , 'dellWishlist'])->name('dell-wishlist');


Route::post('/profile', [ProfileController::class, 'update'])->name('profile.update');
