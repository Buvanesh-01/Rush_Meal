<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="com.food_Application.model.*" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
    content="width=device-width, initial-scale=1.0">

<title>Order History | 🍴 M E A L • R U S H</title>


<!-- GOOGLE FONT -->

<link
href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;500;600;700;800&display=swap"
rel="stylesheet">


<!-- FONT AWESOME -->

<link
rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">


<style>

/* =========================================
   GLOBAL
========================================= */

*{

    margin:0;

    padding:0;

    box-sizing:border-box;

    font-family:'Archivo',sans-serif;

}


:root{

    --black:#0E1016;

    --dark:#171A21;

    --green:#00E676;

    --green-dark:#00B85C;

    --white:#FFFFFF;

    --light:#F5F7F8;

    --gray:#6B7280;

    --border:#E5E7EB;

}


body{

    background:var(--light);

    color:var(--black);

    min-height:100vh;

}


/* =========================================
   NAVBAR
========================================= */

header{

    height:75px;

    background:var(--black);

    display:flex;

    align-items:center;

    justify-content:space-between;

    padding:0 7%;

    position:sticky;

    top:0;

    z-index:1000;

    box-shadow:
    0 5px 20px rgba(0,0,0,0.2);

}


/* LOGO */

.logo{

    color:white;

    font-size:27px;

    font-weight:800;

    letter-spacing:1px;

}


.logo span{

    color:var(--green);

}


/* NAV LINKS */

.nav-links{

    display:flex;

    align-items:center;

    gap:8px;

}


.nav-links a{

    color:white;

    text-decoration:none;

    font-size:13px;

    font-weight:600;

    padding:10px 15px;

    border-radius:8px;

    transition:0.3s;

}


.nav-links a:hover{

    background:var(--green);

    color:var(--black);

}


.nav-links .active{

    background:rgba(0,230,118,0.12);

    color:var(--green);

}


/* =========================================
   HERO
========================================= */

.hero{

    background:

    linear-gradient(

        120deg,

        rgba(14,16,22,0.98),

        rgba(14,16,22,0.88)

    );

    height:230px;

    display:flex;

    align-items:center;

    padding:0 8%;

    position:relative;

    overflow:hidden;

}


/* DECORATIVE CIRCLE */

.hero::before{

    content:"";

    position:absolute;

    width:350px;

    height:350px;

    border-radius:50%;

    background:rgba(0,230,118,0.08);

    right:5%;

    top:-170px;

}


.hero-content{

    position:relative;

    z-index:2;

}


.hero h1{

    color:white;

    font-size:42px;

    font-weight:800;

    margin-bottom:10px;

}


.hero h1 span{

    color:var(--green);

}


.hero p{

    color:#CBD5E1;

    font-size:15px;

}


.hero-icon{

    position:absolute;

    right:12%;

    font-size:110px;

    color:rgba(0,230,118,0.12);

    transform:rotate(-10deg);

}


/* =========================================
   MAIN
========================================= */

.container{

    width:86%;

    max-width:1200px;

    margin:40px auto 70px;

}


/* =========================================
   STATISTICS
========================================= */

.stats{

    display:grid;

    grid-template-columns:
    repeat(3,1fr);

    gap:20px;

    margin-bottom:35px;

}


.stat-card{

    background:white;

    border:1px solid var(--border);

    border-radius:16px;

    padding:22px;

    display:flex;

    align-items:center;

    gap:15px;

    box-shadow:
    0 5px 20px rgba(0,0,0,0.05);

    transition:0.3s;

}


.stat-card:hover{

    transform:translateY(-5px);

    box-shadow:
    0 12px 25px rgba(0,0,0,0.1);

}


.stat-icon{

    width:50px;

    height:50px;

    border-radius:12px;

    display:flex;

    align-items:center;

    justify-content:center;

    background:rgba(0,230,118,0.12);

    color:var(--green-dark);

    font-size:20px;

}


.stat-info h3{

    font-size:20px;

    margin-bottom:4px;

}


.stat-info p{

    color:var(--gray);

    font-size:12px;

}


/* =========================================
   SECTION TITLE
========================================= */

.section-title{

    display:flex;

    justify-content:space-between;

    align-items:center;

    margin-bottom:20px;

}


.section-title h2{

    font-size:24px;

    font-weight:800;

}


.section-title span{

    color:var(--gray);

    font-size:13px;

}


/* =========================================
   ORDER CARD
========================================= */

.order-card{

    background:white;

    border-radius:20px;

    border:1px solid var(--border);

    overflow:hidden;

    box-shadow:
    0 8px 30px rgba(0,0,0,0.06);

    transition:0.3s;

}


.order-card:hover{

    box-shadow:
    0 15px 40px rgba(0,0,0,0.1);

    transform:translateY(-3px);

}


/* =========================================
   ORDER HEADER
========================================= */

.order-header{

    padding:22px 28px;

    background:#FAFAFA;

    border-bottom:1px solid var(--border);

    display:flex;

    justify-content:space-between;

    align-items:center;

}


.restaurant{

    display:flex;

    align-items:center;

    gap:15px;

}


.restaurant-image{

    width:55px;

    height:55px;

    border-radius:12px;

    object-fit:cover;

}


.restaurant h3{

    font-size:18px;

    margin-bottom:5px;

}


.restaurant p{

    color:var(--gray);

    font-size:12px;

}


.order-info{

    text-align:right;

}


.order-number{

    font-size:13px;

    font-weight:700;

    margin-bottom:5px;

}


.order-date{

    color:var(--gray);

    font-size:12px;

}


/* =========================================
   STATUS
========================================= */

.status-area{

    padding:25px 28px;

    border-bottom:1px solid var(--border);

}


.status-badge{

    display:inline-flex;

    align-items:center;

    gap:8px;

    background:rgba(0,230,118,0.12);

    color:var(--green-dark);

    padding:8px 14px;

    border-radius:20px;

    font-size:12px;

    font-weight:700;

}


.status-dot{

    width:8px;

    height:8px;

    background:var(--green);

    border-radius:50%;

}


/* =========================================
   TIMELINE
========================================= */

.timeline{

    display:flex;

    align-items:center;

    margin-top:25px;

}


.step{

    display:flex;

    align-items:center;

    flex:1;

}


.step-icon{

    width:32px;

    height:32px;

    border-radius:50%;

    background:var(--green);

    color:var(--black);

    display:flex;

    align-items:center;

    justify-content:center;

    font-size:13px;

    flex-shrink:0;

}


.step-text{

    margin-left:8px;

}


.step-text strong{

    display:block;

    font-size:11px;

}


.step-text span{

    color:var(--gray);

    font-size:10px;

}


.line{

    flex:1;

    height:2px;

    background:var(--green);

    margin:0 10px;

}


/* =========================================
   ORDER BODY
========================================= */

.order-body{

    padding:28px;

    display:grid;

    grid-template-columns:2fr 1fr;

    gap:35px;

}


/* ITEMS */

.items-title{

    font-size:16px;

    font-weight:800;

    margin-bottom:18px;

}


.food-item{

    display:flex;

    align-items:center;

    gap:15px;

    padding:14px 0;

    border-bottom:1px solid var(--border);

}


.food-item:last-child{

    border-bottom:none;

}


.food-icon{

    width:42px;

    height:42px;

    border-radius:10px;

    background:var(--light);

    display:flex;

    align-items:center;

    justify-content:center;

    font-size:20px;

}


.food-info{

    flex:1;

}


.food-info h4{

    font-size:14px;

    margin-bottom:4px;

}


.food-info p{

    color:var(--gray);

    font-size:12px;

}


.food-price{

    font-weight:700;

    font-size:14px;

}


/* =========================================
   PAYMENT BOX
========================================= */

.payment-box{

    background:var(--light);

    border-radius:14px;

    padding:20px;

}


.payment-box h3{

    font-size:15px;

    margin-bottom:20px;

}


.payment-row{

    display:flex;

    justify-content:space-between;

    padding:10px 0;

    font-size:13px;

}


.payment-row span:first-child{

    color:var(--gray);

}


.payment-row.total{

    border-top:1px solid var(--border);

    margin-top:10px;

    padding-top:18px;

    font-size:18px;

    font-weight:800;

}


.payment-row.total span:last-child{

    color:var(--green-dark);

}


/* =========================================
   ORDER FOOTER
========================================= */

.order-footer{

    padding:20px 28px;

    border-top:1px solid var(--border);

    display:flex;

    justify-content:space-between;

    align-items:center;

}


.delivered{

    display:flex;

    align-items:center;

    gap:8px;

    color:var(--green-dark);

    font-size:13px;

    font-weight:700;

}


.delivered i{

    width:25px;

    height:25px;

    display:flex;

    align-items:center;

    justify-content:center;

    background:rgba(0,230,118,0.12);

    border-radius:50%;

}


.actions{

    display:flex;

    gap:10px;

}


.btn{

    padding:11px 18px;

    border-radius:9px;

    font-size:13px;

    font-weight:700;

    cursor:pointer;

    transition:0.3s;

}


.view-btn{

    background:white;

    border:1px solid var(--border);

    color:var(--black);

}


.view-btn:hover{

    border-color:var(--black);

}


.reorder-btn{

    background:var(--green);

    color:var(--black);

    border:1px solid var(--green);

}


.reorder-btn:hover{

    background:var(--black);

    color:var(--green);

    transform:translateY(-2px);

}


/* =========================================
   FOOTER
========================================= */

footer{

    background:var(--black);

    color:#9CA3AF;

    text-align:center;

    padding:25px;

    font-size:13px;

}


footer span{

    color:var(--green);

    font-weight:700;

}


/* =========================================
   RESPONSIVE
========================================= */

@media(max-width:800px){

    .nav-links a{

        padding:8px;

        font-size:11px;

    }


    .hero{

        height:200px;

    }


    .hero h1{

        font-size:32px;

    }


    .hero-icon{

        font-size:75px;

        right:5%;

    }


    .stats{

        grid-template-columns:1fr;

    }


    .order-header{

        align-items:flex-start;

        gap:15px;

    }


    .order-info{

        text-align:left;

    }


    .timeline{

        flex-direction:column;

        align-items:flex-start;

        gap:10px;

    }


    .step{

        width:100%;

    }


    .line{

        display:none;

    }


    .order-body{

        grid-template-columns:1fr;

    }

}


@media(max-width:550px){

    header{

        padding:0 20px;

    }


    .nav-links a{

        display:none;

    }


    .container{

        width:92%;

    }


    .hero{

        padding:0 6%;

    }


    .hero h1{

        font-size:28px;

    }


    .hero p{

        font-size:13px;

    }


    .order-header{

        flex-direction:column;

    }


    .order-body{

        padding:20px;

    }


    .order-footer{

        flex-direction:column;

        align-items:stretch;

        gap:15px;

    }


    .actions{

        width:100%;

    }


    .btn{

        flex:1;

    }

}

</style>

</head>


<body>


<!-- =========================================
     NAVBAR
========================================= -->

<header>


    <div class="logo">

        🍴 <span >M E A L •</span> R U S H

    </div>

<%
List<Order> orderList = (List<Order>) request.getAttribute("allOrdersByUser");
Cart cart = (Cart)session.getAttribute("cart");

int totalOrders = 0;
int completedOrders = 0;
double totalSpent = 0;

if (orderList != null) {

    totalOrders = orderList.size();

    for (Order order : orderList) {

        totalSpent += order.getTotal_Amount();

        if ("Delivered".equalsIgnoreCase(order.getStatus())) {
            completedOrders++;
        }
    }
}

%>
    <nav class="nav-links">


        <a href="RestaurantServlet">

            <i class="fa-solid fa-house"></i>

            Home

        </a>


        <a href="RestaurantServlet">

            <i class="fa-solid fa-utensils"></i>

            Restaurants

        </a>


        <a href="Cart.jsp">

            <i class="fa-solid fa-cart-shopping"></i>

            Cart

        </a>


        <a href="Profile.jsp">

            <i class="fa-regular fa-user"></i>

            Profile

        </a>


        <a href="OrderHistoryServlet" class="active">

            <i class="fa-solid fa-clock-rotate-left"></i>

            Orders

        </a>


    </nav>


</header>



<!-- =========================================
     HERO
========================================= -->

<section class="hero">


    <div class="hero-content">


        <h1>

            Order <span>History</span>

        </h1>


        <p>

            Track your previous orders and reorder your favourite meals.

        </p>


    </div>


    <i class="fa-solid fa-clock-rotate-left hero-icon"></i>


</section>



<!-- =========================================
     MAIN
========================================= -->

<main class="container">


    <!-- =====================================
         STATISTICS
    ====================================== -->

    <div class="stats">


        <div class="stat-card">


            <div class="stat-icon">

                <i class="fa-solid fa-receipt"></i>

            </div>


            <div class="stat-info">

                <h3><%=totalOrders%></h3>

                <p>Total Orders</p>

            </div>


        </div>

        <div class="stat-card">


            <div class="stat-icon">

                <i class="fa-solid fa-circle-check"></i>

            </div>


            <div class="stat-info">

                <h3><%=completedOrders %></h3>

                <p>Completed Orders</p>
                
<%session.setAttribute("completedOrders", completedOrders); %>

            </div>


        </div>



        <div class="stat-card">


            <div class="stat-icon">

                <i class="fa-solid fa-indian-rupee-sign"></i>

            </div>


            <div class="stat-info">

                <h3>₹<%=String.format("%.2f", totalSpent)%></h3>

                <p>Total Spent</p>

            </div>

<%session.setAttribute("totalSpent", totalSpent); %>
        </div>


    </div>



    <!-- =====================================
         TITLE
    ====================================== -->

    <div class="section-title">


        <h2>

            Recent Orders

        </h2>


        <span>

            <%=completedOrders %> Completed Order

        </span>


    </div>



    <!-- =====================================
         ORDER CARD
    ====================================== -->

<%
if (orderList != null && !orderList.isEmpty()) {

    for (Order order : orderList) {
%>

<div class="order-card">

    <div class="order-header">

        <div class="restaurant">

            <div class="food-icon">
                🍴
            </div>

            <div>

                <h3>
                    Restaurant #<%= order.getRestaurant_Id() %>
                </h3>

                <p>
                    Restaurant Order
                </p>

</div>
        </div>

        <div class="order-info">

            <div class="order-number">
                ORDER #<%= order.getOrder_Id() %>
            </div>

            <div class="order-date">
                <%= order.getOrder_Date() %>
            </div>

        </div>

    </div>


    <div class="status-area">

        <div class="status-badge">

            <span class="status-dot"></span>

            <%= order.getStatus() %>

        </div>

    </div>


    <div class="order-body">

        <div>

            <div class="items-title">
                Order Details
            </div>

            <div class="food-item">

                <div class="food-icon">
                    🍽️
                </div>

                <div class="food-info">

                    <h4>
                        Order #<%= order.getOrder_Id() %>
                    </h4>

                    <p>
                        Ordered on <%= order.getOrder_Date() %>
                    </p>

                </div>

                <div class="food-price">

                    ₹<%= order.getTotal_Amount() %> 

                </div>

            </div>

        </div>


        <div class="payment-box">

            <h3>
                Payment Summary
            </h3>

            <div class="payment-row">

                <span>
                    Payment Method
                </span>

                <strong>
                    <%= order.getPayment_Method() %>
                </strong>

            </div>

            <div class="payment-row">

                <span>
                    Status
                </span>

                <strong>
                    <%= order.getStatus() %>
                </strong>

            </div>

            <div class="payment-row total">

                <span>
                    Total
                </span>

                <span>
                    ₹<%= order.getTotal_Amount() %>
                </span>

            </div>

        </div>

    </div>

</div>

<br>

<%
    }

} else {
%>

<div class="order-card">

    <div style="padding:50px;text-align:center;">

        <h2>No Orders Found</h2>

        <p>You haven't placed any orders yet.</p>

    </div>

</div>

<%
}
%>

</main>



<!-- =========================================
     FOOTER
========================================= -->

<footer>


    <p>

        © 2026

        <span>🍴 <span >M E A L •</span> R U S H</span>

        — Delicious food delivered to your doorstep.

    </p>


</footer>


</body>

</html>
