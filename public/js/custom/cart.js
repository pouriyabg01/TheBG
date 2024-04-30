function addToCart(element){
    const route = element.getAttribute('data-route');
    const csrfToken = element.getAttribute('data-csrf');
    const cartElement = document.querySelectorAll('.cartStatus');
    const cartItemCount = document.querySelectorAll('.cartItemCount');
    const headerCartItemSubTotal = document.getElementById('headerCartItemSubTotal');
    const cartItemSubTotal = document.getElementById('cartItemSubTotal');
    const footerCartItemSubTotal = document.getElementById('footerCartItemSubTotal');

    fetch(route, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': csrfToken
        },
        body: JSON.stringify({})
    })
        .then((response) =>{
            if (response.status === 403)
                if (confirm('You need to be logged in to perform this action. Do you want to go to the login page?'))
                    window.location.href = '/login' + '?backTo=' + window.location.pathname;

            return response.json();
        })
        .then(data => {
            if (data.inCart){
                Swal.fire({
                    position: "top-end",
                    icon: "info",
                    title: "Product already in your cart",
                    showConfirmButton: false,
                    timer: 1500
                });
            }else if (data.added) {
                cartElement.forEach( text => {
                    Swal.fire({
                        position: "top-end",
                        icon: "success",
                        title: "Product added to your cart",
                        showConfirmButton: false,
                        timer: 1500
                    });
                    text.innerHTML = `<i class="ci-cart fs-lg me-2"></i> Product added`;
                })
                // cartElement.innerHTML = `<i class="ci-cart fs-lg me-2"></i> Product added`;
                cartItemCount.forEach(count => {
                    count.textContent = data.cartItemCount;
                });
                headerCartItemSubTotal.innerHTML = `<small>My Cart</small>${data.cartItemSubTotal}`;
                footerCartItemSubTotal.innerText = data.cartItemSubTotal;
                cartItemSubTotal.innerText = data.cartItemSubTotal;
            }

        })
        .catch((error) =>{
            console.log(error)
            alert('something went wrong! refresh the page and try again');
        });
}

function dellItemFromCart(element){
    const route = element.getAttribute('data-route');
    const csrfToken = element.getAttribute('data-csrf');


    fetch(route, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': csrfToken
        },
        body: JSON.stringify({})
    })
        .then((response) =>{
            if (response.status === 403)
                if (confirm('You need to be logged in to perform this action. Do you want to go to the login page?'))
                    window.location.href = '/login?backTo=' + window.location.pathname;

            return response.json();
        })
        .then((data) =>{
            const headerCartItemSubTotal = document.getElementById('headerCartItemSubTotal');
            const footerCartItemSubTotal = document.getElementById('footerCartItemSubTotal');
            const sideBarCartItemSubTotal = document.getElementById('sideBarCartItemSubTotal');

            if (data.removed) {
                if (data.cartItemCount <= 0){
                    window.location.reload();
                }
                let productId;

                const cartElement = document.querySelectorAll('.cartStatus');
                const headerCartItem = document.querySelector('.headerCartItem');
                const pageCartItem = element.closest('.pageCartItem');

                if (headerCartItem){
                    productId = headerCartItem.getAttribute('data-product-id');
                    document.querySelector(`.headerCartItem[data-product-id="${productId}"]`).remove();
                }

                if (pageCartItem){
                    pageCartItem.remove();
                }

                if (cartElement){
                    cartElement.forEach(el => el.innerHTML = `<i class="ci-cart fs-lg me-2"></i> Add to cart`);
                }

                document.querySelectorAll('.cartItemCount').forEach(el => el.textContent = data.cartItemCount);

                if (sideBarCartItemSubTotal) {
                    sideBarCartItemSubTotal.innerText = data.cartItemSubTotal;
                }
                headerCartItemSubTotal.innerHTML = `<small>My Cart</small>${data.cartItemSubTotal}`;
                footerCartItemSubTotal.innerText = data.cartItemSubTotal;
            }
        })
        .catch((error) => {
            console.log(error);
            alert('Could not remove the item from the cart.');
        })
}
document.addEventListener('DOMContentLoaded', function() {
    const removeButtons = document.querySelectorAll('.remove-cart-item');
    removeButtons.forEach(button => {
        button.addEventListener('click', function() {
            dellItemFromCart(this);
        });
    });
});



function dellItemFromCart(element) {
    const route = element.getAttribute('data-route');
    const csrfToken = element.getAttribute('data-csrf');
    const pageCartItem = element.closest('.pageCartItem'); // Find the parent .pageCartItem element

    if (pageCartItem) {
        const productId = pageCartItem.getAttribute('data-product-id');

        fetch(route, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-TOKEN': csrfToken
            },
            body: JSON.stringify({})
        })
            .then(response => {
                if (response.status === 403)
                    if (confirm('You need to be logged in to perform this action. Do you want to go to the login page?'))
                        window.location.href = '/login?backTo=' + window.location.pathname;

                return response.json();
            })
            .then(data => {
                const headerCartItemSubTotal = document.getElementById('headerCartItemSubTotal');
                const footerCartItemSubTotal = document.getElementById('footerCartItemSubTotal');
                const sideBarCartItemSubTotal = document.getElementById('sideBarCartItemSubTotal');

                if (data.removed) {
                    if (data.cartItemCount <= 0) {
                        window.location.reload();
                    }

                    pageCartItem.remove(); // Remove the correct cart item from the UI

                    const cartElement = document.querySelectorAll('.cartStatus');
                    const headerCartItem = document.querySelector(`.headerCartItem[data-product-id="${productId}"]`);

                    if (headerCartItem) {
                        headerCartItem.remove();
                    }

                    if (cartElement) {
                        cartElement.forEach(el => el.innerHTML = `<i class="ci-cart fs-lg me-2"></i> Add to cart`);
                    }

                    document.querySelectorAll('.cartItemCount').forEach(el => el.textContent = data.cartItemCount);

                    if (sideBarCartItemSubTotal) {
                        sideBarCartItemSubTotal.innerText = data.cartItemSubTotal;
                    }
                    headerCartItemSubTotal.innerHTML = `<small>My Cart</small>${data.cartItemSubTotal}`;
                    footerCartItemSubTotal.innerText = data.cartItemSubTotal;
                }
            })
            .catch(error => {
                console.log(error);
                alert('Could not remove the item from the cart.');
            });
    }
}
