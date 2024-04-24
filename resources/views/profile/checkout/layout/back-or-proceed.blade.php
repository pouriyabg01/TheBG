@php
    $nextStep = trim($__env->yieldContent('checkout-next-route')); // Trim is used to ensure no unexpected whitespace
    $prevStep = trim($__env->yieldContent('checkout-prev-route')); // Trim is used to ensure no unexpected whitespace
@endphp
<div class="d-none d-lg-flex pt-4">
    <div class="w-50 pe-3"><a class="btn btn-secondary d-block w-100" href="{{ route('checkout-' . $prevStep) }}"><i class="ci-arrow-left mt-sm-0 me-1"></i><span class="d-none d-sm-inline">Back to {{ $prevStep }}</span><span class="d-inline d-sm-none">Back</span></a></div>
    <div class="w-50 ps-2"><a class="btn btn-primary d-block w-100" href="{{ route('checkout-' . $nextStep) }}"><span class="d-none d-sm-inline">Proceed to {{ $nextStep }}</span><span class="d-inline d-sm-none">Next</span><i class="ci-arrow-right mt-sm-0 ms-1"></i></a></div>
</div>
