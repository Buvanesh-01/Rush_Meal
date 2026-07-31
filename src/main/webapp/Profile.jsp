
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.food_Application.model.*"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>My Profile | 🍴 <span>M E A L •</span> R U S H
</title>


<!-- FONT AWESOME -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">


<!-- GOOGLE FONT -->

<link
	href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;500;600;700;800&display=swap"
	rel="stylesheet">

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
	font-family: 'Archivo', Arial, sans-serif;
}

:root {
	--black: #0E1016;
	--dark: #171A21;
	--green: #00E676;
	--green-dark: #00B85C;
	--white: #FFFFFF;
	--light: #F4F7F8;
	--gray: #6B7280;
	--border: #E5E7EB;
}

body {
    background: var(--light);
    color: var(--black);
    margin: 0;
    padding: 0;
}

/* =========================================
   NAVBAR
========================================= */
header {
	height: 75px;
	background: var(--black);
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 7%;
	position: sticky;
	top: 0;
	z-index: 1000;
	box-shadow: 0 5px 20px rgba(0, 0, 0, .2);
}

.logo {
	color: white;
	font-size: 27px;
	font-weight: 800;
	letter-spacing: 1px;
}

.logo span {
	color: var(--green);
}

/* NAVIGATION */
.nav-links {
	display: flex;
	align-items: center;
	gap: 8px;
}

.nav-links a {
	color: white;
	text-decoration: none;
	padding: 10px 15px;
	border-radius: 8px;
	font-size: 13px;
	font-weight: 600;
	transition: .3s;
}

.nav-links a:hover {
	background: var(--green);
	color: var(--black);
}

.nav-links .active {
	background: rgba(0, 230, 118, .15);
	color: var(--green);
}

/* =========================================
   HERO PROFILE HEADER
========================================= */
.profile-hero {
	height: 250px;
	background: linear-gradient(135deg, #0E1016, #171A21);
	position: relative;
	display: flex;
	align-items: center;
	justify-content: center;
	overflow: hidden;
}

/* Decorative Circle */
.profile-hero::before {
	content: "";
	position: absolute;
	width: 400px;
	height: 400px;
	border-radius: 50%;
	border: 60px solid rgba(0, 230, 118, .05);
	right: -100px;
	top: -200px;
}

.profile-hero::after {
	content: "";
	position: absolute;
	width: 300px;
	height: 300px;
	border-radius: 50%;
	border: 40px solid rgba(0, 230, 118, .04);
	left: -120px;
	bottom: -200px;
}

/* Hero Content */
.hero-content {
	text-align: center;
	position: relative;
	z-index: 2;
}

.hero-content h1 {
	color: white;
	font-size: 38px;
	font-weight: 800;
	margin-bottom: 8px;
}

.hero-content h1 span {
	color: var(--green);
}

.hero-content p {
	color: #9CA3AF;
	font-size: 14px;
}

/* =========================================
   MAIN CONTAINER
========================================= */
.container {
    width: 88%;
    max-width: 1150px;
    margin: -70px auto 0;
    position: relative;
    z-index: 10;
    display: grid;
    grid-template-columns: 1.4fr 1fr;
    gap: 30px;

}
/* =========================================
   PROFILE CARD
========================================= */
.profile-card {
	background: white;
	border-radius: 20px;
	padding: 35px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, .1);
	border: 1px solid var(--border);
	position: relative;
	overflow: hidden;
}

/* Green Top Line */
.profile-card::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 5px;
	background: var(--green);
}

/* EDIT BUTTON */
.edit-profile {
	position: absolute;
	top: 25px;
	right: 25px;
	text-decoration: none;
	background: var(--black);
	color: white;
	padding: 10px 16px;
	border-radius: 8px;
	font-size: 12px;
	font-weight: 700;
	transition: .3s;
}

.edit-profile i {
	color: var(--green);
	margin-right: 5px;
}

.edit-profile:hover {
	background: var(--green);
	color: var(--black);
	transform: translateY(-3px);
}

.edit-profile:hover i {
	color: var(--black);
}

/* PROFILE TOP */
.profile-top {
	text-align: center;
	padding-bottom: 30px;
	border-bottom: 1px solid var(--border);
}

/* PROFILE IMAGE */
.profile-img-container {
	position: relative;
	display: inline-block;
	margin-top: 10px;
}

.profile-img {
	width: 145px;
	height: 145px;
	border-radius: 50%;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 65px;
	color: var(--green-dark);
	background: #F8FAFA;
	border: 6px solid white;
	box-shadow: 0 0 0 4px var(--green), 0 10px 25px rgba(0, 0, 0, 0.2);
}
/* ONLINE STATUS */
.online {
	position: absolute;
	width: 22px;
	height: 22px;
	background: var(--green);
	border: 4px solid white;
	border-radius: 50%;
	right: 5px;
	bottom: 10px;
}

/* USER NAME */
.profile-top h2 {
	font-size: 28px;
	margin-top: 20px;
	margin-bottom: 7px;
}

.profile-top p {
	color: var(--gray);
	font-size: 13px;
}

/* =========================================
   USER INFORMATION
========================================= */
.user-info {
	margin-top: 25px;
	display: grid;
	gap: 15px;
}

.info-box {
	display: flex;
	align-items: center;
	gap: 15px;
	padding: 15px;
	background: #F8FAFA;
	border: 1px solid var(--border);
	border-radius: 12px;
	transition: .3s;
}

.info-box:hover {
	border-color: var(--green);
	transform: translateX(5px);
}

.info-icon {
	width: 42px;
	height: 42px;
	display: flex;
	align-items: center;
	justify-content: center;
	background: rgba(0, 230, 118, .12);
	color: var(--green-dark);
	border-radius: 10px;
	font-size: 17px;
}

.info-content {
	flex: 1;
}

.info-label {
	display: block;
	color: var(--gray);
	font-size: 11px;
	margin-bottom: 4px;
	text-transform: uppercase;
	font-weight: 700;
	letter-spacing: .05em;
}

.info-value {
	font-size: 14px;
	font-weight: 600;
	color: var(--black);
}

/* =========================================
   QUICK STATS
========================================= */
.quick-stats {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	gap: 10px;
	margin-top: 25px;
}

.stat {
	background: var(--black);
	color: white;
	text-align: center;
	padding: 15px 5px;
	border-radius: 10px;
}

.stat h3 {
	color: var(--green);
	font-size: 20px;
	margin-bottom: 3px;
}

.stat p {
	color: #9CA3AF;
	font-size: 10px;
}

/* =========================================
   ACCOUNT MENU
========================================= */
.menu {
	background: white;
	border-radius: 20px;
	padding: 30px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, .08);
	border: 1px solid var(--border);
}

.menu-title {
	margin-bottom: 22px;
}

.menu-title h2 {
	font-size: 22px;
	font-weight: 800;
}

.menu-title p {
	color: var(--gray);
	font-size: 12px;
	margin-top: 5px;
}

/* MENU LIST */
.menu ul {
	list-style: none;
	display: flex;
	flex-direction: column;
	gap: 12px;
}

.menu ul li a {
	display: flex;
	align-items: center;
	gap: 15px;
	padding: 16px;
	background: #F8FAFA;
	border: 1px solid var(--border);
	border-radius: 12px;
	text-decoration: none;
	color: var(--black);
	font-size: 14px;
	font-weight: 600;
	transition: .3s;
}

.menu ul li a i {
	width: 42px;
	height: 42px;
	display: flex;
	align-items: center;
	justify-content: center;
	background: white;
	color: var(--green-dark);
	border-radius: 10px;
	font-size: 17px;
	box-shadow: 0 3px 8px rgba(0, 0, 0, .06);
}

.menu ul li a span {
	flex: 1;
}

.menu ul li a .arrow {
	color: #9CA3AF;
	font-size: 12px;
}

.menu ul li a:hover {
	background: var(--black);
	color: white;
	border-color: var(--black);
	transform: translateX(6px);
}

.menu ul li a:hover i {
	background: var(--green);
	color: var(--black);
}

.menu ul li a:hover .arrow {
	color: var(--black);
}

/* LOGOUT */
.menu ul li:last-child a {
	color: #EF4444;
}

.menu ul li:last-child a i {
	color: #EF4444;
}

.menu ul li:last-child a:hover {
	background: #EF4444;
	color: white;
}

.menu ul li:last-child a:hover i {
	background: white;
	color: #EF4444;
}

/* =========================================
   FOOTER
========================================= */
footer {
    background: var(--black);
    color: #9CA3AF;
    text-align: center;
    padding: 25px;
    font-size: 13px;
    margin: 0;
}

footer span {
	color: var(--green);
	font-weight: 700;
}

/* =========================================
   RESPONSIVE
========================================= */
@media ( max-width :900px) {
	.container {
		grid-template-columns: 1fr;
		margin-top: -50px;
	}
}

@media ( max-width :600px) {
	header {
		padding: 0 20px;
	}
	.nav-links a {
		display: none;
	}
	.nav-links a:last-child {
		display: block;
	}
	.profile-hero {
		height: 220px;
	}
	.hero-content h1 {
		font-size: 30px;
	}
	.container {
		width: 92%;
		margin-top: -40px;
	}
	.profile-card {
		padding: 25px 20px;
	}
	.menu {
		padding: 22px;
	}
	.edit-profile {
		top: 20px;
		right: 20px;
	}
	@media ( max-width :550px) {
		.profile-img {
			width: 125px;
			height: 125px;
			font-size: 55px;
		}
	}
}
</style>

</head>


<body>


	<!-- =========================================
     NAVBAR
========================================= -->

	<header>


		<div class="logo">🍴 M E A L • R U S H</div>


		<nav class="nav-links">
			<%


User user=(User)session.getAttribute("user");

%>
			<a href="RestaurantServlet"> <i class="fa-solid fa-house"></i>

				Home

			</a> <a href="RestaurantServlet"> <i class="fa-solid fa-utensils"></i>

				Restaurants

			</a> <a href="Cart.jsp"> <i class="fa-solid fa-cart-shopping"></i>

				Cart

			</a> <a href="OrderHistoryServlet"> <i
				class="fa-solid fa-clock-rotate-left"></i> Orders

			</a>


			<%
		if(user!=null){
		%><a href="Profile.jsp"> <i class="fa-regular fa-user"></i> <%=user.getUser_Name()%>
			</a>
			<%
				}
            %>


		</nav>


	</header>



	<!-- =========================================
     PROFILE HERO
========================================= -->

	<section class="profile-hero">


		<div class="hero-content">


			<h1>

				My <span>Profile</span>

			</h1>


			<p>Manage your personal information and account preferences</p>


		</div>


	</section>



	<!-- =========================================
     MAIN CONTENT
========================================= -->

	<div class="container">


		<!-- =====================================
         PROFILE CARD
    ====================================== -->

		<div class="profile-card">


			<!-- EDIT -->

			<a href="EditProfile.jsp" class="edit-profile"> <i
				class="fa-solid fa-pen"></i> Edit Profile

			</a>



			<!-- PROFILE TOP -->

			<div class="profile-top">


				<div class="profile-img-container">


					<i class="fa-solid fa-user profile-img"></i> <span class="online"></span>


				</div>


				<h2>

					<%=user.getUser_Name() %>

				</h2>


				<p>🍴 M E A L • R U S H Food Lover 🍴</p>


			</div>



			<!-- USER INFORMATION -->

			<div class="user-info">


				<!-- NAME -->

				<div class="info-box">


					<div class="info-icon">

						<i class="fa-solid fa-user"></i>

					</div>


					<div class="info-content">


						<span class="info-label"> Full Name </span> <span
							class="info-value"> <%=user.getUser_Name() %>

						</span>


					</div>


				</div>



				<!-- EMAIL -->

				<div class="info-box">


					<div class="info-icon">

						<i class="fa-solid fa-envelope"></i>

					</div>


					<div class="info-content">


						<span class="info-label"> Email Address </span> <span
							class="info-value"> <%=user.getEmail() %>

						</span>


					</div>


				</div>



				<!-- ADDRESS -->

				<div class="info-box">


					<div class="info-icon">

						<i class="fa-solid fa-location-dot"></i>

					</div>


					<div class="info-content">


						<span class="info-label"> Delivery Address </span> <span
							class="info-value"> <%=user.getAddress()%>

						</span>


					</div>


				</div>


			</div>



			<!-- QUICK STATS -->

			<div class="quick-stats">
				<div class="stat">
					<%Integer completedOrders=(Integer)session.getAttribute("completedOrders"); %>


					<h3><%=completedOrders %></h3>

					<p>Orders</p>


				</div>


				<div class="stat">

					<%Double totalSpent=(Double)session.getAttribute("totalSpent"); %>
					<h3>
						₹<%=String.format("%.2f", totalSpent)%></h3>

					<p>Total Spent</p>


				</div>


				<div class="stat">


					<h3>★</h3>

					<p>Food Lover</p>


				</div>


			</div>


		</div>



		<!-- =====================================
         ACCOUNT MENU
    ====================================== -->

		<div class="menu">


			<div class="menu-title">


				<h2>Account Settings</h2>


				<p>Manage your 🍴 M E A L • R U S H account</p>


			</div>



			<ul>


				<!-- ADDRESSES -->

				<li><a href="AddressServlet"> <i
						class="fa-solid fa-location-dot"></i> <span> My Addresses </span>


						<i class="fa-solid fa-chevron-right arrow"></i>


				</a></li>



				<!-- ORDERS -->

				<li><a href="OrderHistoryServlet"> <i
						class="fa-solid fa-receipt"></i> <span> Order History </span> <i
						class="fa-solid fa-chevron-right arrow"></i>


				</a></li>



				<!-- PAYMENT -->

				<li><a href="PaymentServlet"> <i
						class="fa-solid fa-credit-card"></i> <span> Payment Methods

					</span> <i class="fa-solid fa-chevron-right arrow"></i>


				</a></li>



				<!-- SETTINGS -->

				<li><a href="Settings.jsp"> <i class="fa-solid fa-gear"></i>


						<span> Settings </span> <i class="fa-solid fa-chevron-right arrow"></i>


				</a></li>



				<!-- HELP -->

				<li><a href="Help.jsp"> <i class="fa-solid fa-headset"></i>


						<span> Help & Support </span> <i
						class="fa-solid fa-chevron-right arrow"></i>


				</a></li>



				<!-- LOGOUT -->

				<li><a href="LogoutServlet"> <i
						class="fa-solid fa-right-from-bracket"></i> <span> Logout </span>


						<i class="fa-solid fa-chevron-right arrow"></i>


				</a></li>


			</ul>


		</div>


	</div>



	<!-- =========================================
     FOOTER
========================================= -->

	<footer>


		© 2026 🍴 <span>M E A L •</span> R U S H — Delicious food delivered
		to your doorstep.


	</footer>


</body>

</html>
```
