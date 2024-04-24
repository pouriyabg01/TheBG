<?php

namespace App\Rules;

use App\Models\Products\Product;
use Illuminate\Contracts\Validation\Rule;

class UniqueThumbnailPerProduct implements Rule
{
    protected $product;

    public function __construct(Product $product)
    {
        $this->product = $product;
    }


    public function passes($attribute, $value)
    {
        if ($value === 'thumbnail') {
            return !$this->product->thumbnail()->exists();
        }
        return true;
    }

    public function message()
    {
        return "The product already has a thumbnail image.";
    }
}
