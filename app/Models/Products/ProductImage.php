<?php

namespace App\Models\Products;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class ProductImage extends Model
{
    use HasFactory;

    protected $fillable = ['name' , 'type' , 'product_id'];

    protected static function boot()
    {
        parent::boot();

        static::deleted(function (ProductImage $image) {
            Storage::disk('public')->delete($image->name);
        });

        static::updated(function (ProductImage $image) {
            //TODO delete file after update
        });
    }
}
