<?php

namespace App\Traits;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

trait Review
{
    public function rating($product , $rate)
    {
        $customer = auth('customer')->user();
        if (!$customer){
            return response()->json(['success' , false] , 403);
        }
        if ($customer->rates->contains($product)){
            $alert = "you have been already rate this product";
        } else {
            $customer->rates()->create([
                'rate' => $rate,
                'product_id' => $product->id
            ]);
            $alert = "thanks for your rating";
        }
        return response()->json(['message' => $alert]);
    }

    public function commenting($product , $comment)
    {
        $customer = auth('customer')->user();
        if (!$customer){
            return response()->json(['success' , false] , 403);
        }

        if ($product && $comment) {
            $customer->comments()->create([
                'body' => $comment,
                'product_id' => $product->id
            ]);
            $alert = "your comment publish after checking our standard";
        }elseif (!$comment){
            $alert = "comment field required";
        }

        return response()->json(['message' => $alert]);
    }
}
