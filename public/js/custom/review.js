function review(element , action) {
    const route = element.getAttribute('data-route');
    const csrfToken = element.getAttribute('data-csrf');

    const payload= {};

    if (action === 'rate'){
        payload.rate = document.getElementById('review-rating').value;
    }
    if (action === 'comment') {
        payload.body = document.getElementById('review-text').value;
    }


        fetch(route, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': csrfToken
        },
        body: JSON.stringify(payload)
    })
        .then((response) => {
            if (response.status === 403) {
                if (confirm('You need to be logged in to perform this action. Do you want to go to the login page?'))
                    window.location.href = '/login' + '?backTo=' + window.location.pathname;// Redirect to login
            }
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            Swal.fire({
                position: "top-end",
                text: data.message,
                showConfirmButton: false,
                timer: 2500
            });
        })
        .catch((error) => {
            console.log(error)
        });
}

