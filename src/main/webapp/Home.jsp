<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Fit Life Gym</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <style>

        * {
            box-sizing: border-box;
        }

        html,
        body {
            width: 100%;
            margin: 0;
            padding: 0;
        }

        body {
            background: #111;
            color: white;
            font-family: 'Segoe UI', Arial, sans-serif;
            overflow-x: hidden;
        }

        .navbar {
            width: 100%;
            min-height: 75px;
            background: #111 !important;
            padding: 15px 7%;
            border-bottom: 1px solid rgba(255,255,255,.08);
            position: relative;
            z-index: 1000;
        }

        .navbar-brand {
            color: #00d26a !important;
            font-size: 30px;
            font-weight: bold;
            white-space: nowrap;
        }

        .navbar-toggler {
            border: 1px solid rgba(255,255,255,.25);
            padding: 7px 10px;
        }

        .navbar-toggler:focus {
            box-shadow: 0 0 0 2px rgba(0,210,106,.25);
        }

        .navbar-nav {
            align-items: center;
        }

        .navbar-nav .nav-link {
            color: white !important;
            font-size: 18px;
            margin-left: 25px;
            padding: 8px 0;
            transition: .3s;
        }

        .navbar-nav .nav-link:hover {
            color: #00d26a !important;
        }

        .hero {
            width: 100%;
            min-height: calc(100vh - 75px);
            background:
                url("https://images.unsplash.com/photo-1534438327276-14e5300c3a48?auto=format&fit=crop&w=2000&q=80");
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            position: relative;
        }

        .overlay {
            position: absolute;
            inset: 0;
            background: rgba(0,0,0,.68);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            width: 100%;
            text-align: center;
            padding: 110px 15px 70px;
        }

        .hero-content h1 {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            color: white;
            font-size: clamp(38px, 5vw, 72px);
            font-weight: bold;
            line-height: 1.1;
        }

        .hero-content > .container > p {
            width: 100%;
            max-width: 900px;
            margin: 20px auto 0;
            color: white;
            font-size: clamp(16px, 2vw, 20px);
            line-height: 1.5;
        }

        .hero-buttons {
            width: 100%;
            max-width: 900px;
            margin: 28px auto 0;
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .custom-btn {
            flex: 1;
            max-width: 380px;
            min-height: 60px;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 12px 20px;
            background: #00d26a;
            color: white;
            border: none;
            border-radius: 50px;
            font-size: clamp(16px, 2vw, 23px);
            font-weight: bold;
            text-decoration: none;
            transition: .3s;
        }

        .custom-btn:hover {
            background: #00b85c;
            color: white;
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0,210,106,.4);
        }

        .section-title {
            color: white;
            text-align: center;
            font-size: clamp(28px, 4vw, 40px);
            font-weight: bold;
            margin: 70px 0 40px;
        }

        .service-card {
            width: 100%;
            min-height: 145px;
            background: white;
            color: #111;
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 25px;
            transition: .3s;
            box-shadow: 0 8px 20px rgba(0,0,0,.3);
        }

        .service-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 30px rgba(0,0,0,.45);
        }

        .service-card h3 {
            margin: 0;
            font-size: clamp(20px, 2.2vw, 30px);
            font-weight: 500;
        }

        .feature-box {
            width: 100%;
            min-height: 150px;
            background: rgba(255,255,255,.12);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
            color: white;
            border: 1px solid rgba(255,255,255,.08);
            border-radius: 15px;
            padding: 25px;
            margin-bottom: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            transition: .3s;
        }

        .feature-box:hover {
            transform: translateY(-5px);
            border-color: rgba(0,210,106,.5);
        }

        .feature-box h4 {
            font-size: 30px;
            margin-bottom: 10px;
        }

        .feature-box h5 {
            margin: 0;
            font-size: 18px;
        }

        .footer {
            width: 100%;
            background: #111;
            color: white;
            text-align: center;
            padding: 30px 15px;
            border-top: 1px solid rgba(255,255,255,.08);
        }

        .footer h2 {
            color: #00d26a;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .footer p {
            margin: 5px 0;
            color: #aaa;
        }

        @media (max-width: 1199px) {

            .navbar {
                padding: 15px 5%;
            }

            .hero-content {
                padding-top: 90px;
            }

            .service-card {
                min-height: 135px;
            }

        }

        @media (max-width: 991px) {

            .navbar {
                padding: 12px 5%;
            }

            .navbar-brand {
                font-size: 26px;
            }

            .navbar-collapse {
                margin-top: 12px;
                padding-bottom: 10px;
            }

            .navbar-nav {
                align-items: flex-start;
            }

            .navbar-nav .nav-link {
                margin-left: 0;
                padding: 10px 5px;
                font-size: 17px;
            }

            .hero {
                background-attachment: scroll;
                min-height: auto;
            }

            .hero-content {
                padding: 80px 5% 60px;
            }

            .hero-content h1 {
                font-size: clamp(38px, 7vw, 60px);
            }

            .hero-buttons {
                max-width: 850px;
            }

            .service-card {
                min-height: 130px;
            }

        }

        @media (max-width: 767px) {

            .navbar {
                min-height: 65px;
                padding: 10px 15px;
            }

            .navbar-brand {
                font-size: 22px;
            }

            .navbar-nav .nav-link {
                padding: 10px 5px;
            }

            .hero-content {
                padding: 60px 15px 50px;
            }

            .hero-content h1 {
                font-size: clamp(32px, 9vw, 48px);
                line-height: 1.15;
            }

            .hero-content > .container > p {
                font-size: 16px;
                margin-top: 18px;
            }

            .hero-buttons {
                flex-direction: column;
                align-items: center;
                gap: 15px;
                margin-top: 25px;
            }

            .custom-btn {
                width: 100%;
                max-width: 500px;
                min-height: 55px;
                font-size: 18px;
                padding: 12px 15px;
            }

            .section-title {
                font-size: 30px;
                margin: 55px 0 30px;
            }

            .service-card {
                min-height: 120px;
                border-radius: 15px;
            }

            .service-card h3 {
                font-size: 22px;
            }

            .feature-box {
                min-height: 130px;
                margin-bottom: 15px;
            }

        }

        @media (max-width: 480px) {

            .navbar {
                padding: 9px 12px;
            }

            .navbar-brand {
                font-size: 20px;
            }

            .hero-content {
                padding: 45px 12px 40px;
            }

            .hero-content h1 {
                font-size: 32px;
            }

            .hero-content > .container > p {
                font-size: 15px;
                line-height: 1.5;
            }

            .custom-btn {
                min-height: 52px;
                font-size: 16px;
                padding: 10px 15px;
            }

            .section-title {
                font-size: 28px;
                margin-top: 50px;
                margin-bottom: 28px;
            }

            .service-card {
                min-height: 105px;
                padding: 20px;
            }

            .service-card h3 {
                font-size: 20px;
            }

            .feature-box {
                min-height: 115px;
                padding: 20px;
            }

            .feature-box h4 {
                font-size: 25px;
            }

            .feature-box h5 {
                font-size: 16px;
            }

            .footer {
                padding: 25px 10px;
                font-size: 12px;
            }

            .footer h2 {
                font-size: 23px;
            }

        }

        @media (max-width: 360px) {

            .navbar-brand {
                font-size: 18px;
            }

            .hero-content {
                padding: 35px 10px;
            }

            .hero-content h1 {
                font-size: 28px;
            }

            .hero-content > .container > p {
                font-size: 14px;
            }

            .custom-btn {
                min-height: 48px;
                font-size: 15px;
            }

            .section-title {
                font-size: 25px;
            }

            .service-card {
                min-height: 95px;
                padding: 15px;
            }

            .service-card h3 {
                font-size: 18px;
            }

            .feature-box {
                min-height: 105px;
            }

        }

    </style>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark">

    <div class="container-fluid">

        <a class="navbar-brand" href="Home.jsp">
            FIT LIFE
        </a>

        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#menu"
                aria-controls="menu"
                aria-expanded="false"
                aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse" id="menu">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">

                    <a class="nav-link"
                       href="MembershipPlans.jsp">

                        Membership Plans

                    </a>

                </li>

                <li class="nav-item">

                    <a class="nav-link"
                       href="login.jsp">

                        Login

                    </a>

                </li>

            </ul>

        </div>

    </div>

</nav>


<section class="hero">

    <div class="overlay"></div>

    <div class="hero-content">

        <div class="container">

            <h1>
                WELCOME TO FIT LIFE GYM
            </h1>

            <p>
                Push Yourself Because No One Else Is Going To Do It For You.
            </p>

            <div class="hero-buttons">

                <a href="CheckWorkoutController"
                   class="custom-btn">

                    Get Your Workout Plan

                </a>

                <a href="workout.jsp"
                   class="custom-btn">

                    Update Workout Assessment

                </a>

            </div>


            <h2 class="section-title">
                Our Services
            </h2>

            <div class="row g-4">

                <div class="col-12 col-md-6 col-lg-4">

                    <div class="service-card">

                        <h3>
                            🏋️ Weight Training
                        </h3>

                    </div>

                </div>

                <div class="col-12 col-md-6 col-lg-4">

                    <div class="service-card">

                        <h3>
                            🏃 Cardio
                        </h3>

                    </div>

                </div>

                <div class="col-12 col-md-6 col-lg-4">

                    <div class="service-card">

                        <h3>
                            🧘 Yoga
                        </h3>

                    </div>

                </div>

            </div>


            <h2 class="section-title">
                Why Choose Us?
            </h2>

            <div class="row g-4">

                <div class="col-12 col-sm-6 col-lg-3">

                    <div class="feature-box">

                        <h4>
                            💪
                        </h4>

                        <h5>
                            Certified Trainers
                        </h5>

                    </div>

                </div>

                <div class="col-12 col-sm-6 col-lg-3">

                    <div class="feature-box">

                        <h4>
                            🏆
                        </h4>

                        <h5>
                            Modern Equipment
                        </h5>

                    </div>

                </div>

                <div class="col-12 col-sm-6 col-lg-3">

                    <div class="feature-box">

                        <h4>
                            🥗
                        </h4>

                        <h5>
                            Diet Plans
                        </h5>

                    </div>

                </div>

                <div class="col-12 col-sm-6 col-lg-3">

                    <div class="feature-box">

                        <h4>
                            🚿
                        </h4>

                        <h5>
                            Clean Environment
                        </h5>

                    </div>

                </div>

            </div>

        </div>

    </div>

</section>


<footer class="footer">

    <div class="container">

        <h2>
            FIT LIFE GYM
        </h2>

        <p>
            Fitness • Strength • Health
        </p>

        <p>
            © 2026 Gym Membership Management System
        </p>

    </div>

</footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>