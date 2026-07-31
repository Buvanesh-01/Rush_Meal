<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.food_Application.model.*" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>M E A L • R U S H | Restaurants</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;500;600;700;800&display=swap"
rel="stylesheet">

<style>

/* ===============================
   GLOBAL
================================ */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Archivo',sans-serif;
}

:root{
    --black:#0e1016;
    --dark:#171a21;
    --green:#00e676;
    --green-dark:#00b85c;
    --white:#ffffff;
    --light:#f5f7f8;
    --gray:#6b7280;
}

body{
    background:var(--light);
    color:var(--black);
}


/* ===============================
   NAVBAR
================================ */

nav{
    height:75px;
    background:rgba(14,16,22,0.98);
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding:0 6%;
    position:sticky;
    top:0;
    z-index:1000;
    box-shadow:0 5px 25px rgba(0,0,0,0.25);
}

.logo{
    color:white;
    font-size:28px;
    font-weight:800;
    letter-spacing:1px;
}

.logo span{
    color:var(--green);
}

nav ul{
    display:flex;
    align-items:center;
    gap:30px;
    list-style:none;
}

nav ul li a{
    color:white;
    text-decoration:none;
    font-size:14px;
    font-weight:600;
    transition:0.3s;
}

nav ul li a i{
    margin-right:6px;
}

nav ul li a:hover{
    color:var(--green);
}


/* ===============================
   HERO
================================ */

.hero{
    height:400px;
    position:relative;
    background:
    linear-gradient(
        rgba(0,0,0,0.55),
        rgba(0,0,0,0.65)
    ),
    url("https://images.unsplash.com/photo-1504674900247-0877df9cc836")
    center/cover no-repeat;

    display:flex;
    justify-content:center;
    align-items:center;
    text-align:center;
}

.hero-content{
    color:white;
    max-width:800px;
    padding:20px;
}

.hero-content h1{
    font-size:52px;
    font-weight:800;
    margin-bottom:15px;
    letter-spacing:-1px;
}

.hero-content p{
    font-size:18px;
    color:#e5e7eb;
    margin-bottom:30px;
}


/* SEARCH */

.search-box{
    width:600px;
    max-width:90%;
    height:58px;
    background:white;
    border-radius:50px;
    display:flex;
    align-items:center;
    padding:5px;
    margin:auto;
    box-shadow:0 10px 35px rgba(0,0,0,0.3);
}

.search-box input{
    flex:1;
    height:100%;
    border:none;
    outline:none;
    padding:0 20px;
    font-size:15px;
    border-radius:50px;
}

.search-box button{
    width:50px;
    height:48px;
    border:none;
    border-radius:50%;
    background:var(--green);
    color:var(--black);
    font-size:18px;
    cursor:pointer;
    transition:0.3s;
}

.search-box button:hover{
    background:var(--green-dark);
    color:white;
    transform:scale(1.05);
}


/* ===============================
   SECTION TITLE
================================ */

.restaurant-header{
    width:90%;
    max-width:1300px;
    margin:50px auto 25px;

    display:flex;
    justify-content:space-between;
    align-items:center;
}

.restaurant-header h2{
    font-size:30px;
    font-weight:800;
}

.restaurant-header p{
    color:var(--gray);
    margin-top:5px;
}


/* ===============================
   RESTAURANT GRID
================================ */

.restaurants{
    width:90%;
    max-width:1300px;
    margin:0 auto 70px;

    display:grid;
    grid-template-columns:
    repeat(auto-fit,minmax(280px,1fr));

    gap:28px;
}


/* ===============================
   CARD
================================ */

.restaurant-link{
    text-decoration:none;
    color:inherit;
}

.card{
    background:white;
    border-radius:18px;
    overflow:hidden;
    position:relative;

    box-shadow:
    0 5px 20px rgba(0,0,0,0.07);

    transition:
    transform 0.35s ease,
    box-shadow 0.35s ease;
}

.card:hover{
    transform:translateY(-10px);
    box-shadow:
    0 18px 40px rgba(0,0,0,0.16);
}


/* IMAGE */

.image-container{
    height:220px;
    position:relative;
    overflow:hidden;
}

.card img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:0.5s;
}

.card:hover img{
    transform:scale(1.08);
}


/* IMAGE DARK GRADIENT */

.image-container::after{
    content:"";
    position:absolute;
    left:0;
    right:0;
    bottom:0;
    height:80px;

    background:
    linear-gradient(
        transparent,
        rgba(0,0,0,0.65)
    );
}


/* RATING */

.rating{
    position:absolute;
    top:15px;
    right:15px;
    z-index:2;

    background:white;
    color:#111;

    padding:7px 11px;
    border-radius:30px;

    font-size:13px;
    font-weight:700;

    box-shadow:0 4px 12px rgba(0,0,0,0.2);
}

.rating i{
    color:#ffc107;
}


/* DELIVERY */

.delivery{
    position:absolute;
    bottom:15px;
    left:15px;
    z-index:2;

    color:white;
    font-size:13px;
    font-weight:600;
}


/* CARD CONTENT */

.card-content{
    padding:20px;
}

.card-content h2{
    font-size:22px;
    font-weight:800;
    margin-bottom:10px;
}

.cuisine{
    display:inline-block;

    background:#e8fff2;
    color:#00a653;

    padding:6px 12px;
    border-radius:20px;

    font-size:12px;
    font-weight:700;

    margin-bottom:14px;
}

.address{
    color:var(--gray);
    font-size:13px;
    line-height:1.5;

    white-space:nowrap;
    overflow:hidden;
    text-overflow:ellipsis;

    margin-bottom:18px;
}

.address i{
    color:var(--green-dark);
    margin-right:5px;
}


/* BUTTON */

.menu-btn{
    width:100%;
    height:45px;

    border:none;
    border-radius:10px;

    background:var(--black);
    color:white;

    font-size:14px;
    font-weight:700;

    cursor:pointer;

    transition:0.3s;
}

.menu-btn i{
    margin-left:7px;
    transition:0.3s;
}

.card:hover .menu-btn{
    background:var(--green);
    color:var(--black);
}

.card:hover .menu-btn i{
    transform:translateX(5px);
}


/* ===============================
   FOOTER
================================ */

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


/* ===============================
   SCROLLBAR
================================ */

::-webkit-scrollbar{
    width:8px;
}

::-webkit-scrollbar-thumb{
    background:var(--green);
    border-radius:10px;
}

::-webkit-scrollbar-track{
    background:#eee;
}


/* ===============================
   RESPONSIVE
================================ */

@media(max-width:800px){

    nav{
        height:auto;
        padding:18px 5%;
        flex-direction:column;
        gap:15px;
    }

    nav ul{
        gap:15px;
        flex-wrap:wrap;
        justify-content:center;
    }

    nav ul li a{
        font-size:12px;
    }

    .hero{
        height:430px;
    }

    .hero-content h1{
        font-size:36px;
    }

    .hero-content p{
        font-size:15px;
    }

    .restaurant-header{
        width:88%;
        flex-direction:column;
        align-items:flex-start;
        gap:5px;
    }

    .restaurants{
        width:88%;
        grid-template-columns:1fr;
    }

}

</style>

</head>


<body>


<!-- ===============================
     NAVBAR
================================ -->

<nav>
<%
User user=(User)session.getAttribute("user");

%>
    <div class="logo">
        🍴 <span >M E A L •</span> R U S H
    </div>

    <ul>

        <li>
            <a href="RestaurantServlet">
                <i class="fa-solid fa-house"></i>
                Home
            </a>
        </li>

        

        <li>
            <a href="Cart.jsp" >
                <i class="fa-solid fa-cart-shopping"></i>
                Cart
            </a>
        </li>

        <li>
        <% if(user!=null){
        	%>
        	<a href="Login.jsp">
                <i class="fa-solid fa-right-to-bracket"></i>
                LogOut
            </a>
            <% 
        }else{
        %>
        
            <a href="Login.jsp">
                <i class="fa-solid fa-right-to-bracket"></i>
                Login
            </a>
            <%
            }
          %>
        </li>
        
        <li>
        <%
				if(user!=null){        
        %>
            <a href="Profile.jsp">
                <i class="fa-regular fa-user"></i>
                <%=user.getUser_Name()%>
            </a>
            <%
				} else{
            %>
            	<a href="Login.jsp">
                <i class="fa-regular fa-user"></i>
                profile
            </a>
            <%
            }
            %>
        </li>

    </ul>

</nav>



<!-- ===============================
     HERO
================================ -->

<section class="hero">

    <div class="hero-content">

        <h1>
            Discover Your Next
            <br>
            Favourite Meal
        </h1>

        <p>
            Explore the best restaurants and delicious food near you.
        </p>

        <div class="search-box">

            <input
                type="text"
                placeholder="Search restaurants or cuisines...">

            <button>
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>

        </div>

    </div>

</section>



<!-- ===============================
     RESTAURANT TITLE
================================ -->

<div class="restaurant-header">

    <div>

        <h2>
            Popular Restaurants
        </h2>

        <p>
            Choose your favourite restaurant and order delicious food.
        </p>

    </div>

</div>



<!-- ===============================
     RESTAURANT CARDS
================================ -->

<section class="restaurants">

<%
List<Restaurant> allRestaurant =
    (List<Restaurant>) request.getAttribute("allRestaurant");

if(allRestaurant != null && !allRestaurant.isEmpty()){

    for(Restaurant res : allRestaurant){
%>


<a class="restaurant-link"
   href="menuServlet?restaurant_Id=<%=res.getRestaurant_Id()%>">

    <div class="card">


        <!-- RESTAURANT IMAGE -->

        <div class="image-container">

            <img
                src="<%=res.getImage_path()%>"
                alt="<%=res.getRestaurant_Name()%>">


            <!-- RATING -->

            <div class="rating">

                <i class="fa-solid fa-star"></i>

                <%=res.getRating()%>

            </div>


            <!-- DELIVERY TIME -->

            <div class="delivery">

                <i class="fa-solid fa-clock"></i>

                <%=res.getDelivery_Time()%>

            </div>

        </div>



        <!-- CARD CONTENT -->

        <div class="card-content">


            <h2>
                <%=res.getRestaurant_Name()%>
            </h2>


            <div class="cuisine">

                <i class="fa-solid fa-utensils"></i>

                <%=res.getCuisine_Type()%>

            </div>


            <p class="address">

                <i class="fa-solid fa-location-dot"></i>

                <%=res.getAddress()%>

            </p>


            <button class="menu-btn">

                View Menu

                <i class="fa-solid fa-arrow-right"></i>

            </button>


        </div>

    </div>

</a>


<%
    }

}else{
%>

    <div style="
        grid-column:1/-1;
        text-align:center;
        padding:60px;
    ">

        <h2>No Restaurants Found</h2>

        <p style="margin-top:10px;color:#777;">
            Please check again later.
        </p>

    </div>

<%
}
%>

</section>



<!-- ===============================
     FOOTER
================================ -->

<footer>

    <p>
        © 2026 <span>M E A L • R U S H</span>.
        Delicious food delivered to your door.
    </p>

</footer>


</body>
</html>