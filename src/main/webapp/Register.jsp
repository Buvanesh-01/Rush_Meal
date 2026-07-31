<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>🍴 <span >M E A L •</span> R U S H - Create Account</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;500;600;700;800&display=swap"
rel="stylesheet">


<style>

/* ==============================
   GLOBAL
============================== */

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
    --border:#DDE2E7;
}

body{
    min-height:100vh;
    background:var(--light);

    display:flex;
    align-items:center;
    justify-content:center;

    padding:30px;
}


/* ==============================
   MAIN CONTAINER
============================== */

.container{

    width:100%;
    max-width:1050px;

    min-height:650px;

    display:grid;
    grid-template-columns:45% 55%;

    background:white;

    border-radius:25px;

    overflow:hidden;

    box-shadow:
    0 25px 70px rgba(0,0,0,0.18);
}


/* ==============================
   LEFT SIDE
============================== */

.left-side{

    position:relative;

    display:flex;
    flex-direction:column;

    justify-content:space-between;

    padding:45px;

    color:white;

    background:

    linear-gradient(
        rgba(0,0,0,0.55),
        rgba(0,0,0,0.75)
    ),

    url("https://images.unsplash.com/photo-1504674900247-0877df9cc836")
    center/cover no-repeat;
}


/* LOGO */

.logo{

    font-size:30px;

    font-weight:800;

    letter-spacing:1px;
}

.logo span{
    color:var(--green);
}


/* LEFT CONTENT */

.left-content{

    margin-top:auto;
    margin-bottom:auto;
}

.left-content h1{

    font-size:45px;

    line-height:1.15;

    font-weight:800;

    margin-bottom:20px;
}

.left-content h1 span{
    color:var(--green);
}

.left-content p{

    color:#E5E7EB;

    font-size:16px;

    line-height:1.7;

    max-width:390px;
}


/* FEATURES */

.features{

    display:flex;

    flex-direction:column;

    gap:14px;

    margin-top:30px;
}

.feature{

    display:flex;

    align-items:center;

    gap:12px;

    font-size:14px;
}

.feature i{

    width:30px;
    height:30px;

    display:flex;

    justify-content:center;
    align-items:center;

    border-radius:50%;

    background:var(--green);

    color:var(--black);

}


/* ==============================
   RIGHT SIDE
============================== */

.right-side{

    padding:45px 55px;

    display:flex;

    flex-direction:column;

    justify-content:center;
}


/* HEADER */

.form-header{

    margin-bottom:28px;
}

.form-header h2{

    color:var(--black);

    font-size:30px;

    font-weight:800;

    margin-bottom:8px;
}

.form-header p{

    color:var(--gray);

    font-size:14px;
}


/* ==============================
   FORM
============================== */

.form-group{

    margin-bottom:17px;
}

label{

    display:block;

    font-size:13px;

    font-weight:700;

    color:var(--black);

    margin-bottom:7px;
}


/* INPUT BOX */

.input-box{

    position:relative;
}

.input-box i{

    position:absolute;

    left:15px;

    top:50%;

    transform:translateY(-50%);

    color:var(--gray);

    font-size:15px;
}

input,
select,
textarea{

    width:100%;

    border:1px solid var(--border);

    outline:none;

    background:#FAFAFA;

    border-radius:10px;

    font-size:14px;

    transition:0.3s;
}

input,
select{

    height:48px;

    padding:0 45px;
}

textarea{

    height:75px;

    resize:none;

    padding:14px 45px;
}


/* FOCUS */

input:focus,
select:focus,
textarea:focus{

    border-color:var(--green);

    background:white;

    box-shadow:
    0 0 0 4px rgba(0,230,118,0.12);
}


/* PASSWORD */

.password-box{

    position:relative;
}

.password-box .eye{

    position:absolute;

    right:15px;

    top:50%;

    transform:translateY(-50%);

    cursor:pointer;

    color:var(--gray);
}

.password-box .eye:hover{

    color:var(--green-dark);
}


/* ==============================
   ROLE
============================== */

select{

    appearance:none;

    cursor:pointer;

}

.select-box{

    position:relative;
}

.select-box .arrow{

    position:absolute;

    right:17px;

    top:50%;

    transform:translateY(-50%);

    pointer-events:none;

    color:var(--gray);
}


/* ==============================
   BUTTON
============================== */

button{

    width:100%;

    height:50px;

    border:none;

    border-radius:10px;

    background:var(--black);

    color:white;

    font-size:15px;

    font-weight:700;

    cursor:pointer;

    transition:0.3s;

    margin-top:5px;
}

button i{

    margin-left:8px;

    transition:0.3s;
}

button:hover{

    background:var(--green);

    color:var(--black);

    transform:translateY(-2px);

    box-shadow:
    0 8px 20px rgba(0,230,118,0.25);
}

button:hover i{

    transform:translateX(5px);
}


/* ==============================
   LOGIN
============================== */

.login{

    text-align:center;

    margin-top:22px;

    font-size:14px;

    color:var(--gray);
}

.login a{

    color:var(--green-dark);

    text-decoration:none;

    font-weight:700;

    margin-left:5px;
}

.login a:hover{

    text-decoration:underline;
}


/* ==============================
   RESPONSIVE
============================== */

@media(max-width:850px){

    body{

        padding:15px;

    }

    .container{

        grid-template-columns:1fr;

        max-width:550px;

    }

    .left-side{

        min-height:300px;

        padding:30px;

    }

    .left-content h1{

        font-size:32px;

    }

    .features{

        display:none;

    }

    .right-side{

        padding:35px 30px;

    }

}


@media(max-width:500px){

    .left-side{

        min-height:220px;

    }

    .left-content p{

        display:none;

    }

    .left-content h1{

        font-size:28px;

    }

    .right-side{

        padding:30px 20px;

    }

}

</style>

</head>


<body>


<!-- ==============================
     MAIN CONTAINER
============================== -->

<div class="container">


<!-- ==============================
     LEFT SIDE
============================== -->

<div class="left-side">


    <!-- LOGO -->

    <div class="logo">

        🍴 <span >M E A L •</span> R U S H

    </div>


    <!-- CONTENT -->

    <div class="left-content">

        <h1>
            Good Food.
            <br>
            <span>Good Mood.</span>
        </h1>

        <p>
            Join TIFFIN and discover delicious food
            from your favourite restaurants.
            Order your favourite meals anytime,
            anywhere.
        </p>


        <!-- FEATURES -->

        <div class="features">

            <div class="feature">

                <i class="fa-solid fa-utensils"></i>

                <span>
                    Discover amazing restaurants
                </span>

            </div>


            <div class="feature">

                <i class="fa-solid fa-truck-fast"></i>

                <span>
                    Fast and reliable food delivery
                </span>

            </div>


            <div class="feature">

                <i class="fa-solid fa-heart"></i>

                <span>
                    Your favourite food, your way
                </span>

            </div>

        </div>

    </div>


</div>



<!-- ==============================
     RIGHT SIDE
============================== -->

<div class="right-side">


    <!-- HEADER -->

    <div class="form-header">

        <h2>
            Create Account
        </h2>

        <p>
            Sign up to start ordering delicious food.
        </p>

    </div>



    <!-- FORM -->

    <form action="RegisterServlet" method="post">


        <!-- FULL NAME -->

        <div class="form-group">

            <label>
                Full Name
            </label>

            <div class="input-box">

                <i class="fa-regular fa-user"></i>

                <input
                    type="text"
                    name="user_name"
                    placeholder="Enter your full name"
                    required>

            </div>

        </div>



        <!-- EMAIL -->

        <div class="form-group">

            <label>
                Email Address
            </label>

            <div class="input-box">

                <i class="fa-regular fa-envelope"></i>

                <input
                    type="email"
                    name="email"
                    placeholder="Enter your email"
                    required>

            </div>

        </div>



        <!-- PASSWORD -->

        <div class="form-group">

            <label>
                Password
            </label>

            <div class="password-box">

                <i class="fa-solid fa-lock"
                   style="
                   position:absolute;
                   left:15px;
                   top:50%;
                   transform:translateY(-50%);
                   color:#6B7280;
                   ">
                </i>

                <input
                    id="password"
                    type="password"
                    name="password"
                    placeholder="Create a password"
                    required>

                <i
                    class="fa-regular fa-eye eye"
                    id="togglePassword"
                    onclick="togglePassword()">
                </i>

            </div>

        </div>



        <!-- ADDRESS -->

        <div class="form-group">

            <label>
                Delivery Address
            </label>

            <div class="input-box">

                <i class="fa-solid fa-location-dot"
                   style="top:25px;">
                </i>

                <textarea
                    name="address"
                    placeholder="Enter your delivery address"
                    required></textarea>

            </div>

        </div>



        <!-- ROLE -->

        <div class="form-group">

            <label>
                Account Type
            </label>

            <div class="select-box">

                <select name="role" required>

                    <option value="">
                        Select account type
                    </option>

                    <option value="CUSTOMER">
                        Customer
                    </option>

                    <option value="RESTAURANT">
                        Restaurant
                    </option>

                    <option value="ADMIN">
                        Admin
                    </option>

                </select>

                <i class="fa-solid fa-chevron-down arrow"></i>

            </div>

        </div>



        <!-- BUTTON -->

        <button type="submit">

            Create My Account

            <i class="fa-solid fa-arrow-right"></i>

        </button>


        <!-- LOGIN -->

        <div class="login">

            Already have an account?

            <a href="Login.jsp">
                Login
            </a>

        </div>


    </form>


</div>


</div>



<!-- ==============================
     PASSWORD SCRIPT
============================== -->

<script>

function togglePassword(){

    const password =
        document.getElementById("password");

    const icon =
        document.getElementById("togglePassword");


    if(password.type === "password"){

        password.type = "text";

        icon.classList.remove("fa-eye");

        icon.classList.add("fa-eye-slash");

    }else{

        password.type = "password";

        icon.classList.remove("fa-eye-slash");

        icon.classList.add("fa-eye");

    }

}

</script>


</body>

</html>