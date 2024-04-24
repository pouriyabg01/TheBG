<?php

namespace App\Http\Controllers\Account;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Order;
use App\Models\Products\Product;
use App\Traits\CartTrait;
use App\Traits\Review;
use App\Traits\WishListTrait;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use RealRashid\SweetAlert\Facades\Alert;

class AccountController extends Controller
{
    use WishListTrait , Review;
    /**
    * @var Customer $customer
     *
    */


    private function customer()
    {
        return Auth::guard('customer')->user();
    }

    public function order()
    {
        $customer = $this->customer();
        $orders = $customer->orders;
        return view('profile.pages.orders' , compact('customer' , 'orders'));
    }

    public function profile()
    {
        return view('profile.pages.profile');
    }

    public function wishlist()
    {
        $customer = $this->customer();
        $wishlist = $customer->wishlist;
        return view('profile.pages.wishlist' , compact('customer' , 'wishlist'));
    }

    public function toggleWishlist(Product $product)
    {
        //wishlist Trait
        return $this->addOrRemoveWishlist($product);
    }


    public function dellWishlist(Product $product)
    {
        //wishlist Trait
        return $this->removeWishlist($product);
    }

    public function rate(Product $product , Request $request)
    {
        return $this->rating($product , $request->input('rate'));
    }

    public function comment(Product $product , Request $request)
    {
        return $this->commenting($product , $request->input('body'));
    }

}
