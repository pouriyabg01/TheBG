<?php

namespace App\Models;

use App\Models\Products\Product;
use App\Models\Products\ProductCategory;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Brand extends Model
{
    use HasFactory;

    protected $fillable = ['name' , 'slug' , 'status'];

    public function getRouteKeyName()
    {
        return 'name';
    }

    public function products(): hasMany
    {
        return $this->hasMany(Product::class);
    }

    public function categories(): belongsToMany
    {
        return $this->belongsToMany(ProductCategory::class , 'category_brands');
    }

}
