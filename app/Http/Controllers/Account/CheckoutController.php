<?php

namespace App\Http\Controllers\Account;

use App\Models\Products\Product;
use App\Traits\CartTrait;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class CheckoutController extends Controller
{
    use CartTrait;

    public function customer()
    {
        return Auth::guard('customer')->user();
    }
    public function cart()
    {
        $customer = $this->customer();
        $products = $customer->cart;
        return view('profile.pages.shop-cart' , compact('customer' ,'products'));
    }

    public function addCart(Product $product)
    {
        //Cart Trait
        return $this->addToCart($product);
    }

    public function dellCart(Product $product)
    {
        return $this->removeFromCart($product);
    }

    public function detail()
    {
        return view('profile.checkout.detail');
    }

    public function shipping()
    {
        return view('profile.checkout.shipping');
    }

    public function review()
    {
        $customer = auth('customer')->user();
        $cartItem = $customer->cart;
        return view('profile.checkout.review' , compact('cartItem'));
    }

    public function complete()
    {

        return view('profile.checkout.complete');
    }
}
