<?php

namespace App\Models\Products;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class ProductSpecificationType extends Model
{
    use HasFactory;

    protected $fillable = ['product_category_id' , 'type'];


    public function category()
    {
        return $this->belongsTo(ProductCategory::class, 'product_category_id');
    }

    public function keys(): hasMany
    {
        return $this->hasMany(ProductSpecificationKey::class , 'spec_type_id');
    }
}
