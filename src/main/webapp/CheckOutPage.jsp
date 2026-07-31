
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List,com.food_Application.model.*"%>
<%@ page import="com.food_Application.DAOImpl.restaurantDAOImpl" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Checkout | 🍴 M E A L • R U S H</title>


<!-- GOOGLE FONT -->
<link
    href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;500;600;700;800&family=Archivo+Black&display=swap"
    rel="stylesheet">


<!-- FONT AWESOME -->
<link
    rel="stylesheet"
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
    --primary: #0E1016;
    --secondary: #5B6270;
    --tertiary: #00E676;
    --neutral: #F1F3F5;
    --surface: #FFFFFF;
    --border: #D9DDE2;
}

body {
    background: var(--neutral);
    color: var(--primary);
    min-height: 100vh;
}


/* =========================================
   NAVBAR
========================================= */

nav {
    height: 75px;
    background: var(--primary);
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 7%;
    position: sticky;
    top: 0;
    z-index: 1000;
}


/* LOGO */

.logo {
    color: white;
    font-size: 28px;
    font-weight: 800;
    letter-spacing: 1px;
}

.logo span {
    color: var(--tertiary);
}


/* NAV LINKS */

.nav-links {
    display: flex;
    align-items: center;
    gap: 10px;
}

.nav-links a {
    color: white;
    text-decoration: none;
    padding: 10px 15px;
    font-size: 14px;
    font-weight: 600;
    border-radius: 4px;
    transition: 0.2s;
}

.nav-links a:hover {
    background: var(--tertiary);
    color: var(--primary);
}

.cart-link {
    background: var(--tertiary);
    color: var(--primary) !important;
}


/* =========================================
   CHECKOUT HEADER
========================================= */

.checkout-header {
    background: var(--primary);
    padding: 45px 8%;
    border-top: 1px solid #252933;
}

.checkout-header h1 {
    color: white;
    font-size: 36px;
    font-weight: 800;
    margin-bottom: 8px;
}

.checkout-header h1 span {
    color: var(--tertiary);
}

.checkout-header p {
    color: #CBD0D6;
    font-size: 14px;
}


/* =========================================
   CHECKOUT FORM
========================================= */

.checkout-form {
    width: 100%;
}


/* =========================================
   MAIN CHECKOUT CONTAINER
========================================= */

.checkout-container {
    width: 86%;
    max-width: 1200px;
    margin: 40px auto 70px;

    display: grid;

    /*
       LEFT  = 1.5fr
       RIGHT = 1fr
    */

    grid-template-columns: 1.5fr 1fr;

    gap: 30px;

    align-items: start;
}


/* =========================================
   LEFT SIDE
========================================= */

.checkout-left {
    min-width: 0;
}


/* =========================================
   CARD
========================================= */

.card {
    width: 100%;
    background: var(--surface);
    border: 1px solid var(--border);
    border-radius: 6px;
    padding: 24px;
}


/* =========================================
   BACK BUTTON
========================================= */

.back-link {
    display: inline-flex;
    align-items: center;
    gap: 8px;

    color: var(--secondary);

    text-decoration: none;

    font-size: 13px;
    font-weight: 700;

    margin-bottom: 20px;
}

.back-link:hover {
    color: var(--primary);
}


/* =========================================
   SECTION TITLE
========================================= */

.section-title {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-bottom: 25px;
}

.section-title i {
    width: 38px;
    height: 38px;

    display: flex;
    align-items: center;
    justify-content: center;

    background: var(--tertiary);
    color: var(--primary);

    border-radius: 4px;
}

.section-title h2 {
    font-size: 21px;
    font-weight: 800;
}


/* =========================================
   FORM GROUP
========================================= */

.form-group {
    margin-bottom: 18px;
}

.form-group label {
    display: block;

    font-size: 11px;
    font-weight: 700;

    letter-spacing: 0.14em;

    text-transform: uppercase;

    margin-bottom: 8px;

    color: var(--secondary);
}


.form-group input,
.form-group textarea {

    width: 100%;

    padding: 13px 14px;

    border: 1px solid var(--border);

    border-radius: 4px;

    outline: none;

    font-size: 14px;

    color: var(--primary);

    background: white;

    transition: 0.2s;
}


.form-group textarea {
    height: 100px;
    resize: none;
}


.form-group input:focus,
.form-group textarea:focus {

    border-color: var(--tertiary);

    box-shadow:
        0 0 0 2px
        rgba(0, 230, 118, 0.12);
}


/* =========================================
   TWO COLUMN FORM
========================================= */

.form-row {

    display: grid;

    grid-template-columns: 1fr 1fr;

    gap: 15px;

}


/* =========================================
   PAYMENT
========================================= */

.payment-option {

    display: flex;

    align-items: center;

    gap: 12px;

    padding: 15px;

    border: 1px solid var(--border);

    border-radius: 4px;

    margin-bottom: 10px;

    cursor: pointer;

    transition: 0.2s;
}


.payment-option:hover {

    border-color: var(--tertiary);

}


.payment-option input {

    accent-color: var(--tertiary);

}


.payment-option i {

    font-size: 20px;

    color: var(--secondary);

}


.payment-option span {

    font-size: 14px;

    font-weight: 600;

}


/* =========================================
   RESTAURANT NAME
========================================= */

.restaurant-name {

    display: flex;

    align-items: center;

    gap: 10px;

    background: #F1F3F5;

    border: 1px solid var(--border);

    border-radius: 4px;

    padding: 14px;

    margin-bottom: 20px;

}


.restaurant-name i {

    color: var(--tertiary);

    font-size: 20px;

}


.restaurant-name span {

    color: var(--secondary);

    font-size: 12px;

    font-weight: 600;

}


.restaurant-name strong {

    display: block;

    color: var(--primary);

    font-size: 16px;

    margin-top: 3px;

}


/* =========================================
   SUMMARY CARD
========================================= */

.summary-card {

    width: 100%;

    background: var(--surface);

    border: 1px solid var(--border);

    border-radius: 6px;

    padding: 24px;

    height: max-content;

    position: sticky;

    top: 100px;

    align-self: start;

    min-width: 0;

}


.summary-title {

    font-size: 21px;

    font-weight: 800;

    margin-bottom: 22px;

}


/* =========================================
   ORDER ITEMS
========================================= */

.order-item {

    display: flex;

    justify-content: space-between;

    align-items: center;

    gap: 15px;

    padding: 15px 0;

    border-bottom: 1px solid var(--border);

}


.order-item-left {

    flex: 1;

    min-width: 0;

}


.order-item-name {

    font-size: 14px;

    font-weight: 700;

    margin-bottom: 5px;

}


.order-item-quantity {

    color: var(--secondary);

    font-size: 12px;

}


.order-item-price {

    font-size: 14px;

    font-weight: 800;

    white-space: nowrap;

}


/* =========================================
   PRICE
========================================= */

.price-row {

    display: flex;

    justify-content: space-between;

    align-items: center;

    gap: 10px;

    padding: 14px 0;

    font-size: 14px;

    color: var(--secondary);

}


.price-row.total {

    border-top: 2px solid var(--primary);

    margin-top: 5px;

    padding-top: 20px;

    color: var(--primary);

}


.total-label {

    font-size: 18px;

    font-weight: 800;

}


.total-price {

    font-size: 25px;

    font-weight: 800;

    white-space: nowrap;

}


/* =========================================
   PLACE ORDER
========================================= */

.place-order {

    width: 100%;

    height: 55px;

    margin-top: 25px;

    border: none;

    border-radius: 12px;

    background: var(--primary);

    color: white;

    font-size: 16px;

    font-weight: 700;

    cursor: pointer;

    transition: 0.3s;

    display: flex;

    align-items: center;

    justify-content: center;

    gap: 10px;

}


.place-order:hover {

    background: var(--tertiary);

    color: var(--primary);

    transform: translateY(-3px);

    box-shadow:
        0 10px 25px
        rgba(0, 230, 118, 0.25);

}


.place-order:hover i {

    transform: translateX(5px);

}


/* =========================================
   SECURE PAYMENT
========================================= */

.secure-payment {

    text-align: center;

    margin-top: 15px;

    color: var(--secondary);

    font-size: 11px;

    font-weight: 600;

}


.secure-payment i {

    color: var(--tertiary);

    margin-right: 5px;

}


/* =========================================
   FOOTER
========================================= */

footer {

    background: var(--primary);

    color: #9CA3AF;

    text-align: center;

    padding: 25px;

    font-size: 12px;

}


footer span {

    color: var(--tertiary);

    font-weight: 700;

}


/* =========================================
   RESPONSIVE
========================================= */

@media (max-width: 900px) {

    .checkout-container {

        grid-template-columns: 1fr;

    }

    .summary-card {

        position: static;

    }

}


@media (max-width: 600px) {

    nav {

        padding: 0 5%;

    }


    .nav-links a:not(.cart-link) {

        display: none;

    }


    .checkout-header {

        padding: 35px 6%;

    }


    .checkout-header h1 {

        font-size: 30px;

    }


    .checkout-container {

        width: 92%;

        margin-top: 25px;

    }


    .form-row {

        grid-template-columns: 1fr;

    }


    .card,
    .summary-card {

        padding: 20px;

    }

}

</style>

</head>


<body>


<!-- =========================================
     NAVBAR
========================================= -->

<nav>

    <div class="logo">

        🍴 <span>TIFFIN</span>

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


        <a href="cart.jsp" class="cart-link">

            <i class="fa-solid fa-cart-shopping"></i>

            Cart

        </a>

    </div>

</nav>


<%

User user = (User) session.getAttribute("user");
Restaurant restaurant=(Restaurant)session.getAttribute("restaurant");

%>


<!-- =========================================
     CHECKOUT HEADER
========================================= -->

<section class="checkout-header">

    <h1>

        Secure <span>Checkout</span>

    </h1>

    <p>

        Complete your delivery details and place your order.

    </p>

</section>


<!-- =========================================
     CHECKOUT FORM
     
     IMPORTANT:
     The form contains BOTH:
     1. Delivery Details
     2. Order Summary
     
     Therefore Place Order can submit
     the form to CheckoutServlet.
========================================= -->

<form action="CheckoutServlet"
      method="post"
      class="checkout-form">


    <!-- =========================================
         CHECKOUT CONTAINER
    ========================================= -->

    <div class="checkout-container">


        <!-- =====================================
             LEFT SIDE
        ====================================== -->

        <div class="checkout-left">


            <!-- BACK TO CART -->

            <a href="cart.jsp"
               class="back-link">

                <i class="fa-solid fa-arrow-left"></i>

                Back to Cart

            </a>


            <!-- =====================================
                 DELIVERY DETAILS CARD
            ====================================== -->

            <div class="card">


                <div class="section-title">

                    <i class="fa-solid fa-location-dot"></i>

                    <h2>Delivery Details</h2>

                </div>


                <!-- FULL NAME -->

                <div class="form-group">

                    <label>Full Name</label>

                    <input
                        type="text"
                        name="fullName"
                        placeholder="Enter your full name"
                        required>

                </div>


                <!-- PHONE -->

                <div class="form-group">

                    <label>Phone Number</label>

                    <input
                        type="tel"
                        name="phone"
                        placeholder="Enter phone number"
                        required>

                </div>


                <!-- EMAIL -->

                <div class="form-group">

                    <label>Email Address</label>

                    <input
                        type="email"
                        name="email"
                        placeholder="Enter your email address"
                        required>

                </div>


                <!-- ADDRESS -->

                <div class="form-group">

                    <label>Delivery Address</label>

                    <textarea
                        name="address"
                        placeholder="Enter your complete delivery address"
                        required></textarea>

                </div>


                <!-- CITY + PIN -->

                <div class="form-row">


                    <div class="form-group">

                        <label>City</label>

                        <input
                            type="text"
                            name="city"
                            placeholder="Enter city"
                            required>

                    </div>


                    <div class="form-group">

                        <label>PIN Code</label>

                        <input
                            type="text"
                            name="pinCode"
                            placeholder="Enter PIN code"
                            required>

                    </div>


                </div>


                <!-- =====================================
                     PAYMENT METHOD
                ====================================== -->

                <div class="section-title"
                     style="margin-top: 30px;">

                    <i class="fa-solid fa-credit-card"></i>

                    <h2>Payment Method</h2>

                </div>


                <!-- CASH -->

                <label class="payment-option">

                    <input
                        type="radio"
                        value="Cash"
                        name="payment"
                        checked>

                    <i class="fa-solid fa-money-bill-wave"></i>

                    <span>

                        Cash on Delivery

                    </span>

                </label>


                <!-- UPI -->

                <label class="payment-option">

                    <input
                        type="radio"
                        value="UPI"
                        name="payment">

                    <i class="fa-solid fa-mobile-screen-button"></i>

                    <span>

                        UPI Payment

                    </span>

                </label>


                <!-- CREDIT CARD -->

                <label class="payment-option">

                    <input
                        type="radio"
                        value="Credit Card"
                        name="payment">

                    <i class="fa-solid fa-credit-card"></i>

                    <span>

                        Credit Card

                    </span>

                </label>


                <!-- DEBIT CARD -->

                <label class="payment-option">

                    <input
                        type="radio"
                        value="Debit Card"
                        name="payment">

                    <i class="fa-solid fa-credit-card"></i>

                    <span>

                        Debit Card

                    </span>

                </label>


                <!-- NET BANKING -->

                <label class="payment-option">

                    <input
                        type="radio"
                        value="Net Banking"
                        name="payment">

                    <i class="fa-solid fa-building-columns"></i>

                    <span>

                        Net Banking

                    </span>

                </label>


            </div>

            <!-- END DELIVERY CARD -->


        </div>

        <!-- END LEFT SIDE -->


        <!-- =====================================
             RIGHT SIDE - ORDER SUMMARY
        ====================================== -->

        <div class="summary-card">


            <h2 class="summary-title">

                Order Summary

            </h2>


            <!-- =====================================
                 CART CALCULATION
            ====================================== -->

            <%

            Cart cart =
                (Cart) session.getAttribute("cart");


            double itemTotal = 0;

            double pf = 12.67;

            double dc = 8.52;

            double gst = 5.72;


            if (cart != null &&
                !cart.getItems().isEmpty()) {


                for (CartItem item :
                     cart.getItems().values()) {


                    itemTotal =
                        itemTotal +
                        item.getPrice() *
                        item.getQuantity();

                }

            }


            double payable =
                itemTotal +
                pf +
                dc +
                gst;


            session.setAttribute(
                "payable",
                payable
            );

            %>


            <!-- =====================================
                 RESTAURANT NAME
            ====================================== -->

            <div class="restaurant-name">

                <i class="fa-solid fa-store"></i>

                <div>

                    <span>

                        Ordering From

                    </span>

                    <strong>

                        

                    </strong>

                </div>

            </div>


            <!-- =====================================
                 CART ITEMS
            ====================================== -->

            <%

            if (cart != null &&
                !cart.getItems().isEmpty()) {


                for (CartItem item :
                     cart.getItems().values()) {

            %>


            <div class="order-item">


                <div class="order-item-left">


                    <div class="order-item-name">

                        <%= item.getName() %>

                    </div>


                    <div class="order-item-quantity">

                        Quantity:

                        <%= item.getQuantity() %>

                    </div>


                </div>


                <div class="order-item-price">

                    ₹ <%= item.getTotalPrice() %>

                </div>


            </div>


            <%

                }

            }

            %>


            <!-- =====================================
                 PRICE DETAILS
            ====================================== -->


            <!-- CART TOTAL -->

            <div class="price-row">

                <span>

                    Cart Total

                </span>

                <span>

                    ₹ <%= itemTotal %>

                </span>

            </div>


            <!-- PLATFORM FEE -->

            <div class="price-row">

                <span>

                    Platform Fee

                </span>

                <span>

                    ₹ <%= pf %>

                </span>

            </div>


            <!-- DELIVERY FEE -->

            <div class="price-row">

                <span>

                    Delivery Fee

                </span>

                <span>

                    ₹ <%= dc %>

                </span>

            </div>


            <!-- GST -->

            <div class="price-row">

                <span>

                    GST (5%)

                </span>

                <span>

                    ₹ <%= gst %>

                </span>

            </div>


            <!-- TOTAL -->

            <div class="price-row total">


                <span class="total-label">

                    Total Payable

                </span>


                <span class="total-price">

                    ₹ <%= payable %>

                </span>


            </div>


            <!-- =====================================
                 PLACE ORDER
            ====================================== -->

            <%

            if (user != null) {

            %>


                <button
                    type="submit"
                    class="place-order">

                    Place Order

                    <i class="fa-solid fa-arrow-right"></i>

                </button>


            <%

            } else {

            %>


                <a
                    href="Login.jsp"
                    class="place-order">

                    Place Order

                    <i class="fa-solid fa-arrow-right"></i>

                </a>


            <%

            }

            %>


            <!-- SECURE PAYMENT -->

            <div class="secure-payment">

                <i class="fa-solid fa-lock"></i>

                Your order information is secure

            </div>


        </div>

        <!-- END SUMMARY CARD -->


    </div>

    <!-- END CHECKOUT CONTAINER -->


</form>

<!-- END FORM -->


<!-- =========================================
     FOOTER
========================================= -->

<footer>

    © 2026

    <span>

        🍴 M E A L • R U S H

    </span>

    — Delicious food delivered to your doorstep.

</footer>


</body>

</html>
