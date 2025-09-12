<?php

use App\Http\Controllers\ProfileController;
use App\Models\Products\Product;
use App\Models\Products\ProductComment;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Http\Request;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/





Route::get('/dashboard', function (Request $request) {
    $user = auth('customer')->user();
    dd($user->cart()->detach(3));
});






Route::prefix('account/')->middleware('auth:customer')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';
require __DIR__ . '/home.php';
require __DIR__ . '/shop.php';
require __DIR__ . '/account.php';
require __DIR__ . '/checkout.php';
require __DIR__ . '/ajax.php';
require __DIR__ . '/address.php';
