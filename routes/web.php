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




//Route::get('/dashboard', function (Request $request) {
//    dd('asd');
//});
Route::get('/dashboard', function (Request $request) {
    $product = \App\Models\Products\Product::with('specifications.key.type')->find('1');
//    dd($product->groupedSpecByType());
    foreach ($product->groupedSpecByType() as $item => $value){
        echo $item . ":";
        foreach ($value as $spec){
            echo "<br>";
            echo $spec->key->key .'=';
            echo $spec->value;
        }
        echo "<br>";
    }
//    foreach ($product->groupedSpecByTye() as $type => $spec){
//        echo $type.":";
//        foreach ($spec as $ketValue){
//            echo $ketValue->key->key .'-';
//            echo $ketValue->value;
//            echo "<br>";
//        }
//    }
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
