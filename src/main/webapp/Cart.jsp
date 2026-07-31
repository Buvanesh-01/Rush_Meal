
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.food_Application.model.*"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Cart | M E A L • R U S H</title>


<!-- GOOGLE FONT -->

<link
	href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;500;600;700;800&display=swap"
	rel="stylesheet">


<!-- FONT AWESOME -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">


<style>

/* =========================================
   GLOBAL
========================================= */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Archivo', sans-serif;
}

:root {
	--black: #0E1016;
	--dark: #171A21;
	--green: #00E676;
	--green-dark: #00B85C;
	--light: #F5F7F8;
	--white: #FFFFFF;
	--gray: #6B7280;
	--border: #E5E7EB;
}

body {
	background: var(--light);
	color: var(--black);
	min-height: 100vh;
}

/* =========================================
   NAVBAR
========================================= */
nav {
	height: 75px;
	background: var(--black);
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 7%;
	position: sticky;
	top: 0;
	z-index: 1000;
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
}

/* LOGO */
.logo {
	color: white;
	font-size: 27px;
	font-weight: 800;
	letter-spacing: 1px;
	cursor: pointer;
}

.logo span {
	color: var(--green);
}

/* NAVIGATION */
.nav-links {
	display: flex;
	align-items: center;
	gap: 10px;
}

.nav-links a {
	color: white;
	text-decoration: none;
	padding: 10px 15px;
	border-radius: 8px;
	font-size: 14px;
	font-weight: 600;
	transition: 0.3s;
}

.nav-links a:hover {
	background: var(--green);
	color: var(--black);
}

.cart-link {
	background: rgba(0, 230, 118, 0.12);
	color: var(--green) !important;
}

/* =========================================
   HERO
========================================= */
.cart-hero {
	width: 100%;
	height: 220px;
	display: flex;
	align-items: center;
	padding: 0 8%;
	position: relative;
	overflow: hidden;
	background: linear-gradient(120deg, rgba(14, 16, 22, 0.98),
		rgba(14, 16, 22, 0.88));
}

/* Decorative Circle */
.cart-hero::before {
	content: "";
	position: absolute;
	width: 350px;
	height: 350px;
	right: 5%;
	top: -150px;
	border-radius: 50%;
	background: rgba(0, 230, 118, 0.12);
}

.cart-hero-content {
	position: relative;
	z-index: 2;
}

.cart-hero h1 {
	color: white;
	font-size: 42px;
	font-weight: 800;
	margin-bottom: 10px;
}

.cart-hero h1 span {
	color: var(--green);
}

.cart-hero p {
	color: #CBD5E1;
	font-size: 15px;
}

.cart-icon {
	position: absolute;
	right: 12%;
	font-size: 110px;
	color: rgba(0, 230, 118, 0.15);
	transform: rotate(-10deg);
}

/* =========================================
   MAIN
========================================= */
.container {
	width: 86%;
	max-width: 1200px;
	margin: 40px auto 70px;
}

/* =========================================
   BACK LINK
========================================= */
.back-link {
	display: inline-flex;
	align-items: center;
	gap: 8px;
	color: var(--gray);
	text-decoration: none;
	font-size: 14px;
	font-weight: 600;
	margin-bottom: 25px;
	transition: 0.3s;
}

.back-link:hover {
	color: var(--green-dark);
	transform: translateX(-4px);
}

/* =========================================
   RESTAURANT INFO
========================================= */
.restaurant-info {
	background: white;
	border: 1px solid var(--border);
	border-radius: 16px;
	padding: 20px 25px;
	display: flex;
	align-items: center;
	gap: 15px;
	margin-bottom: 25px;
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
}

.restaurant-icon {
	width: 48px;
	height: 48px;
	border-radius: 12px;
	display: flex;
	align-items: center;
	justify-content: center;
	background: rgba(0, 230, 118, 0.12);
	color: var(--green-dark);
	font-size: 22px;
}

.restaurant-info h3 {
	font-size: 18px;
	margin-bottom: 4px;
}

.restaurant-info p {
	color: var(--gray);
	font-size: 13px;
}

/* =========================================
   YOUR SELECTION
========================================= */
.cart-box {
	background: white;
	border-radius: 20px;
	border: 1px solid var(--border);
	padding: 28px;
	box-shadow: 0 8px 30px rgba(0, 0, 0, 0.06);
}

.section-header {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-bottom: 20px;
}

.section-header h2 {
	font-size: 23px;
	font-weight: 800;
}

.item-count {
	background: rgba(0, 230, 118, 0.12);
	color: var(--green-dark);
	padding: 7px 13px;
	border-radius: 20px;
	font-size: 12px;
	font-weight: 700;
}

/* =========================================
   CART ITEM
========================================= */
.cart-item {
	display: flex;
	align-items: center;
	gap: 20px;
	padding: 20px 0;
	border-bottom: 1px solid var(--border);
	transition: 0.3s;
}

.cart-item:last-child {
	border-bottom: none;
}

.cart-item:hover {
	transform: translateX(5px);
}

/* =========================================
   FOOD IMAGE
========================================= */
.food-image {
	width: 110px;
	height: 95px;
	border-radius: 14px;
	overflow: hidden;
	flex-shrink: 0;
}

.food-image img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	transition: 0.4s;
}

.cart-item:hover .food-image img {
	transform: scale(1.1);
}

/* =========================================
   ITEM DETAILS
========================================= */
.item-details {
	flex: 1;
}

.item-details h3 {
	font-size: 17px;
	margin-bottom: 7px;
}

.item-details p {
	color: var(--gray);
	font-size: 13px;
	margin-bottom: 8px;
}

.item-price {
	color: var(--green-dark);
	font-size: 16px;
	font-weight: 800;
}

/* =========================================
   QUANTITY
========================================= */
.quantity {
	display: flex;
	align-items: center;
	gap: 10px;
	border: 1px solid var(--border);
	padding: 5px;
	border-radius: 10px;
	background: #FAFAFA;
}

.quantity button {
	width: 32px;
	height: 32px;
	border: none;
	border-radius: 7px;
	background: white;
	color: var(--black);
	font-size: 18px;
	font-weight: 700;
	cursor: pointer;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.08);
	transition: 0.2s;
}

.quantity button:hover {
	background: var(--green);
	transform: scale(1.05);
}

.quantity span {
	min-width: 25px;
	text-align: center;
	font-weight: 700;
}

/* =========================================
   ITEM TOTAL
========================================= */
.item-total {
	min-width: 80px;
	text-align: right;
	font-size: 17px;
	font-weight: 800;
}

/* =========================================
   REMOVE
========================================= */
.remove {
	color: #EF4444;
	font-size: 13px;
	cursor: pointer;
	padding: 8px;
	transition: 0.2s;
}

.remove:hover {
	color: #B91C1C;
	transform: scale(1.1);
}

/* =========================================
   ADD MORE
========================================= */
.add-more {
	display: inline-flex;
	align-items: center;
	gap: 8px;
	margin-top: 22px;
	padding: 11px 18px;
	border: 1px solid var(--green);
	border-radius: 9px;
	color: var(--green-dark);
	text-decoration: none;
	font-size: 14px;
	font-weight: 700;
	transition: 0.3s;
}

.add-more:hover {
	background: var(--green);
	color: var(--black);
	transform: translateY(-2px);
}

/* =========================================
   SUMMARY
========================================= */
.summary {
	margin-top: 25px;
	background: white;
	border-radius: 20px;
	border: 1px solid var(--border);
	padding: 28px;
	box-shadow: 0 8px 30px rgba(0, 0, 0, 0.06);
}

.summary-header {
	display: flex;
	align-items: center;
	gap: 10px;
	margin-bottom: 20px;
}

.summary-header i {
	color: var(--green-dark);
	font-size: 20px;
}

.summary-header h2 {
	font-size: 22px;
	font-weight: 800;
}

/* SUMMARY ROW */
.summary-row {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 13px 0;
	color: var(--gray);
	font-size: 15px;
	border-bottom: 1px solid var(--border);
}

/* TOTAL */
.total-row {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 0 5px;
}

.total-label {
	font-size: 20px;
	font-weight: 800;
}

.total-price {
	font-size: 28px;
	font-weight: 800;
	color: var(--green-dark);
}

/* =========================================
   CHECKOUT
========================================= */
.checkout {
    width: 100%;
    height: 55px;
    margin-top: 25px;
    border: none;
    border-radius: 12px;
    background: var(--black);
    color: white;
    font-size: 16px;
    font-weight: 700;
    cursor: pointer;
    transition: 0.3s;

    /* Important for <a> */
    display: flex;
    align-items: center;
    justify-content: center;
    text-decoration: none;
}

.checkout i {
	margin-left: 8px;
	transition: 0.3s;
}

.checkout:hover {
	background: var(--green);
	color: var(--black);
	transform: translateY(-3px);
	box-shadow: 0 10px 25px rgba(0, 230, 118, 0.25);
}

.checkout:hover i {
	transform: translateX(5px);
}

/* =========================================
   FOOTER
========================================= */

footer{
    background:var(--black);
    color:white;
    text-align:center;
    padding:30px;
}

footer span{
    color:var(--green);
    font-weight:700;
}

/* =========================================
   RESPONSIVE
========================================= */
@media ( max-width :800px) {
	.nav-links a {
		padding: 8px;
		font-size: 12px;
	}
	.nav-links a:not(.cart-link) {
		display: none;
	}
	.cart-hero {
		height: 190px;
		padding: 0 6%;
	}
	.cart-hero h1 {
		font-size: 32px;
	}
	.cart-icon {
		font-size: 70px;
		right: 8%;
	}
	.container {
		width: 92%;
	}
	.cart-item {
		flex-wrap: wrap;
	}
	.item-details {
		min-width: calc(100% - 130px);
	}
	.quantity {
		margin-left: 130px;
	}
	.item-total {
		margin-left: auto;
	}
	.remove {
		margin-left: auto;
	}
}

@media ( max-width :550px) {
	.cart-box, .summary {
		padding: 20px;
	}
	.food-image {
		width: 90px;
		height: 80px;
	}
	.item-details h3 {
		font-size: 15px;
	}
	.item-details p {
		font-size: 12px;
	}
	.quantity {
		margin-left: 0;
	}
	.cart-item {
		gap: 12px;
	}
	.item-total {
		font-size: 15px;
	}
}

.add-more-container {
    margin-top: 20px;
    margin-bottom: 10px;
}

.add-more {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 11px 18px;
    border: 1px solid var(--green);
    border-radius: 9px;
    color: var(--green-dark);
    background: white;
    text-decoration: none;
    font-size: 14px;
    font-weight: 700;
    transition: 0.3s;
}

.add-more:hover {
    background: var(--green);
    color: var(--black);
    transform: translateY(-2px);
}
</style>

</head>


<body>


	<!-- =========================================
     NAVBAR
========================================= -->

<nav>
    <%
        User user = (User) session.getAttribute("user");
    %>

    <div class="logo">
        🍴 <span>M E A L •</span> R U S H
    </div>

    <div class="nav-links">

        <a href="RestaurantServlet">
            <i class="fa-solid fa-house"></i>
            Home
        </a>

        <a href="RestaurantServlet">
            <i class="fa-solid fa-utensils"></i>
            Restaurants
        </a>

        <%
            if (user != null) {
        %>

        <a href="Profile.jsp">
            <i class="fa-regular fa-user"></i>
            <%= user.getUser_Name() %>
        </a>

        <%
            } else {
        %>

        <a href="Login.jsp">
            <i class="fa-regular fa-user"></i>
            Sign In
        </a>

        <%
            }
        %>

        <a href="cart.jsp" class="cart-link">
            <i class="fa-solid fa-cart-shopping"></i>
            Cart
        </a>

    </div>
</nav>


	<!-- =========================================
     HERO
========================================= -->

	<section class="cart-hero">


		<div class="cart-hero-content">


			<h1>

				Your <span>Cart</span>

			</h1>


			<p>Review your delicious selections before checkout.</p>


		</div>


		<i class="fa-solid fa-bag-shopping cart-icon"></i>


	</section>



	<!-- =========================================
     MAIN
========================================= -->

	<div class="container">


		<!-- BACK -->

		<a href="RestaurantServlet" class="back-link"> <i
			class="fa-solid fa-arrow-left"></i> Continue Shopping

		</a>



		<!-- RESTAURANT -->

		<div class="restaurant-info">


			<div class="restaurant-icon">

				<i class="fa-solid fa-store"></i>

			</div>


			<div>

				<h3>Your Selected Restaurant</h3>


				<p>Delicious food is waiting for you</p>

			</div>


		</div>



		<!-- =====================================
	     YOUR SELECTION
	====================================== -->
	<%
	Integer Restaurant_Id =(Integer)session.getAttribute("Restaurant_Id");
    Cart cart = (Cart) session.getAttribute("cart");

    double grandtotal = 0;

    if (cart != null && !cart.getItems().isEmpty()) {
%>

<div class="cart-box">

    <div class="section-header">

        <h2>Your Selection</h2>

        <div class="item-count">
            <%= cart.getItems().size() %> ITEMS
        </div>

    </div>


    <%
        for (CartItem item : cart.getItems().values()) {

            double itemTotal =
                item.getPrice() * item.getQuantity();

            grandtotal = grandtotal + itemTotal;
    %>


    <div class="cart-item">

        <div class="food-image">
       

            <img src="<%=item.getImage_Path() %>"
                 alt="<%= item.getName() %>">

        </div>


        <div class="item-details">

            <h3>
                <%= item.getName() %>
            </h3>

            <p>
                Delicious food from our restaurant
            </p>

            <div class="item-price">
                ₹<%= item.getPrice() %>
            </div>

        </div>


        <div class="quantity">

            <form action="CartServlet" method="post">
            <input type="hidden" name="Menu_Id" value="<%=item.getMenu_Id()%>">
            <input type="hidden" name="Restaurant_Id" value="<%=item.getRestaurant_Id()%>">
            <input type="hidden" name="action" value="update">
            <input type="hidden" name="quantity" value="<%=item.getQuantity()-1%>">
            <button type="submit">
                −
            </button>
            </form>

            <span>
                <%= item.getQuantity() %>
            </span>

            <form action="CartServlet" method="post">
            <input type="hidden" name="Menu_Id" value="<%=item.getMenu_Id()%>">
            <input type="hidden" name="Restaurant_Id" value="<%=item.getRestaurant_Id()%>">
            <input type="hidden" name="action" value="update">
            <input type="hidden" name="quantity" value="<%=item.getQuantity()+1%>">
            <button type="submit">
                +
            </button>
            </form>

        </div>


        <div class="item-total">

            ₹<%= itemTotal %>

        </div>


        <div class="remove">
		 <form action="CartServlet" method="post">
            <input type="hidden" name="Menu_Id" value="<%=item.getMenu_Id()%>">
            <input type="hidden" name="Restaurant_Id" value="<%=item.getRestaurant_Id()%>">
            <input type="hidden" name="action" value="delete">
		<button type="submit">
                <i class="fa-solid fa-trash"> Remove</i>
            </button>
            
            </form>
            

        </div>

    </div>


    <%
        }
    %>
     <!-- ADD MORE ITEMS -->
    <div class="add-more-container">
        <a href="menuServlet?restaurant_Id=<%=Restaurant_Id%>" class="add-more">
            <i class="fa-solid fa-plus"></i>
            Add More Items
        </a>
    </div>
    


    <div class="summary">

        <div class="summary-header">

            <i class="fa-solid fa-receipt"></i>

            <h2>Order Summary</h2>

        </div>


        <div class="summary-row">

            <span>Subtotal</span>

            <span>
                ₹<%= grandtotal %>
            </span>

        </div>


        <div class="total-row">

            <span class="total-label">
                Total
            </span>

            <span class="total-price">
                ₹<%= grandtotal %>
            </span>

        </div>

        <a 	 class="checkout" href="CheckOutPage.jsp">

            Proceed to Checkout

            <i class="fa-solid fa-arrow-right"></i>

        </a>

    </div>

</div>


<%
    } else{
%>


<div class="cart-box"
     style="text-align:center; padding:60px;">

    <i class="fa-solid fa-cart-shopping"
       style="font-size:60px; color:#00B85C;">
    </i>

    <h2 style="margin-top:20px;">
        Your Cart is Empty
    </h2>

    <p style="color:#6B7280; margin-top:10px;">
        Add some delicious food to your cart.
    </p>

    <a href="RestaurantServlet" class="add-more">

        <i class="fa-solid fa-utensils"></i>

        Browse Restaurants

    </a>

</div>


<%
    }
    
%>
</div>


		<!-- =========================================
     FOOTER
========================================= -->

		<footer>


			<p>

				© 2026 <span>M E A L • R U S H</span> — Delicious food delivered to your
				doorstep.

			</p>


		</footer>
</body>

</html>
