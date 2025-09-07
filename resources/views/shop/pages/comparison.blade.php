@extends('shop-layout.app')

@section('main-content')
    <div class="container py-5 mb-2">
        <div class="table-responsive">
            <table class="table table-bordered table-layout-fixed fs-sm" style="min-width: 45rem;">
                <thead>
                <tr>
                    <th class="align-middle">
                        <select class="form-select" id="compare-criteria" data-filter-trigger>
                            <option value="all">Comparison criteria *</option>
                            <!-- Add other criteria options here -->
                        </select>
                        <div class="form-text">* Choose criteria to filter table below.</div>
                        <div class="pt-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="differences">
                                <label class="form-check-label" for="differences">Show differences only</label>
                            </div>
                        </div>
                    </th>
                    @foreach($products as $product)
                        <th class="text-center px-4 pb-4">
                            <a class="btn btn-sm d-block w-100 text-danger mb-2" href="#"><i class="ci-trash me-1"></i>Remove</a>
                            <a class="d-inline-block mb-3" href="{{ route('product-show', $product) }}">
                                <img src="{{ asset('storage/' . $product->thumbnail->first()->name) }}" width="80" alt="{{ $product->title }}">
                            </a>
                            <h3 class="product-title fs-sm">
                                <a href="{{ route('product-show', $product) }}">{{ $product->title }}</a>
                            </h3>
                            <button class="btn btn-primary btn-sm" type="button">Add to Cart</button>
                        </th>
                    @endforeach
                </tr>
                </thead>{{ //TODO fix table show spec bug }}
                @foreach($specifications as $code => $productsSpecs)
                    @foreach($productsSpecs as $type => $specs)
                        <tbody id="sa" data-filter-target>
                        <tr class="bg-secondary">
                            <th class="text-uppercase text-dark">{{ $type }}</th>
                            @foreach($products as $product)
                                <td class="text-dark fw-medium text-dark">{{ $product->title }}</td>
                            @endforeach
                        </tr>
                        @foreach($specs as $spec)
                            <tr>
                                <th class="text-dark">{{ $spec->key->key }}</th>
                                @foreach($products as $product)
                                    @php
                                        $specValue = $specifications[$product->code][$type]->firstWhere('key_id', $spec->key_id)->value ?? 'N/A';
                                    @endphp
                                    <td>{{ $specValue }}</td>
                                @endforeach
                            </tr>
                        @endforeach
                        </tbody>
                    @endforeach
                @endforeach
            </table>
        </div>
    </div>
@endsection
