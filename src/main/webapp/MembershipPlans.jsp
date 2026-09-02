<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Membership Plans</title>

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<style>

* {
    box-sizing: border-box;
}

body {
    margin: 0;
    min-height: 100vh;
    background: #111;
    color: white;
    font-family: Arial, sans-serif;
}


/* NAVBAR */

.navbar {
    background: #111;
    padding: 15px 30px;
    border-bottom: 1px solid #333;
}

.navbar-brand {
    color: #00d26a !important;
    font-size: 24px;
    font-weight: bold;
}

.nav-link {
    color: white !important;
    margin-left: 20px;
}

.nav-link:hover {
    color: #00d26a !important;
}


/* TITLE */

.plans-container {
    padding: 60px 20px;
}

.plans-title {
    text-align: center;
    font-size: 40px;
    font-weight: bold;
    margin-bottom: 50px;
}

.plans-title span {
    color: #00d26a;
}


/* CARDS */

.plan-card {
    background: #1a1a1a;
    border: 1px solid #333;
    border-radius: 12px;
    padding: 35px 25px;
    text-align: center;
    height: 100%;
    transition: 0.3s;
}

.plan-card:hover {
    border-color: #00d26a;
    transform: translateY(-5px);
}

.plan-card h2 {
    font-size: 28px;
    margin-bottom: 20px;
}

.price {
    color: #00d26a;
    font-size: 32px;
    font-weight: bold;
    margin-bottom: 20px;
}

.plan-card p {
    color: #bbb;
    margin-bottom: 10px;
}


/* MOBILE */

@media (max-width: 767px) {

    .navbar {
        padding: 10px 15px;
    }

    .navbar-brand {
        font-size: 20px;
    }

    .nav-link {
        margin-left: 0;
    }

    .plans-container {
        padding: 40px 15px;
    }

    .plans-title {
        font-size: 30px;
        margin-bottom: 30px;
    }

    .plan-card {
        margin-bottom: 20px;
    }
}


/* SMALL MOBILE */

@media (max-width: 480px) {

    .plans-title {
        font-size: 26px;
    }

    .plan-card h2 {
        font-size: 25px;
    }

    .price {
        font-size: 29px;
    }

}

</style>

</head>


<body>


<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark">

    <a class="navbar-brand" href="Home.jsp">
        FIT LIFE
    </a>

    <button class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#menu">

        <span class="navbar-toggler-icon"></span>

    </button>

    <div class="collapse navbar-collapse" id="menu">

        <ul class="navbar-nav ml-auto">

            <li class="nav-item active">

                

            </li>

            <li class="nav-item">

                <a class="nav-link"
                   href="login.jsp">

                    Login

                </a>

            </li>

        </ul>

    </div>

</nav>


<!-- MEMBERSHIP PLANS -->

<div class="container-fluid plans-container">

    <h1 class="plans-title">
        Membership <span>Plans</span>
    </h1>


    <div class="container">

        <div class="row">


            <!-- BASIC -->

            <div class="col-12 col-md-4">

                <div class="plan-card">

                    <h2>Basic</h2>

                    <div class="price">
                        ₹999 / Month
                    </div>

                    <p>Gym Access</p>

                    <p>Basic Equipment</p>

                    <p>Locker Facility</p>

                </div>

            </div>


            <!-- STANDARD -->

            <div class="col-12 col-md-4">

                <div class="plan-card">

                    <h2>Standard</h2>

                    <div class="price">
                        ₹1,999 / Month
                    </div>

                    <p>Full Gym Access</p>

                    <p>All Equipment</p>

                    <p>Locker Facility</p>

                </div>

            </div>


            <!-- PREMIUM -->

            <div class="col-12 col-md-4">

                <div class="plan-card">

                    <h2>Premium</h2>

                    <div class="price">
                        ₹2,999 / Month
                    </div>

                    <p>Unlimited Gym Access</p>

                    <p>Personal Trainer</p>

                    <p>Diet Guidance</p>

                </div>

            </div>


        </div>

    </div>

</div>


<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>

</body>

</html>