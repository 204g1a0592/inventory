<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard - Inventory Management</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f3f4f6;
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin-top: 20px;
            text-align: center;
        }

        .header {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }

        .product-list {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        .product-item {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            width: 250px;
            text-align: center;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
        }

        .product-item img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .product-item h3 {
            font-size: 18px;
            color: #333;
            margin-top: 10px;
        }

        .product-item p {
            color: #777;
            font-size: 14px;
        }

        .product-item .price {
            font-size: 18px;
            color: #007bff;
            margin: 10px 0;
        }

        .product-item button {
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .product-item button:hover {
            background-color: #218838;
        }

        .cart-summary {
            margin-top: 40px;
            font-size: 18px;
            color: #333;
        }

        .cart-summary button {
            padding: 12px 18px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .cart-summary button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="header">
            <h2>Welcome, <span id="userName">John Doe</span></h2>
            <p>Browse products and add them to your cart!</p>
        </div>

        <div class="product-list">
            <div class="product-item">
                <img src="https://via.placeholder.com/250" alt="Product 1">
                <h3>Product 1</h3>
                <p>A short description of product 1.</p>
                <div class="price">$10.00</div>
                <button onclick="addToCart('Product 1', 10)">Add to Cart</button>
            </div>

            <div class="product-item">
                <img src="https://via.placeholder.com/250" alt="Product 2">
                <h3>Product 2</h3>
                <p>A short description of product 2.</p>
                <div class="price">$20.00</div>
                <button onclick="addToCart('Product 2', 20)">Add to Cart</button>
            </div>

            <div class="product-item">
                <img src="https://via.placeholder.com/250" alt="Product 3">
                <h3>Product 3</h3>
                <p>A short description of product 3.</p>
                <div class="price">$30.00</div>
                <button onclick="addToCart('Product 3', 30)">Add to Cart</button>
            </div>
        </div>

        <div class="cart-summary">
            <h3>Your Cart:</h3>
            <ul id="cartItems"></ul>
            <button onclick="proceedToCheckout()">Proceed to Checkout</button>
        </div>
    </div>

    <script>
        let cart = [];

        // Function to add products to cart
        function addToCart(productName, price) {
            const product = { name: productName, price: price, quantity: 1 };
            cart.push(product);
            updateCartUI();
        }

        // Update the cart UI
        function updateCartUI() {
            const cartItemsList = document.getElementById('cartItems');
            cartItemsList.innerHTML = '';  // Clear the cart display
            let total = 0;

            cart.forEach(item => {
                total += item.price;
                const cartItem = document.createElement('li');
                cartItem.textContent = `${item.name} - $${item.price} x${item.quantity}`;
                cartItemsList.appendChild(cartItem);
            });

            // Optionally show total price
            const totalPrice = document.createElement('p');
            totalPrice.textContent = `Total: $${total.toFixed(2)}`;
            cartItemsList.appendChild(totalPrice);
        }

        // Proceed to checkout
        function proceedToCheckout() {
            alert('Proceeding to checkout');
            // You can add logic to send cart data to the server or navigate to checkout page
        }
    </script>

</body>
</html>
