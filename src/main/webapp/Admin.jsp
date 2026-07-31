<%@page import="java.util.concurrent.FutureTask"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.food_Application.model.*"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>MEAL RUSH | Admin Dashboard</title>

<link
	href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;500;600;700;800&family=Archivo+Black&display=swap"
	rel="stylesheet">


<%
List<Restaurant> allRestaurant=(List<Restaurant>)request.getAttribute("allRestaurant"); 
List <User> users=(List <User>)request.getAttribute("Users");
List<Order> allOrder=(List<Order>)request.getAttribute("allOrder");
Double total_Amount=(Double)request.getAttribute("totalRevenue");

%>
<style>
:root {
	--primary: #0E1016;
	--secondary: #5B6270;
	--green: #00E676;
	--light: #F1F3F5;
	--white: #FFFFFF;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Archivo', sans-serif;
}

body {
	background: var(--light);
}

/*======================
NAVBAR
======================*/
nav {
	height: 75px;
	background: var(--primary);
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 0 50px;
	color: white;
	position: sticky;
	top: 0;
	z-index: 100;
}

.logo {
	font-size: 30px;
	font-family: 'Archivo Black';
	letter-spacing: 2px;
}

.admin {
	background: var(--green);
	color: black;
	padding: 10px 20px;
	border-radius: 5px;
	font-weight: bold;
}

/*======================
HERO
======================*/
.hero {
	width: 94%;
	height: 320px;
	margin: 30px auto;
	border-radius: 10px;
	overflow: hidden;
	position: relative;
}

.hero img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.hero::after {
	content: "";
	position: absolute;
	inset: 0;
	background: rgba(0, 0, 0, .55);
}

.hero-content {
	position: absolute;
	top: 50%;
	left: 60px;
	transform: translateY(-50%);
	color: white;
	width: 45%;
	z-index: 5;
}

.hero-content h1 {
	font-size: 52px;
	font-family: 'Archivo Black';
}

.hero-content p {
	margin: 20px 0;
	line-height: 1.7;
}

.hero-btn {
	text-decoration: none;
	background: var(--green);
	color: black;
	padding: 14px 25px;
	border-radius: 5px;
	font-weight: bold;
}

/*======================
STATISTICS
======================*/
.stats {
	width: 94%;
	margin: 35px auto;
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	gap: 20px;
}

.card {
	background: white;
	padding: 25px;
	border-radius: 8px;
	box-shadow: 0 10px 20px rgba(0, 0, 0, .08);
}

.card h4 {
	color: var(--secondary);
	margin-bottom: 10px;
	text-transform: uppercase;
}

.card h1 {
	color: var(--primary);
	font-size: 40px;
}

.green {
	color: var(--green);
}

/*======================
HEADER
======================*/
.header {
	width: 94%;
	margin: auto;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.header h2 {
	font-size: 35px;
}

.controls {
	display: flex;
	gap: 15px;
}

.search {
	padding: 12px;
	width: 260px;
	border: 1px solid #ddd;
	border-radius: 5px;
	outline: none;
}

.add {
	text-decoration: none;
	background: var(--green);
	color: black;
	padding: 12px 22px;
	border-radius: 5px;
	font-weight: bold;
}

/*======================
TABLE
======================*/
.table-box {
	width: 94%;
	margin: 25px auto 40px;
	background: white;
	border-radius: 8px;
	overflow: hidden;
	box-shadow: 0 10px 20px rgba(0, 0, 0, .08);
}

table {
	width: 100%;
	border-collapse: collapse;
}

th {
	background: var(--primary);
	color: white;
	padding: 18px;
	text-transform: uppercase;
	letter-spacing: 2px;
	font-size: 13px;
}

td {
	text-align: center;
	padding: 18px;
	border-bottom: 1px solid #eee;
}

tbody tr:hover {
	background: #fafafa;
}

.restaurant {
	width: 110px;
	height: 80px;
	object-fit: cover;
	border-radius: 6px;
}

.rating {
	color: #ff9800;
	font-weight: bold;
}

.active {
	background: var(--green);
	color: black;
	padding: 6px 12px;
	border-radius: 4px;
	font-weight: bold;
}

.inactive {
	background: #ff4d4d;
	color: white;
	padding: 6px 12px;
	border-radius: 4px;
	font-weight: bold;
}

.edit {
	background: var(--primary);
	color: white;
	text-decoration: none;
	padding: 10px 18px;
	border-radius: 4px;
	transition: .3s;
}

.edit:hover {
	background: var(--green);
	color: black;
}

</style>

</head>

<body>

	<nav>

		<div class="logo">🍴 MEAL RUSH</div>

		<div class="admin">ADMIN PANEL</div>

	</nav>

	<div class="hero">

		<img src="images\resturant_image\Admin header (2).png">

		<div class="hero-content">

			<h1>Restaurant Management</h1>

			<p>Manage restaurants, update information, monitor ratings and
				grow your food delivery platform.</p>

			<a href="javascript:void(0)" class="hero-btn" onclick="showForm()">
				+ Add Restaurant </a>

		</div>

	</div>

	<div class="stats">

		<div class="card">

			<h4>Total Restaurants</h4>

			<h1><%=allRestaurant.size()%></h1>

		</div>

		<div class="card">

			<h4>Total Orders</h4>

			<h1 class="green"><%=allOrder.size() %></h1>

		</div>

		<div class="card">

			<h4>Customers</h4>

			<h1><%=users.size()%></h1>

		</div>

		<div class="card">

			<h4>Revenue</h4>

			<h1 class="green">
				₹<%=total_Amount %></h1>

		</div>

	</div>


	<div class="header">

		<h2>All Restaurants</h2>

		<div class="controls">

			<input type="text" class="search" placeholder="Search Restaurant...">

			<a href="javascript:void(0)" class="hero-btn" onclick="showForm()">
				+ Add Restaurant </a>

		</div>

	</div>

	<div class="table-box">

		<table>

			<thead>

				<tr>

					<th>ID</th>
					<th>Image</th>
					<th>Name</th>
					<th>Cuisine</th>
					<th>Delivery</th>
					<th>Rating</th>
					<th>Address</th>
					<th>Status</th>
					<th>Action</th>

				</tr>

			</thead>

<tbody>

<!-- =========================
     ADD RESTAURANT ROW
========================= -->

<tr id="addRow" style="display: none;">

	<form action="AdminAddRestaurant" method="post">

		<td>New</td>

		<td>
			<input type="text"
				   name="image_Path"
				   placeholder="Image Path"
				   required
				   style="width:120px;">
		</td>

		<td>
			<input type="text"
				   name="restaurant_Name"
				   placeholder="Restaurant Name"
				   required>
		</td>

		<td>
			<input type="text"
				   name="cuisine_Type"
				   placeholder="Cuisine"
				   required>
		</td>

		<td>
			<input type="text"
				   name="delivery_Time"
				   placeholder="30 mins"
				   required>
		</td>

		<td>
			<input type="number"
				   step="0.1"
				   min="0"
				   max="5"
				   name="rating"
				   placeholder="4.5"
				   required
				   style="width:70px;">
		</td>

		<td>
			<input type="text"
				   name="address"
				   placeholder="Address"
				   required>
		</td>

		<td>
			<span class="active">Active</span>
		</td>

		<td>

			<button type="submit"
					class="edit">
				Save
			</button>

			<button type="button"
					onclick="hideForm()"
					class="edit">
				Cancel
			</button>

		</td>

	</form>

</tr>


<!-- =========================
     EXISTING RESTAURANTS
========================= -->

<%
for(Restaurant restaurant : allRestaurant) {
%>

<tr id="row_<%=restaurant.getRestaurant_Id()%>">

	<!-- ID -->

	<td>
		<%=restaurant.getRestaurant_Id()%>
	</td>


	<!-- IMAGE -->

	<td>

		<img src="<%=restaurant.getImage_path()%>"
			 class="restaurant">

	</td>


	<!-- NAME -->

	<td>

		<span class="display-data">
			<%=restaurant.getRestaurant_Name()%>
		</span>

		<input type="text"
			   name="restaurant_Name"
			   value="<%=restaurant.getRestaurant_Name()%>"
			   class="edit-input"
			   style="display:none;">

	</td>


	<!-- CUISINE -->

	<td>

		<span class="display-data">
			<%=restaurant.getCuisine_Type()%>
		</span>

		<input type="text"
			   name="cuisine_Type"
			   value="<%=restaurant.getCuisine_Type()%>"
			   class="edit-input"
			   style="display:none;">

	</td>


	<!-- DELIVERY -->

	<td>

		<span class="display-data">
			<%=restaurant.getDelivery_Time()%>
		</span>

		<input type="text"
			   name="delivery_Time"
			   value="<%=restaurant.getDelivery_Time()%>"
			   class="edit-input"
			   style="display:none;">

	</td>


	<!-- RATING -->

	<td class="rating">

		<span class="display-data">
			⭐ <%=restaurant.getRating()%>
		</span>

		<input type="number"
			   name="rating"
			   value="<%=restaurant.getRating()%>"
			   step="0.1"
			   min="0"
			   max="5"
			   class="edit-input"
			   style="display:none;">

	</td>


	<!-- ADDRESS -->

	<td>

		<span class="display-data">
			<%=restaurant.getAddress()%>
		</span>

		<input type="text"
			   name="address"
			   value="<%=restaurant.getAddress()%>"
			   class="edit-input"
			   style="display:none;">

	</td>


	<!-- STATUS -->

	<td>

		<span class="display-data">

			<%
			if(restaurant.getIs_Active()) {
			%>

				<span class="active">
					Active
				</span>

			<%
			} else {
			%>

				<span class="inactive">
					Inactive
				</span>

			<%
			}
			%>

		</span>


		<select name="is_Active"
				class="edit-input"
				style="display:none;">

			<option value="true"
				<%=restaurant.getIs_Active() ? "selected" : ""%>>
				Active
			</option>

			<option value="false"
				<%=!restaurant.getIs_Active() ? "selected" : ""%>>
				Inactive
			</option>

		</select>

	</td>


	<!-- ACTION -->

	<td>

		<input type="hidden"
			   name="image_Path"
			   value="<%=restaurant.getImage_path()%>">


		<button type="button"
				class="edit"
				onclick="editRestaurant(<%=restaurant.getRestaurant_Id()%>)">

			✏ Edit

		</button>


		<button type="button"
				class="update-btn edit-input"
				style="display:none;"
				onclick="updateRestaurant(<%=restaurant.getRestaurant_Id()%>)">

			Update

		</button>


		<button type="button"
				class="cancel-btn edit-input"
				style="display:none;"
				onclick="cancelEdit(<%=restaurant.getRestaurant_Id()%>)">

			Cancel

		</button>

	</td>

</tr>

<%
}
%>

</tbody>

		</table>

	</div>

	<footer
		style="background: #0E1016; color: white; padding: 25px; text-align: center; margin-top: 30px;">

		<h3>🍴 MEAL RUSH ADMIN PANEL</h3>

		<p style="margin-top: 10px; color: #bbb;">Restaurant Management
			Dashboard © 2026</p>

	</footer>

<script>


function showForm() {

	document.getElementById("addRow").style.display = "table-row";

	document.getElementById("addRow").scrollIntoView({
		behavior: "smooth",
		block: "center"
	});

}


function hideForm() {

	document.getElementById("addRow").style.display = "none";

}


/* =========================
   EDIT RESTAURANT
========================= */

function editRestaurant(id) {

	let row = document.getElementById("row_" + id);


	/* Hide normal text */

	let displayData =
		row.querySelectorAll(".display-data");

	displayData.forEach(function(element) {

		element.style.display = "none";

	});


	/* Show input fields */

	let inputs =
		row.querySelectorAll(".edit-input");

	inputs.forEach(function(element) {

		element.style.display = "inline-block";

	});


	/* Hide Edit button */

	let editButton =
		row.querySelector(".edit");

	editButton.style.display = "none";

}


/* =========================
   CANCEL EDIT
========================= */

function cancelEdit(id) {

	location.reload();

}


/* =========================
   UPDATE RESTAURANT
========================= */

function updateRestaurant(id) {

	let row =
		document.getElementById("row_" + id);


	let restaurantName =
		row.querySelector(
			'input[name="restaurant_Name"]'
		).value;


	let cuisineType =
		row.querySelector(
			'input[name="cuisine_Type"]'
		).value;


	let rating =
		row.querySelector(
			'input[name="rating"]'
		).value;


	let address =
		row.querySelector(
			'input[name="address"]'
		).value;


	let isActive =
		row.querySelector(
			'select[name="is_Active"]'
		).value;


	let imagePath =
		row.querySelector(
			'input[name="image_Path"]'
		).value;


	/* Create form */

	let form =
		document.createElement("form");

	form.method = "post";

	form.action = "<%=request.getContextPath()%>/AdminUpdateRestaurant";


	/* Add values */

	addField(
		form,
		"restaurant_Id",
		id
	);

	addField(
		form,
		"restaurant_Name",
		restaurantName
	);

	addField(
		form,
		"cuisine_Type",
		cuisineType
	);

	addField(
		form,
		"delivery_Time",
		deliveryTime
	);

	addField(
		form,
		"rating",
		rating
	);

	addField(
		form,
		"address",
		address
	);

	addField(
		form,
		"is_Active",
		isActive
	);

	addField(
		form,
		"image_Path",
		imagePath
	);


	/* Submit */

	document.body.appendChild(form);

	form.submit();

}


/* =========================
   CREATE HIDDEN INPUT
========================= */

function addField(form, name, value) {

	let input =
		document.createElement("input");

	input.type = "hidden";

	input.name = name;

	input.value = value;

	form.appendChild(input);

}

</script>
</body>

</html>