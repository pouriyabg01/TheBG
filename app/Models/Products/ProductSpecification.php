<?php

namespace App\Models\Products;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class ProductSpecification extends Model
{
    use HasFactory;

    protected $fillable = ['product_id' , 'product_specification_key_id' , 'value'];

    public function product(): belongsTo
    {
        return $this->belongsTo(Product::class);
    }

    public function key(): belongsTo
    {
        return $this->belongsTo(ProductSpecificationKey::class, 'key_id');
    }

}
