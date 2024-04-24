<section class="container pt-5">
    <!-- Heading-->
    <div class="d-flex flex-wrap justify-content-between align-items-center pt-1 border-bottom pb-4 mb-4">
        <h2 class="h3 mb-0 pt-3 me-2">Trending products</h2>
        <div class="pt-3"><a class="btn btn-outline-accent btn-sm" href="{{ route('shop-grid' , ['order' => 'top-rated']) }}">More products<i class="ci-arrow-right ms-1 me-n1"></i></a></div>
    </div>
    <!-- Grid-->
    <div class="row pt-2 mx-n2">
        <!-- Product-->
        @foreach($products as $product)
            <div class="col-lg-3 col-md-4 col-sm-6 px-2 mb-4">
                <div class="card product-card">
{{--                    Button --}}
{{--                    <div class="product-card-actions d-flex align-items-center"><a class="btn-action nav-link-style me-2" href="#"><i class="ci-compare me-1"></i>Compare</a>--}}
{{--                    </div>--}}
                    <a class="card-img-top d-block overflow-hidden" href="{{ route('product-show' , $product) }}">
                        <img src="{{ $product->thumbnail ? asset($product->thumbnail->first()->name) : asset('img/shop/catalog/65.jpg')}}" alt="Product">
                    </a>
                    <div class="card-body py-2"><a class="product-meta d-block fs-xs pb-1" href="{{ route('product-show' , $product) }}">{{ $product->category->name }}</a>
                        <h3 class="product-title fs-sm"><a href="{{ route('product-show' , $product) }}">{{ $product->title }}</a></h3>
                        <div class="d-flex justify-content-between">
                            <div class="product-price"><span class="text-accent">${{ number_format($product->price , false , false , ',')  }}</span></div>
                            <div class="star-rating">
                                @for ($i = 1; $i <= 5; $i++)
                                    @if ($i <= $product->avgRate())
                                        <i class="star-rating-icon ci-star-filled active"></i> {{-- Full Star --}}
                                    @else
                                        <i class="star-rating-icon ci-star"></i> {{-- Empty Star --}}
                                    @endif
                                @endfor
                            </div>
                        </div>
                    </div>
                    <div class="card-body card-body-hidden">
                        <button class="btn btn-primary btn-sm d-block w-100 mb-2 cartStatus" type="button" onclick="addToCart(this)" data-route="{{ route('add-cart' , $product) }}" data-csrf="{{ csrf_token() }}">
                            <i class="ci-cart fs-sm me-1"></i>{{ auth('customer')->user() ? (auth('customer')->user()->cart->contains($product) ? 'Product added' : 'Add to cart') : 'Add to cart' }}</button>
{{--                        <div class="text-center"><a class="nav-link-style fs-ms" href="#quick-view-electro" data-bs-toggle="modal"><i class="ci-eye align-middle me-1"></i>Quick view</a></div>--}}
{{--                        TODO show product modal quick view--}}
                    </div>
                </div>
                <hr class="d-sm-none">
            </div>
        @endforeach
    </div>
</section>

