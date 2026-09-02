<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>FitZone Gym - Login</title>


    <!-- Bootstrap 4 -->

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">


    <style>

        /* ============================= */
        /* BASIC RESET */
        /* ============================= */

        * {
            box-sizing: border-box;
        }

        html,
        body {
            width: 100%;
            min-height: 100%;
            margin: 0;
            padding: 0;
        }

        body {

            min-height: 100vh;

            display: flex;

            flex-direction: column;

            background: #111;

            color: white;

            overflow-x: hidden;

            font-family: Arial, sans-serif;
        }


        /* ============================= */
        /* NAVBAR */
        /* ============================= */

        .navbar {

            width: 100%;

            background: #111;

            padding: 15px 30px;

            border-bottom: 1px solid rgba(255,255,255,.08);
        }


        .navbar-brand {

            color: #00d26a !important;

            font-size: 24px;

            font-weight: bold;

            white-space: nowrap;
        }


        .navbar-nav .nav-link {

            color: white !important;

            margin-left: 20px;

            transition: .3s;
        }


        .navbar-nav .nav-link:hover {

            color: #00d26a !important;
        }


        /* ============================= */
        /* MAIN CONTENT */
        /* ============================= */

        .content {

            flex: 1;

            width: 100%;

            display: flex;

            align-items: center;

            justify-content: center;

            padding: 50px 15px;


            background:

                linear-gradient(
                    rgba(0,0,0,.78),
                    rgba(0,0,0,.78)
                ),

                url("https://images.unsplash.com/photo-1534438327276-14e5300c3a48?auto=format&fit=crop&w=1500&q=80");

            background-size: cover;

            background-position: center;

            background-attachment: fixed;
        }


        /* ============================= */
        /* LOGIN CARD */
        /* ============================= */

        .form-card {

            width: 100%;

            max-width: 500px;

            padding: 40px;

            background: rgba(20,20,20,.92);

            border: 1px solid rgba(255,255,255,.10);

            border-radius: 15px;

            box-shadow: 0 10px 40px rgba(0,0,0,.6);

            backdrop-filter: blur(8px);
        }


        /* ============================= */
        /* LOGIN HEADING */
        /* ============================= */

        .form-card h3 {

            color: white;

            font-size: 30px;

            font-weight: bold;

            line-height: 1.3;

            margin-bottom: 30px !important;
        }


        .form-card h3::after {

            content: "";

            display: block;

            width: 60px;

            height: 3px;

            background: #00d26a;

            margin: 12px auto 0;
        }


        /* ============================= */
        /* LABEL */
        /* ============================= */

        .form-card label {

            color: white;

            font-weight: 500;

            margin-bottom: 7px;
        }


        /* ============================= */
        /* INPUT */
        /* ============================= */

        .form-control {

            width: 100%;

            height: 45px;

            background: #181818;

            border: 1px solid #333;

            color: white;

            border-radius: 6px;

            font-size: 16px;
        }


        .form-control:focus {

            background: #181818;

            color: white;

            border-color: #00d26a;

            box-shadow: 0 0 0 .15rem rgba(0,210,106,.20);
        }


        .form-control::placeholder {

            color: #999;
        }


        /* ============================= */
        /* LOGIN BUTTON */
        /* ============================= */

        .custom-btn {

            width: 100%;

            min-height: 45px;

            background: #00d26a;

            color: white;

            border: none;

            border-radius: 6px;

            font-size: 16px;

            font-weight: 600;

            transition: .3s;
        }


        .custom-btn:hover {

            background: #00b85c;

            color: white;

            transform: translateY(-1px);
        }


        .custom-btn:focus {

            outline: none;

            box-shadow: 0 0 0 .15rem rgba(0,210,106,.25);
        }


        /* ============================= */
        /* REGISTER LINK */
        /* ============================= */

        .register-link {

            color: #00d26a;

            text-decoration: none;

            transition: .3s;
        }


        .register-link:hover {

            color: #00b85c;

            text-decoration: none;
        }


        /* ============================= */
        /* FOOTER */
        /* ============================= */

        footer {

            width: 100%;

            background: #111;

            color: #aaa;

            text-align: center;

            padding: 18px;

            border-top: 1px solid rgba(255,255,255,.08);

            font-size: 14px;
        }


        /* ============================= */
        /* TABLET */
        /* ============================= */

        @media (max-width: 991px) {

            .navbar {

                padding: 12px 20px;
            }


            .form-card {

                max-width: 520px;

                padding: 35px;
            }

        }


        /* ============================= */
        /* MOBILE */
        /* ============================= */

        @media (max-width: 767px) {

            .navbar {

                padding: 10px 15px;
            }


            .navbar-brand {

                font-size: 20px;
            }


            .navbar-collapse {

                margin-top: 10px;
            }


            .navbar-nav .nav-link {

                margin-left: 0;

                padding: 10px 5px;
            }


            .content {

                padding: 30px 12px;

                background-attachment: scroll;
            }


            .form-card {

                width: 100%;

                max-width: 100%;

                padding: 28px 20px;

                border-radius: 10px;
            }


            .form-card h3 {

                font-size: 25px;
            }

        }


        /* ============================= */
        /* SMALL MOBILE */
        /* ============================= */

        @media (max-width: 480px) {

            .navbar {

                padding: 9px 12px;
            }


            .navbar-brand {

                font-size: 18px;
            }


            .content {

                padding: 20px 10px;
            }


            .form-card {

                padding: 24px 16px;

                border-radius: 9px;
            }


            .form-card h3 {

                font-size: 22px;

                margin-bottom: 25px !important;
            }


            .form-control {

                height: 44px;

                font-size: 16px;
            }


            .custom-btn {

                min-height: 44px;

                font-size: 16px;
            }


            footer {

                font-size: 12px;

                padding: 14px 8px;
            }

        }


        /* ============================= */
        /* EXTRA SMALL - 320px */
        /* ============================= */

        @media (max-width: 360px) {

            .navbar-brand {

                font-size: 16px;
            }


            .content {

                padding: 15px 8px;
            }


            .form-card {

                padding: 20px 12px;
            }


            .form-card h3 {

                font-size: 20px;
            }


            .form-card label {

                font-size: 14px;
            }


            .form-control {

                font-size: 15px;
            }


            footer {

                font-size: 11px;
            }

        }

    </style>

</head>


<body>


<!-- ============================= -->
<!-- NAVBAR -->
<!-- ============================= -->

<nav class="navbar navbar-expand-lg navbar-dark">

    <a class="navbar-brand" href="Home.jsp">
        FIT LIFE
    </a>


    <button class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#menu"
            aria-controls="menu"
            aria-expanded="false"
            aria-label="Toggle navigation">

        <span class="navbar-toggler-icon"></span>

    </button>


    <div class="collapse navbar-collapse" id="menu">

        <ul class="navbar-nav ml-auto">


            <!-- MEMBERSHIP PLANS -->

            <li class="nav-item">

                <a class="nav-link"
                   href="MembershipPlans.jsp">

                    Membership Plans

                </a>

            </li>


            <!-- LOGIN -->

            <li class="nav-item active">

                <a class="nav-link"
                   href="login.jsp">

                    Login

                </a>

            </li>


        </ul>

    </div>

</nav>



<!-- ============================= -->
<!-- LOGIN CONTENT -->
<!-- ============================= -->

<div class="content">


    <div class="form-card">


        <h3 class="text-center">

            Member Login

        </h3>


        <form method="post"
              action="LoginController">


            <!-- USERNAME -->

            <div class="form-group">

                <label for="username">
                    Username
                </label>

                <input
                    type="text"
                    class="form-control"
                    id="username"
                    name="username"
                    placeholder="Enter Username"
                    autocomplete="username"
                    required>

            </div>


            <!-- PASSWORD -->

            <div class="form-group">

                <label for="password">
                    Password
                </label>

                <input
                    type="password"
                    class="form-control"
                    id="password"
                    name="password"
                    placeholder="Enter Password"
                    autocomplete="current-password"
                    required>

            </div>


            <!-- LOGIN -->

            <button
                type="submit"
                class="custom-btn">

                Login

            </button>


            <!-- REGISTER -->

            <div class="text-center mt-3">

                <a href="index.jsp"
                   class="register-link">

                    New Member? Register Here

                </a>

            </div>


        </form>


    </div>

</div>



<!-- ============================= -->
<!-- FOOTER -->
<!-- ============================= -->

<footer>

    &copy; 2026 FitZone Gym. All Rights Reserved.

</footer>



<!-- ============================= -->
<!-- BOOTSTRAP JS -->
<!-- ============================= -->

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>


</body>

</html>