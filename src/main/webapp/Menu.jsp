<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List,com.food_Application.model.*"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0">

<title>🍴 M E A L • R U S H - Restaurant Menu</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;500;600;700;800&display=swap"
	rel="stylesheet">


<style>

/* =================================
   GLOBAL
================================= */

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
	--gray:#6B7280;
	--light:#F5F7F8;
	--border:#E5E7EB;

}

body{

	background:var(--light);

	color:var(--black);

}


/* =================================
   NAVBAR
================================= */

nav{

	width:100%;

	height:75px;

	background:var(--black);

	display:flex;

	justify-content:space-between;

	align-items:center;

	padding:0 6%;

	position:sticky;

	top:0;

	z-index:1000;

	box-shadow:
	0 5px 20px rgba(0,0,0,0.25);

}


/* LOGO */

.logo{

	color:white;

	font-size:28px;

	font-weight:800;

	letter-spacing:1px;

}

.logo span{

	color:var(--green);

}


/* SEARCH */

.search{

	display:flex;

	width:45%;

	height:45px;

}

.search input{

	width:100%;

	border:none;

	outline:none;

	padding:0 18px;

	font-size:14px;

	border-radius:10px 0 0 10px;

}

.search button{

	width:55px;

	border:none;

	background:var(--green);

	cursor:pointer;

	font-size:16px;

	border-radius:0 10px 10px 0;

	transition:0.3s;

}

.search button:hover{

	background:var(--green-dark);

	color:white;

}


/* NAV LINKS */

.nav-links{

	display:flex;

	align-items:center;

	gap:15px;

}

.nav-links a{

	text-decoration:none;

	color:white;

	font-size:14px;

	font-weight:600;

	padding:10px 15px;

	border-radius:8px;

	transition:0.3s;

}

.nav-links a:hover{

	background:var(--green);

	color:var(--black);

}


/* =================================
   RESTAURANT BANNER
================================= */

.restaurant-banner{

	width:90%;

	max-width:1300px;

	height:350px;

	margin:35px auto;

	border-radius:22px;

	overflow:hidden;

	position:relative;

	box-shadow:
	0 15px 40px rgba(0,0,0,0.18);

}


/* IMAGE */

.restaurant-banner img{

	width:100%;

	height:100%;

	object-fit:cover;

	transition:0.5s;

}

.restaurant-banner:hover img{

	transform:scale(1.04);

}


/* DARK OVERLAY */

.restaurant-banner::after{

	content:"";

	position:absolute;

	inset:0;

	background:
	linear-gradient(
		to top,
		rgba(0,0,0,0.75),
		transparent 60%
	);

}


/* RESTAURANT INFO */

.restaurant-info{

	position:absolute;

	left:40px;

	bottom:35px;

	z-index:2;

	color:white;

}


.restaurant-info h1{

	font-size:40px;

	font-weight:800;

	margin-bottom:10px;

}


.restaurant-info p{

	font-size:15px;

	color:#E5E7EB;

}


.restaurant-meta{

	display:flex;

	gap:15px;

	margin-top:15px;

	flex-wrap:wrap;

}


.meta{

	background:rgba(255,255,255,0.15);

	backdrop-filter:blur(8px);

	padding:8px 14px;

	border-radius:20px;

	font-size:13px;

}


/* =================================
   MENU HEADER
================================= */

.menu-header{

	width:85%;

	max-width:1200px;

	margin:50px auto 30px;

	display:flex;

	justify-content:space-between;

	align-items:center;

}


.menu-header h2{

	font-size:30px;

	font-weight:800;

}


.menu-header p{

	color:var(--gray);

	font-size:14px;

	margin-top:6px;

}


/* =================================
   MENU CONTAINER
================================= */

.container{

	width:85%;

	max-width:1200px;

	margin:auto;

	display:grid;

	grid-template-columns:
	repeat(auto-fit,minmax(500px,1fr));

	gap:25px;

	padding-bottom:70px;

}


/* =================================
   MENU CARD
================================= */

.card{

	background:white;

	border-radius:18px;

	padding:18px;

	display:flex;

	align-items:center;

	gap:20px;

	border:1px solid var(--border);

	box-shadow:
	0 5px 20px rgba(0,0,0,0.06);

	transition:

	transform 0.3s,

	box-shadow 0.3s;

}


.card:hover{

	transform:translateY(-7px);

	box-shadow:
	0 15px 35px rgba(0,0,0,0.14);

}


/* =================================
   FOOD IMAGE
================================= */

.food-image{

	width:160px;

	height:150px;

	flex-shrink:0;

	border-radius:14px;

	overflow:hidden;

}


.food-image img{

	width:100%;

	height:100%;

	object-fit:cover;

	transition:0.5s;

}


.card:hover .food-image img{

	transform:scale(1.08);

}


/* =================================
   CONTENT
================================= */

.content{

	flex:1;

}


.content h2{

	font-size:21px;

	font-weight:800;

	margin-bottom:8px;

}


.content p{

	color:var(--gray);

	font-size:13px;

	line-height:1.6;

	margin-bottom:15px;

}


.price{

	font-size:22px;

	font-weight:800;

	color:var(--green-dark);

}


/* =================================
   ADD CART
================================= */

.cart-form{

	margin-left:auto;

}


.btn{

	width:135px;

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


.btn i{

	margin-right:6px;

}


.btn:hover{

	background:var(--green);

	color:var(--black);

	transform:translateY(-2px);

	box-shadow:
	0 8px 18px rgba(0,230,118,0.25);

}


/* =================================
   EMPTY MENU
================================= */

.empty-menu{

	grid-column:1/-1;

	text-align:center;

	background:white;

	padding:70px 20px;

	border-radius:18px;

}


.empty-menu i{

	font-size:50px;

	color:var(--green);

	margin-bottom:20px;

}


.empty-menu h2{

	margin-bottom:10px;

}


.empty-menu p{

	color:var(--gray);

}


/* =================================
   FOOTER
================================= */

footer{

	background:var(--black);

	color:white;

	text-align:center;

	padding:30px;

	font-size:14px;

}


footer span{

	color:var(--green);

	font-weight:700;

}


/* =================================
   RESPONSIVE
================================= */

@media(max-width:900px){

	nav{

		height:auto;

		padding:18px 5%;

		flex-wrap:wrap;

		gap:15px;

	}

	.search{

		order:3;

		width:100%;

	}

	.restaurant-banner{

		height:300px;

	}

	.restaurant-info h1{

		font-size:30px;

	}

	.container{

		grid-template-columns:1fr;

		width:90%;

	}

}


@media(max-width:600px){

	.restaurant-banner{

		width:92%;

		height:300px;

	}

	.restaurant-info{

		left:20px;

		bottom:25px;

	}

	.restaurant-info h1{

		font-size:25px;

	}

	.menu-header{

		width:90%;

	}

	.menu-header h2{

		font-size:24px;

	}

	.card{

		flex-direction:column;

		align-items:stretch;

	}

	.food-image{

		width:100%;

		height:200px;

	}

	.cart-form{

		margin:0;

	}

	.btn{

		width:100%;

	}

}

</style>

</head>


<body>


<!-- =================================
     NAVBAR
================================= -->

<nav>

<%
User user=(User)session.getAttribute("user");

%>

	<div class="logo">

		🍴 <span >M E A L •</span> R U S H

	</div>


	<div class="search">

		<input
			type="text"
			placeholder="Search delicious food...">

		<button>

			<i class="fa-solid fa-magnifying-glass"></i>

		</button>

	</div>


	<div class="nav-links">

		<a href="RestaurantServlet">

			<i class="fa-solid fa-house"></i>

			Home

		</a>


		<a href="Cart.jsp">

			<i class="fa-solid fa-cart-shopping"></i>

			Cart

		</a>


		<a href="Login.jsp">

			<i class="fa-solid fa-right-to-bracket"></i>

			Login

		</a>
		<%
		if(user!=null){
		%><a href="Profile.jsp">
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

	</div>


</nav>



<%

Restaurant restaurant =
	(Restaurant) request.getAttribute("restarant");

%>



<!-- =================================
     RESTAURANT BANNER
================================= -->

<div class="restaurant-banner">


	<img

		src="<%=restaurant.getImage_path()%>"

		alt="<%=restaurant.getRestaurant_Name()%>">


	<div class="restaurant-info">


		<h1>

			<%=restaurant.getRestaurant_Name()%>

		</h1>


		<p>

			<i class="fa-solid fa-utensils"></i>

			Delicious food made fresh for you

		</p>


		<div class="restaurant-meta">


			<div class="meta">

				<i class="fa-solid fa-star"></i>

				<%=restaurant.getRating() %> Rating

			</div>


			<div class="meta">

				<i class="fa-solid fa-clock"></i>

				<%=restaurant.getDelivery_Time()%> min

			</div>


			<div class="meta">

				<i class="fa-solid fa-location-dot"></i>

				 Available for Delivery

			</div>


		</div>


	</div>


</div>



<!-- =================================
     MENU HEADER
================================= -->

<div class="menu-header">


	<div>

		<h2>

			Explore Our Menu

		</h2>

		<p>

			Choose your favourite dishes and order now.

		</p>

	</div>


</div>



<!-- =================================
     MENU ITEMS
================================= -->

<div class="container">


<%

List<Menu> allMenu =

	(List<Menu>) request.getAttribute("allMenu");


if(allMenu != null && !allMenu.isEmpty()){


	for(Menu menu : allMenu){

%>


	<!-- MENU CARD -->

	<div class="card">


		<!-- FOOD IMAGE -->

		<div class="food-image">


			<img

				src="<%=menu.getImage_Path()%>"

				alt="<%=menu.getItem_Name()%>">


		</div>



		<!-- FOOD DETAILS -->

		<div class="content">


			<h2>

				<%=menu.getItem_Name()%>

			</h2>


			<p>

				<%=menu.getDescription()%>

			</p>


			<div class="price">

				₹<%=menu.getPrice()%>

			</div>


		</div>



		<!-- ADD CART -->

		<form

			action="CartServlet"

			method="post"

			class="cart-form">


			<input

				type="hidden"

				name="Menu_Id"

				value="<%=menu.getMenu_Id()%>">


			<input

				type="hidden"

				name="Restaurant_Id"

				value="<%=menu.getRestaurant_Id()%>">


			<input

				type="hidden"

				name="quantity"

				value="1">


			<input

				type="hidden"

				name="action"

				value="add">


			<button

				type="submit"

				class="btn">


				<i class="fa-solid fa-cart-plus"></i>

				Add to Cart


			</button>


		</form>


	</div>


<%

	}

}else{

%>


	<div class="empty-menu">


		<i class="fa-solid fa-utensils"></i>


		<h2>

			Menu Not Available

		</h2>


		<p>

			Sorry, this restaurant hasn't added any menu items yet.

		</p>


	</div>


<%

}

%>


</div>



<!-- =================================
     FOOTER
================================= -->

<footer>


	<p>

		© 2026

		<span>🍴 <span >M E A L •</span> R U S H</span>

		— Delicious food delivered to your doorstep.

	</p>


</footer>


</body>

</html>