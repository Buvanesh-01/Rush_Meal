<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Order Confirmed | MEAL • RUSH</title>

<link
	href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;600;700;800&display=swap"
	rel="stylesheet">

<style>

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Archivo', sans-serif;
}

body {
	min-height: 100vh;
	background: #F4F7F6;
	display: flex;
	align-items: center;
	justify-content: center;
}

/* MAIN CARD */

.confirmation-card {
	width: 90%;
	max-width: 550px;
	background: white;
	padding: 55px 40px;
	border-radius: 20px;
	text-align: center;
	box-shadow: 0 20px 60px rgba(0,0,0,0.12);
	animation: cardShow 0.7s ease;
}

/* CONFIRMATION CIRCLE */

.confirmation-icon {
	width: 110px;
	height: 110px;
	margin: 0 auto 30px;
	background: #00E676;
	border-radius: 50%;
	display: flex;
	align-items: center;
	justify-content: center;
	box-shadow: 0 0 0 15px rgba(0,230,118,0.12),
	            0 0 0 30px rgba(0,230,118,0.06);
	animation: pop 0.8s ease;
}

/* CHECK SYMBOL */

.confirmation-icon::after {
	content: "✓";
	color: #0E1016;
	font-size: 65px;
	font-weight: 800;
	animation: checkShow 0.5s ease 0.4s both;
}

/* TEXT */

h1 {
	color: #0E1016;
	font-size: 32px;
	font-weight: 800;
	margin-bottom: 12px;
}

h1 span {
	color: #00B85C;
}

p {
	color: #6B7280;
	font-size: 15px;
	line-height: 1.6;
	margin-bottom: 30px;
}

/* BUTTON */

.home-btn {
	display: inline-block;
	padding: 14px 30px;
	background: #0E1016;
	color: white;
	text-decoration: none;
	border-radius: 8px;
	font-size: 14px;
	font-weight: 700;
	transition: 0.3s;
}

.home-btn:hover {
	background: #00E676;
	color: #0E1016;
	transform: translateY(-3px);
	box-shadow: 0 10px 25px rgba(0,230,118,0.25);
}

/* ANIMATIONS */

@keyframes pop {

	0% {
		transform: scale(0);
	}

	70% {
		transform: scale(1.15);
	}

	100% {
		transform: scale(1);
	}

}

@keyframes checkShow {

	0% {
		opacity: 0;
		transform: scale(0.3);
	}

	100% {
		opacity: 1;
		transform: scale(1);
	}

}

@keyframes cardShow {

	0% {
		opacity: 0;
		transform: translateY(30px);
	}

	100% {
		opacity: 1;
		transform: translateY(0);
	}

}

/* MOBILE */

@media(max-width:500px) {

	.confirmation-card {
		padding: 45px 25px;
	}

	h1 {
		font-size: 27px;
	}

	.confirmation-icon {
		width: 90px;
		height: 90px;
	}

	.confirmation-icon::after {
		font-size: 52px;
	}

}

</style>

</head>


<body>


<div class="confirmation-card">

	<!-- CONFIRMATION SYMBOL -->

	<div class="confirmation-icon"></div>


	<h1>
		Order <span>Confirmed!</span>
	</h1>


	<p>
		Your order has been successfully placed.
		Thank you for ordering with MEAL • RUSH.
	</p>


	<a href="RestaurantServlet" class="home-btn">
		Back to Home
	</a>

</div>


</body>

</html>