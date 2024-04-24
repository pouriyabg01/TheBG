@php
    $routes = ['checkout-cart', 'checkout-detail', 'checkout-shipping', 'checkout-payment', 'checkout-review']; // Your route names in order
    $currentRouteName = Route::currentRouteName();
    $currentIndex = array_search($currentRouteName, $routes);
@endphp

<div class="steps steps-light pt-2 pb-3 mb-5">
    @foreach ($routes as $index => $routeName)
        @php
            $class = '';
            if ($index < $currentIndex) {
                $class = 'active'; // Previous steps
            } elseif ($index === $currentIndex) {
                $class = 'active current'; // Current step
            }
        @endphp

        <a class="step-item {{ $class }}" href="{{ route($routeName) }}">
            <div class="step-progress"><span class="step-count">{{ $index + 1 }}</span></div>
            <div class="step-label">
                <i class="{{ $index === 0 ? 'ci-cart' : ($index === 1 ? 'ci-user-circle' : ($index === 2 ? 'ci-package' : ($index === 3 ? 'ci-card' : 'ci-check-circle'))) }}"></i>
                {{ $index === 0 ? 'Cart' : ($index === 1 ? 'Details' : ($index === 2 ? 'Shipping' : ($index === 3 ? 'Payment' : 'Review'))) }}
            </div>
        </a>
    @endforeach
</div>
