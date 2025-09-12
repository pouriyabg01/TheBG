@extends('shop-layout.app')
@section('main-content')
    <!-- Custom page title-->
        <div class="page-title-overlap bg-dark pt-4">
            <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
                <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb breadcrumb-light flex-lg-nowrap justify-content-center justify-content-lg-start">
                            <li class="breadcrumb-item"><a class="text-nowrap" href="{{ route('home') }}"><i class="ci-home"></i>Home</a></li>
                            @foreach($product->category->getAllParents() as $parent)
                                <li class="breadcrumb-item text-nowrap"><a href="{{ route('shop-grid-category' , $parent) }}">{{ $parent->name }}</a></li>
                            @endforeach
                            <li class="breadcrumb-item text-nowrap active" aria-current="page">{{ $product->category->name }}</li>
                        </ol>
                    </nav>
                </div>
                <div class="order-lg-1 pe-lg-4 text-center text-lg-start">
                    <h1 class="h3 text-light mb-2">{{ $product->title }}</h1>
                    <ol class="breadcrumb breadcrumb-light flex-lg-nowrap justify-content-center justify-content-lg-start">
                        <li class="breadcrumb-item"><a class="text-nowrap" href="{{ route('shop-grid-brand' , $product->brand) }}">
                                <i class="ci-store"></i>{{ $product->brand->name }}</a>
                        </li>
                    </ol>
                    <div>
                        <div class="star-rating">
                            @for ($i = 1; $i <= 5; $i++)
                                @if ($i <= $product->avgRate())
                                    <i class="star-rating-icon ci-star-filled active"></i> {{-- Full Star --}}
                                @else
                                    <i class="star-rating-icon ci-star"></i> {{-- Empty Star --}}
                                @endif
                            @endfor
                        </div>
                        <span class="d-inline-block fs-sm text-white opacity-70 align-middle mt-1 ms-1">{{ $product->commenter() }} Reviews</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="bg-light shadow-lg rounded-3">
                <!-- Tabs-->
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item"><a class="nav-link py-4 px-sm-4 active" href="#general" data-bs-toggle="tab" role="tab">General <span class='d-none d-sm-inline'>Info</span></a></li>
                    <li class="nav-item"><a class="nav-link py-4 px-sm-4" href="#specs" data-bs-toggle="tab" role="tab"><span class='d-none d-sm-inline'>Tech</span> Specs</a></li>
                    <li class="nav-item"><a class="nav-link py-4 px-sm-4" href="#reviews" data-bs-toggle="tab" role="tab">Reviews <span class="fs-sm opacity-60">({{ $product->commenter() }})</span></a></li>
                </ul>
                <div class="px-4 pt-lg-3 pb-3 mb-5">
                    <div class="tab-content px-lg-3">
                        <!-- General info tab-->
                        <div class="tab-pane fade show active" id="general" role="tabpanel">
                            <div class="row">
                                <!-- Product gallery-->
                                <div class="col-lg-7 pe-lg-0">
                                    <div class="product-gallery">
                                        <div class="product-gallery-preview order-sm-2">
                                            <!-- Main Image Display -->
                                            @foreach($product->images as $image)
                                                <div class="product-gallery-preview-item{{ $loop->first ? ' active' : '' }}" id="mainImage{{ $loop->iteration }}">
                                                    <img class="image-zoom" src="{{ asset('storage/'.$image->name) }}" data-zoom="{{ asset( $image->name) }}" alt="Product image">
                                                    <div class="image-zoom-pane"></div>
                                                </div>
                                            @endforeach
                                        </div>
                                        <div class="product-gallery-thumblist order-sm-1">
                                            <!-- Thumbnails -->
                                            @foreach($product->images as $image)
                                                <a class="product-gallery-thumblist-item{{ $loop->first ? ' active' : '' }}" href="#mainImage{{ $loop->iteration }}">
                                                    <img src="{{ asset('storage/' . $image->name) }}" alt="Product thumb">
                                                </a>
                                            @endforeach
                                        </div>
                                    </div>

                                </div>
                                <!-- Product details-->
                                <div class="col-lg-5 pt-4 pt-lg-0">
                                    <div class="product-details ms-auto pb-3">
                                        <div class="h3 fw-normal text-accent mb-3 me-1">${{ $product->price }}</div>
                                        <div class="fs-sm mb-4"><span class="text-heading fw-medium me-1">Color:</span><span class="text-muted" id="colorOption">Dark blue/Orange</span></div>
                                        <div class="position-relative me-n4 mb-3">
                                            <div class="form-check form-option form-check-inline mb-2">
                                                <input class="form-check-input" type="radio" name="color" id="color1" data-bs-label="colorOption" value="Dark blue/Orange" checked>
                                                <label class="form-option-label rounded-circle" for="color1"><span class="form-option-color rounded-circle" style="background-color: #f25540;"></span></label>
                                            </div>
                                            <div class="form-check form-option form-check-inline mb-2">
                                                <input class="form-check-input" type="radio" name="color" id="color2" data-bs-label="colorOption" value="Dark blue/Green">
                                                <label class="form-option-label rounded-circle" for="color2"><span class="form-option-color rounded-circle" style="background-color: #65805b;"></span></label>
                                            </div>
                                            <div class="form-check form-option form-check-inline mb-2">
                                                <input class="form-check-input" type="radio" name="color" id="color3" data-bs-label="colorOption" value="Dark blue/White">
                                                <label class="form-option-label rounded-circle" for="color3"><span class="form-option-color rounded-circle" style="background-color: #f5f5f5;"></span></label>
                                            </div>
                                            <div class="form-check form-option form-check-inline mb-2">
                                                <input class="form-check-input" type="radio" name="color" id="color4" data-bs-label="colorOption" value="Dark blue/Black">
                                                <label class="form-option-label rounded-circle" for="color4"><span class="form-option-color rounded-circle" style="background-color: #333;"></span></label>
                                            </div>
                                            @if($product->existence >= '1')
                                                <div class="product-badge product-available mt-n1"><i class="ci-security-check"></i>Product available</div>
                                            @else
                                                <div class="product-badge product-not-available mt-n1"><i class="ci-close-circle"></i>Product not available</div>
                                            @endif
                                        </div>
                                        <div class="d-flex align-items-center pt-2 pb-4">
                                            <button class="btn btn-primary btn-shadow d-block w-100 cartStatus" type="button" onclick="addToCart(this)" data-route="{{ route('add-cart' , $product) }}" data-csrf="{{ csrf_token() }}">
                                                <i class="ci-cart fs-lg me-2"></i>{{ $customer ? ($customer->cart->contains($product) ? 'Product added' : 'Add to cart') : 'Add to cart' }}</button>
                                        </div>
                                        <div class="d-flex mb-4">
                                            <div class="w-100 me-3">
                                                <button class="btn btn-secondary d-block w-100" type="button" onclick="toggleWishlist(this)" data-route="{{ route('toggle-wishlist', $product) }}" data-csrf="{{ csrf_token() }}">
                                                    <i class="wishlistIcon {{ $customer ? ($customer->wishlist->contains($product) ? 'ci-heart-filled' : 'ci-heart') : 'ci-heart'}} fs-lg me-2"></i>
                                                    <span class='d-none d-sm-inline'>Add to Wishlist</span>
                                                    <!-- loading clock rotation css in css/theme.main.css -->
                                                    <!-- js function in js/custom/toggleWishlist.js -->
                                                </button>
                                            </div>
                                            <div class="w-100">
                                                <button class="btn btn-secondary d-block w-100" type="button"><i class="ci-compare fs-lg me-2"></i>
                                                    <a class="text-black" href="{{ route('comparison' , $product) }}">Compare</a>
                                                </button>
                                            </div>
                                        </div>
                                        <!-- Product panels-->
                                        <div class="accordion mb-4" id="productPanels">
                                            <div class="accordion-item">
                                                <h3 class="accordion-header"><a class="accordion-button" href="#shippingOptions" role="button" data-bs-toggle="collapse" aria-expanded="true" aria-controls="shippingOptions"><i class="ci-delivery text-muted lead align-middle mt-n1 me-2"></i>Shipping options</a></h3>
                                                <div class="accordion-collapse collapse show" id="shippingOptions" data-bs-parent="#productPanels">
                                                    <div class="accordion-body fs-sm">
                                                        <div class="d-flex justify-content-between border-bottom pb-2">
                                                            <div>
                                                                <div class="fw-semibold text-dark">Local courier shipping</div>
                                                                <div class="fs-sm text-muted">2 - 4 days</div>
                                                            </div>
                                                            <div>$16.50</div>
                                                        </div>
                                                        <div class="d-flex justify-content-between border-bottom py-2">
                                                            <div>
                                                                <div class="fw-semibold text-dark">UPS ground shipping</div>
                                                                <div class="fs-sm text-muted">4 - 6 days</div>
                                                            </div>
                                                            <div>$19.00</div>
                                                        </div>
                                                        <div class="d-flex justify-content-between pt-2">
                                                            <div>
                                                                <div class="fw-semibold text-dark">Local pickup from store</div>
                                                                <div class="fs-sm text-muted">&mdash;</div>
                                                            </div>
                                                            <div>$0.00</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="accordion-item">
                                                <h3 class="accordion-header"><a class="accordion-button collapsed" href="#localStore" role="button" data-bs-toggle="collapse" aria-expanded="true" aria-controls="localStore"><i class="ci-location text-muted fs-lg align-middle mt-n1 me-2"></i>Find in local store</a></h3>
                                                <div class="accordion-collapse collapse" id="localStore" data-bs-parent="#productPanels">
                                                    <div class="accordion-body">
                                                        <select class="form-select">
                                                            <option value>Select your country</option>
                                                            <option value="Argentina">Argentina</option>
                                                            <option value="Belgium">Belgium</option>
                                                            <option value="France">France</option>
                                                            <option value="Germany">Germany</option>
                                                            <option value="Spain">Spain</option>
                                                            <option value="UK">United Kingdom</option>
                                                            <option value="USA">USA</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Sharing-->
                                        <label class="form-label d-inline-block align-middle my-2 me-3">Share:</label><a class="btn-share btn-twitter me-2 my-2" href="#"><i class="ci-twitter"></i>Twitter</a><a class="btn-share btn-instagram me-2 my-2" href="#"><i class="ci-instagram"></i>Instagram</a><a class="btn-share btn-facebook my-2" href="#"><i class="ci-facebook"></i>Facebook</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Tech specs tab-->
                        <div class="tab-pane fade" id="specs" role="tabpanel">
                            <div class="d-md-flex justify-content-between align-items-start pb-4 mb-4 border-bottom">
                                <div class="d-flex align-items-center me-md-3"><img src="{{ asset($product->images->first() ? 'storage/' . $product->images->first()->name :'ada') }}" width="90" alt="Product thumb">
                                    <div class="ps-3">
                                        <h6 class="fs-base mb-2">Smartwatch Youth Edition</h6>
                                        <div class="h4 fw-normal text-accent">${{ $product->price }}</div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center pt-3">
                                    <select class="form-select me-2" style="width: 5rem;">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                    <button class="btn btn-primary btn-shadow me-2 cartStatus" type="button" onclick="addToCart(this)" data-route="{{ route('add-cart' , $product) }}" data-csrf="{{ csrf_token() }}">
                                        <i class="ci-cart fs-lg me-sm-2"></i><span class="d-none d-sm-inline">{{ $customer ? ($customer->cart->contains($product) ? 'Product added' : 'Add to cart') : 'Add to cart' }}</span></button>
                                    <div class="me-2">
                                        <button class="btn btn-secondary btn-icon" type="button" data-bs-toggle="tooltip" onclick="toggleWishlist(this)" data-route="{{ route('toggle-wishlist', $product) }}" data-csrf="{{ csrf_token() }}" title="Add to Wishlist">
                                            <i class="wishlistIcon {{ $customer ? ($customer->wishlist->contains($product) ? 'ci-heart-filled' : 'ci-heart') : 'ci-heart'}} ci-heart fs-lg me-2"></i>
                                        </button>
                                    </div>
                                    <div>
                                        <button class="btn btn-secondary btn-icon" type="button" data-bs-toggle="tooltip" title="Compare"><i class="ci-compare fs-lg"></i></button>
                                    </div>
                                </div>
                            </div>
                            <!-- Specs table-->
                            <div class="row pt-2">
                                @foreach($specifications->chunk(ceil($specifications->count() / 2)) as $chunk)
                                    <div class="col-lg-5 col-sm-6">
                                        @foreach($chunk as $type => $specs)
                                            <h3 class="h6">{{ ucfirst($type) }}</h3>
                                            <ul class="list-unstyled fs-sm pb-2">
                                                @foreach($specs as $spec)
                                                    <li class="d-flex justify-content-between pb-2 border-bottom">
                                                        <span class="text-muted">{{ $spec->key->key }}:</span>
                                                        <span>{{ $spec->value }}</span>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        @endforeach
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        <!-- Reviews tab-->
                        <div class="tab-pane fade" id="reviews" role="tabpanel">
                            <div class="d-md-flex justify-content-between align-items-start pb-4 mb-4 border-bottom">
                                <div class="d-flex align-items-center me-md-3"><img src="{{ asset($product->images->first() ? 'storage/' . $product->images->first()->name :'ada') }}" width="90" alt="Product thumb">
                                    <div class="ps-3">
                                        <h6 class="fs-base mb-2">Smartwatch Youth Edition</h6>
                                        <div class="h4 fw-normal text-accent">${{ $product->price }}</div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center pt-3">
{{--                                    <select class="form-select me-2" style="width: 5rem;">--}}
{{--                                        <option value="1">1</option>--}}
{{--                                        <option value="2">2</option>--}}
{{--                                        <option value="3">3</option>--}}
{{--                                        <option value="4">4</option>--}}
{{--                                        <option value="5">5</option>--}}
{{--                                    </select>--}}
                                    <button class="btn btn-primary btn-shadow me-2 cartStatus" type="button" onclick="addToCart(this)" data-route="{{ route('add-cart' , $product) }}" data-csrf="{{ csrf_token() }}">
                                        <i class="ci-cart fs-lg me-sm-2"></i><span class="d-none d-sm-inline">{{ $customer ? ($customer->cart->contains($product) ? 'Product added' : 'Add to cart') : 'Add to cart' }}</span></button>
                                    <div class="me-2">
                                        <button class="btn btn-secondary btn-icon" type="button" data-bs-toggle="tooltip" onclick="toggleWishlist(this)" data-route="{{ route('toggle-wishlist', $product) }}" data-csrf="{{ csrf_token() }}" title="Add to Wishlist">
                                            <i class="ci-heart fs-lg wishlistIcon {{ $customer ? ($customer->wishlist->contains($product) ? 'ci-heart-filled' : 'ci-heart') : 'ci-heart'}}"></i>
                                        </button>
                                    </div>
                                    <div>
                                        <button class="btn btn-secondary btn-icon" type="button" data-bs-toggle="tooltip" title="Compare"><i class="ci-compare fs-lg"></i></button>
                                    </div>
                                </div>
                            </div>
                            <!-- Reviews-->
                            <div class="row pt-2 pb-3">
                                <div class="col-lg-4 col-md-5">
                                    <h2 class="h3 mb-4">{{ $product->commenter() }} Reviews</h2>
                                    <div class="star-rating me-2">
                                        @for ($i = 1; $i <= 5; $i++)
                                            @if ($i <= $product->avgRate())
                                                <i class="ci-star-filled fs-sm text-accent me-1"></i> {{-- Full Star --}}
                                            @else
                                                <i class="ci-star fs-sm text-muted me-1"></i> {{-- Empty Star --}}
                                            @endif
                                        @endfor
                                    </div>
                                    <span class="d-inline-block align-middle">{{ number_format($product->rates->avg('rate') , 1) }} Overall rating</span>
                                    <p class="pt-3 fs-sm text-muted">58 out of {{ $product->raters() }} (77%)<br>Customers recommended this product</p>
                                </div>

                                <div class="col-lg-8 col-md-7">
                                    @php
                                        $totalReviews = $product->rates->count();
                                        $starCounts = $product->rates->groupBy('rate')->map->count();
                                        $starColors = [
                                            '5' => '#28a745',
                                            '4' => '#a7e453',
                                            '3' => '#ffda75',
                                            '2' => '#fea569',
                                            '1' => '#dc3545'
                                        ];
                                    @endphp

                                    @for ($star = 5; $star >= 1; $star--)
                                        @php
                                            $count = $starCounts[$star] ?? 0;
                                            $percentage = $totalReviews > 0 ? ($count / $totalReviews) * 100 : 0;
                                        @endphp
                                        <div class="d-flex align-items-center mb-2">
                                            <div class="text-nowrap me-3"><span class="d-inline-block align-middle text-muted">{{ $star }}</span><i class="ci-star-filled fs-xs ms-1"></i></div>
                                            <div class="w-100">
                                                <div class="progress" style="height: 4px;">
                                                    <div class="progress-bar" role="progressbar" style="width: {{ $percentage }}%; background-color: {{ $starColors[$star] }};" aria-valuenow="{{ $percentage }}" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div><span class="text-muted ms-3">{{ $count }}</span>
                                        </div>
                                    @endfor
                                </div>

                            </div>
                            <hr class="mt-4 mb-3">
                            <div class="row py-4">
                                <!-- Reviews list-->
                                <div class="col-md-7">
                                    @if($product->comments()->exists())
                                        <div class="d-flex justify-content-end pb-4">
                                            <div class="d-flex flex-nowrap align-items-center">
                                                <label class="fs-sm text-muted text-nowrap me-2 d-none d-sm-block" for="sort-reviews">Sort by:</label>
                                                <select class="form-select form-select-sm" id="sort-reviews">
                                                    <option>Newest</option>
                                                    <option>Oldest</option>
                                                    <option>Popular</option>
                                                    <option>High rating</option>
                                                    <option>Low rating</option>
                                                </select>
                                            </div>
                                        </div>
                                        @foreach($product->comments as $comment)
                                        <!-- Review-->
                                        <div class="product-review pb-4 mb-4 border-bottom">
                                            <div class="d-flex mb-3">
                                                <div class="d-flex align-items-center me-4 pe-2"><img class="rounded-circle" src="{{ asset('img/shop/reviews/01.jpg') }}" width="50" alt="Rafael Marquez">
                                                    <div class="ps-3">
                                                        <h6 class="fs-sm mb-0">{{ $comment->customer->name }}</h6><span class="fs-ms text-muted">{{ date_format($comment->created_at , 'd - M - Y') }}</span>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="star-rating"><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star"></i>
                                                    </div>
                                                    <div class="fs-ms text-muted">83% of users found this review helpful</div>
                                                </div>
                                            </div>
                                            <p class="fs-md mb-2">{{ $comment->body }}</p>
                                            <ul class="list-unstyled fs-ms pt-1">
    {{--                                            <li class="mb-1"><span class="fw-medium">Pros:&nbsp;</span>Consequuntur magni, voluptatem sequi, tempora</li>--}}
    {{--                                            <li class="mb-1"><span class="fw-medium">Cons:&nbsp;</span>Architecto beatae, quis autem</li>--}}
                                            </ul>
                                            <div class="text-nowrap">
                                                <button class="btn-like" type="button">{{ $comment->like }}</button>
                                                <button class="btn-dislike" type="button">{{ $comment->dislike }}</button>
                                            </div>
                                        </div>
                                        @endforeach
    {{--                                    <div class="text-center">--}}
    {{--                                        <button class="btn btn-outline-accent" type="button"><i class="ci-reload me-2"></i>Load more reviews</button>--}}
    {{--                                    </div>--}}
                                    @else
                                        <div class="text-center">
                                            <h4>Be the first one who commented!</h4>
                                        </div>
                                    @endif
                                </div>
                                <!-- Leave review form-->
                                <div class="col-md-5 mt-2 pt-4 mt-md-0 pt-md-0">
                                    <div class="bg-secondary py-grid-gutter px-grid-gutter rounded-3">
                                        <h3 class="h4 pb-2">give rate this product</h3>
                                            <div class="mb-3">
                                                <label class="form-label" for="review-rating">Rating<span class="text-danger">*</span></label>
                                                <select class="form-select" name="rate" required id="review-rating">
                                                    <option value="">Choose rating</option>
                                                    <option value="5">5 stars</option>
                                                    <option value="4">4 stars</option>
                                                    <option value="3">3 stars</option>
                                                    <option value="2">2 stars</option>
                                                    <option value="1">1 star</option>
                                                </select>
                                                <div class="invalid-feedback">Please choose rating!</div>
                                            </div>
                                            <div class="mb-3">
                                                <button class="btn btn-info form-control" type="button" onclick="review(this , 'rate')" data-csrf="{{ csrf_token() }}" data-route="{{ route('rate' , $product) }}">submit</button>
                                            </div>
                                    </div>
                                <br>
                                <div class="bg-secondary py-grid-gutter px-grid-gutter rounded-3">
                                    <h3 class="h4 pb-2">Write a review</h3>
                                        <div class="mb-3">
                                            <label class="form-label" for="review-text">Review<span class="text-danger">*</span></label>
                                            <textarea class="form-control" rows="6" required name="comment" id="review-text"></textarea>
                                            @if($errors->has('comment'))
                                                <p class="alert-danger alert">{{ $errors->first('comment') }}</p>
                                            @endif
                                            <div class="invalid-feedback">Please write a review!</div><small class="form-text text-muted">Your review must be at least 50 characters.</small>
                                        </div>
                                        <button class="btn btn-primary btn-shadow d-block w-100" onclick="review(this , 'comment')" data-route="{{ route('comment' , $product) }}" data-csrf="{{ csrf_token() }}" type="button">Submit a Review</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product description-->
        <div class="container pt-lg-3 pb-4 pb-sm-5">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    {!! html_entity_decode($product->description) !!}
                </div>
            </div>
        </div>
        <hr class="mb-5">
        <!-- Product carousel (You may also like)-->
        <div class="container pt-lg-2 pb-5 mb-md-3">
            <h2 class="h3 text-center pb-4">You may also like</h2>
            <div class="tns-carousel tns-controls-static tns-controls-outside">
                <div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 2, &quot;controls&quot;: true, &quot;nav&quot;: false, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1},&quot;500&quot;:{&quot;items&quot;:2, &quot;gutter&quot;: 18},&quot;768&quot;:{&quot;items&quot;:3, &quot;gutter&quot;: 20}, &quot;1100&quot;:{&quot;items&quot;:4, &quot;gutter&quot;: 30}}}">
                    <!-- Product-->
                    @foreach($sameCat as $catProduct)
                        <div>
                            <div class="card product-card card-static">
                                <a class="card-img-top d-block overflow-hidden" href="{{ route('product-show' , $catProduct) }}"><img src="{{ $catProduct->images->first() ? asset('storage/' . $catProduct->images->first()->name) : asset('img/shop/product/default.png')}}" alt="Product"></a>
                                <div class="card-body py-2"><a class="product-meta d-block fs-xs pb-1" href="{{ route('product-show' , $catProduct) }}">{{ $catProduct->brand->name }}</a>
                                    <h3 class="product-title fs-sm"><a href="{{ route('product-show' , $catProduct) }}">{{ $catProduct->title }}</a></h3>
                                    <div class="d-flex justify-content-between">
                                        <div class="product-price"><span class="text-accent">${{ $catProduct->price }}</span></div>
                                        <div class="star-rating">
                                            @for ($i = 1; $i <= 5; $i++)
                                                @if ($i <= $catProduct->avgRate())
                                                    <i class="star-rating-icon ci-star-filled active"></i> {{-- Full Star --}}
                                                @else
                                                    <i class="star-rating-icon ci-star"></i> {{-- Empty Star --}}
                                                @endif
                                            @endfor
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!-- Product bundles carousel (Cheaper together)-->
        <div class="container pt-lg-1 pb-5 mb-md-3">
            <div class="card card-body pt-5">
                <h2 class="h3 text-center pb-4">Cheaper together</h2>
                <div class="tns-carousel">
                    <div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 1, &quot;controls&quot;: false, &quot;nav&quot;: true}">
                        <div>
                            <div class="row align-items-center">
                                <div class="col-md-3 col-sm-5">
                                    <div class="card product-card card-static text-center mx-auto" style="max-width: 20rem;"><a class="card-img-top d-block overflow-hidden" href="#"><img src="{{ asset('img/shop/catalog/70.jpg') }}" alt="Product"></a>
                                        <div class="card-body py-2"><span class="d-inline-block bg-secondary fs-ms rounded-1 py-1 px-2 mb-3">Your product</span>
                                            <h3 class="product-title fs-sm"><a href="#">Smartwatch Youth Edition</a></h3>
                                            <div class="product-price text-accent">$124.<small>99</small></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-1 col-sm-2 text-center">
                                    <div class="display-4 fw-light text-muted px-4">+</div>
                                </div>
                                <div class="col-md-3 col-sm-5">
                                    <div class="card product-card card-static text-center mx-auto" style="max-width: 20rem;"><a class="card-img-top d-block overflow-hidden" href="#"><img src="{{ asset('img/shop/catalog/72.jpg') }}" alt="Product"></a>
                                        <div class="card-body py-2"><span class="d-inline-block bg-danger fs-ms text-white rounded-1 py-1 px-2 mb-3">-20%</span>
                                            <h3 class="product-title fs-sm"><a href="#">Smartwatch Wireless Charger</a></h3>
                                            <div class="product-price"><span class="text-accent">$16.<small>00</small></span>
                                                <del class="fs-sm text-muted">$20.<small>00</small></del>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-none d-md-block col-md-1 text-center">
                                    <div class="display-4 fw-light text-muted px-4">=</div>
                                </div>
                                <div class="col-md-4 pt-3 pt-md-0">
                                    <div class="bg-secondary p-4 rounded-3 text-center mx-auto" style="max-width: 20rem;">
                                        <div class="h3 fw-normal text-accent mb-3 me-1">$140.<small>99</small></div>
                                        <button class="btn btn-primary" type="button">Purchase together</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="row align-items-center">
                                <div class="col-md-3 col-sm-5">
                                    <div class="card product-card card-static text-center mx-auto" style="max-width: 20rem;"><a class="card-img-top d-block overflow-hidden" href="#"><img src="img/shop/catalog/70.jpg" alt="Product"></a>
                                        <div class="card-body py-2"><span class="d-inline-block bg-secondary fs-ms rounded-1 py-1 px-2 mb-3">Your product</span>
                                            <h3 class="product-title fs-sm"><a href="#">Smartwatch Youth Edition</a></h3>
                                            <div class="product-price text-accent">$124.<small>99</small></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-1 col-sm-2 text-center">
                                    <div class="display-4 fw-light text-muted px-4">+</div>
                                </div>
                                <div class="col-md-3 col-sm-5">
                                    <div class="card product-card card-static text-center mx-auto" style="max-width: 20rem;"><a class="card-img-top d-block overflow-hidden" href="#"><img src="img/shop/catalog/71.jpg" alt="Product"></a>
                                        <div class="card-body py-2"><span class="d-inline-block bg-danger fs-ms text-white rounded-1 py-1 px-2 mb-3">-15%</span>
                                            <h3 class="product-title fs-sm"><a href="#">Bluetooth Headset Air (White)</a></h3>
                                            <div class="product-price"><span class="text-accent">$59.<small>00</small></span>
                                                <del class="fs-sm text-muted">$69.<small>00</small></del>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-none d-md-block col-md-1 text-center">
                                    <div class="display-4 fw-light text-muted px-4">=</div>
                                </div>
                                <div class="col-md-4 pt-3 pt-md-0">
                                    <div class="bg-secondary p-4 rounded-3 text-center mx-auto" style="max-width: 20rem;">
                                        <div class="h3 fw-normal text-accent mb-3 me-1">$183.<small>99</small></div>
                                        <button class="btn btn-primary" type="button">Purchase together</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection
