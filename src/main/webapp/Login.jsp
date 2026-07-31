```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>🍴 M E A L • R U S H - Login</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;500;600;700;800&display=swap"
rel="stylesheet">


<style>

/* =========================
   GLOBAL
========================= */

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

    justify-content:center;

    align-items:center;

    padding:30px;

}


/* =========================
   MAIN CONTAINER
========================= */

.container{

    width:100%;

    max-width:1000px;

    min-height:600px;

    display:grid;

    grid-template-columns:50% 50%;

    background:white;

    border-radius:25px;

    overflow:hidden;

    box-shadow:
    0 25px 70px rgba(0,0,0,0.18);

}


/* =========================
   LEFT SIDE
========================= */

.left-side{

    position:relative;

    padding:45px;

    color:white;

    display:flex;

    flex-direction:column;

    justify-content:space-between;

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

    max-width:380px;

    color:#E5E7EB;

    font-size:16px;

    line-height:1.7;

}


/* FEATURES */

.features{

    display:flex;

    flex-direction:column;

    gap:15px;

    margin-top:30px;

}


.feature{

    display:flex;

    align-items:center;

    gap:12px;

    font-size:14px;

}


.feature i{

    width:32px;

    height:32px;

    display:flex;

    align-items:center;

    justify-content:center;

    border-radius:50%;

    background:var(--green);

    color:var(--black);

}


/* =========================
   RIGHT SIDE
========================= */

.right-side{

    padding:50px 60px;

    display:flex;

    flex-direction:column;

    justify-content:center;

}


/* HEADER */

.form-header{

    margin-bottom:35px;

}


.form-header h2{

    font-size:32px;

    font-weight:800;

    color:var(--black);

    margin-bottom:8px;

}


.form-header p{

    color:var(--gray);

    font-size:14px;

}


/* =========================
   FORM
========================= */

.form-group{

    margin-bottom:20px;

}


.form-group label{

    display:block;

    color:var(--black);

    font-size:13px;

    font-weight:700;

    margin-bottom:8px;

}


.input-box{

    position:relative;

}


.input-box i{

    position:absolute;

    left:16px;

    top:50%;

    transform:translateY(-50%);

    color:var(--gray);

    font-size:15px;

}


.input-box input{

    width:100%;

    height:50px;

    padding:0 45px;

    border:1px solid var(--border);

    border-radius:10px;

    outline:none;

    background:#FAFAFA;

    font-size:14px;

    transition:0.3s;

}


.input-box input:focus{

    border-color:var(--green);

    background:white;

    box-shadow:
    0 0 0 4px rgba(0,230,118,0.12);

}


/* PASSWORD */

.password-box{

    position:relative;

}


.password-box input{

    width:100%;

    height:50px;

    padding:0 45px;

    border:1px solid var(--border);

    border-radius:10px;

    outline:none;

    background:#FAFAFA;

    font-size:14px;

    transition:0.3s;

}


.password-box input:focus{

    border-color:var(--green);

    background:white;

    box-shadow:
    0 0 0 4px rgba(0,230,118,0.12);

}


.password-icon{

    position:absolute;

    left:16px;

    top:50%;

    transform:translateY(-50%);

    color:var(--gray);

}


.eye-icon{

    position:absolute;

    right:16px;

    top:50%;

    transform:translateY(-50%);

    color:var(--gray);

    cursor:pointer;

}


.eye-icon:hover{

    color:var(--green-dark);

}


/* =========================
   OPTIONS
========================= */

.options{

    display:flex;

    justify-content:space-between;

    align-items:center;

    margin:5px 0 25px;

}


.remember{

    display:flex;

    align-items:center;

    gap:7px;

    font-size:13px;

    color:var(--gray);

    cursor:pointer;

}


.remember input{

    accent-color:var(--green);

    cursor:pointer;

}


.forgot-password{

    color:var(--green-dark);

    text-decoration:none;

    font-size:13px;

    font-weight:700;

}


.forgot-password:hover{

    text-decoration:underline;

}


/* =========================
   LOGIN BUTTON
========================= */

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


/* =========================
   SIGN UP
========================= */

.signup-link{

    text-align:center;

    margin-top:25px;

    color:var(--gray);

    font-size:14px;

}


.signup-link a{

    color:var(--green-dark);

    text-decoration:none;

    font-weight:700;

    margin-left:5px;

}


.signup-link a:hover{

    text-decoration:underline;

}


/* =========================
   RESPONSIVE
========================= */

@media(max-width:800px){

    body{

        padding:15px;

    }


    .container{

        grid-template-columns:1fr;

        max-width:500px;

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

        padding:40px 30px;

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

        padding:35px 20px;

    }

}

</style>

</head>


<body>


<!-- =========================
     MAIN CONTAINER
========================= -->

<div class="container">


<!-- =========================
     LEFT SIDE
========================= -->

<div class="left-side">


    <!-- LOGO -->

    <div class="logo">

        🍴 <span >M E A L •</span> R U S H

    </div>


    <!-- CONTENT -->

    <div class="left-content">

        <h1>

            Welcome
            <br>

            <span>Back!</span>

        </h1>


        <p>

            Login to your TIFFIN account and
            continue your journey to discover
            delicious food from your favourite
            restaurants.

        </p>


        <!-- FEATURES -->

        <div class="features">


            <div class="feature">

                <i class="fa-solid fa-utensils"></i>

                <span>
                    Discover delicious food
                </span>

            </div>


            <div class="feature">

                <i class="fa-solid fa-truck-fast"></i>

                <span>
                    Fast and reliable delivery
                </span>

            </div>


            <div class="feature">

                <i class="fa-solid fa-heart"></i>

                <span>
                    Your favourites are waiting
                </span>

            </div>


        </div>

    </div>


</div>



<!-- =========================
     RIGHT SIDE
========================= -->

<div class="right-side">


    <!-- HEADER -->

    <div class="form-header">

        <h2>
            Welcome Back
        </h2>

        <p>
            Login to your account to continue.
        </p>

    </div>



    <!-- FORM -->

    <form action="loginServlet" method="post">


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


                <i class="fa-solid fa-lock password-icon"></i>


                <input

                    id="password"

                    type="password"

                    name="password"

                    placeholder="Enter your password"

                    required>


                <i

                    class="fa-regular fa-eye eye-icon"

                    id="togglePassword"

                    onclick="togglePassword()">

                </i>


            </div>

        </div>



        <!-- OPTIONS -->

        <div class="options">


            <label class="remember">

                <input type="checkbox">

                Remember Me

            </label>


            <a

                href="#"

                class="forgot-password">

                Forgot Password?

            </a>


        </div>



        <!-- LOGIN BUTTON -->

        <button type="submit">

            Login to Account

            <i class="fa-solid fa-arrow-right"></i>

        </button>



        <!-- SIGN UP -->

        <div class="signup-link">

            Don't have an account?

            <a href="Register.jsp">

                Create Account

            </a>

        </div>


    </form>


</div>


</div>



<!-- =========================
     PASSWORD SHOW / HIDE
========================= -->

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

    }

    else{

        password.type = "password";

        icon.classList.remove("fa-eye-slash");

        icon.classList.add("fa-eye");

    }

}

</script>


</body>

</html>