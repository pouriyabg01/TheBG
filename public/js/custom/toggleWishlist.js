// toggleWishlist.js
function toggleWishlist(element) {
    const route = element.getAttribute('data-route');
    const csrfToken = element.getAttribute('data-csrf');
    const wishlistIcon = document.querySelectorAll('.wishlistIcon');
    const headerWishlistIcon = document.querySelectorAll('.headerWishlistIcon');

    wishlistIcon.forEach(icon => {
        icon.classList.remove('ci-heart', 'ci-heart-filled');
        icon.classList.add('ci-loading', 'loading-rotation');
    });


    fetch(route, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': csrfToken
        },
        body: JSON.stringify({})
    })
        .then((response) => {

            if (response.ok !== true)
                Swal.fire({
                    position: "top-end",
                    text: "something went wrong please try again later",
                    showConfirmButton: false,
                    timer: 2500
                });

            if (response.status === 403)
                if (confirm('You need to be logged in to perform this action. Do you want to go to the login page?'))
                    window.location.href = '/login?backTo=' + window.location.pathname;// Redirect to login

            return response.json();
        })
        .then(data => {
            wishlistIcon.forEach(icon => {
                icon.classList.remove('ci-loading', 'loading-rotation');
            });
            headerWishlistIcon.forEach(icon => {
                icon.classList.remove('ci-heart', 'ci-heart-filled');
            });
            if (data.isInWishlist === true){
                wishlistIcon.forEach(icon => {
                    icon.classList.add('ci-heart-filled');
                });
            }else{
                wishlistIcon.forEach(icon => {
                    icon.classList.add('ci-heart');
                });
            }

            if (data.wishlistCount >= 1) {
                headerWishlistIcon.forEach(icon => {
                    icon.classList.add('ci-heart-filled');
                });
            }else{
                headerWishlistIcon.forEach(icon => {
                    icon.classList.add('ci-heart');
                });
            }

            updateWishlist(data.wishlistCount)
        })
        .catch((error) => {
            wishlistIcon.forEach(icon => {
                icon.classList.remove('ci-loading', 'loading-rotation');
                icon.classList.add('ci-heart');
            });
        });
}

function updateWishlist(count) {
    const countElement = document.getElementById('headerWishlistCount');

    const iconClass = count > 0 ? 'ci-heart-filled' : 'ci-heart';

    countElement.innerHTML = `<i class="headerWishlistIcon ${iconClass} mt-n1"></i> Wishlist (${count})`;

}


//dell Wishlist
function dellWishlist(element) {
    const route = element.getAttribute('data-route');
    const productId = element.getAttribute('data-product-id');
    const csrfToken = element.getAttribute('data-csrf');
    const icons = document.querySelectorAll('.wishlist');


    fetch(route, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': csrfToken
        },
        body: JSON.stringify({ productId: productId })
    })
        .then(response => response.json())
        .then(data => {
            if (data.wishlistCount <= 0 && data.deletedWishlist) {
                icons.forEach(icon => {
                    icon.classList.remove('ci-heart', 'ci-heart-filled');
                    icon.classList.add('ci-heart');
                });
            }
            if (data.deletedWishlist) {
                const wishlistItem = element.closest('.wishlist-item');
                wishlistItem.parentNode.removeChild(wishlistItem);
            } else {
                alert('Could not remove the item from the wishlist.');
            }
            updateWishlist(data.wishlistCount)

        })
        .catch(error => console.error('Error:', error));
}




//dell wishlistItem from ui
document.addEventListener('DOMContentLoaded', function() {
    const removeButtons = document.querySelectorAll('.remove-from-wishlist');
    removeButtons.forEach(button => {
        button.addEventListener('click', function() {
            dellWishlist(this);
        });
    });
});



