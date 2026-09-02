
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Gym Membership Registration</title>

<!-- Bootstrap 4 -->
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<style>



* {
    box-sizing: border-box;
}

html,
body {
    margin: 0;
    padding: 0;
    width: 100%;
    min-height: 100%;
}

body {

    min-height: 100vh;

    display: flex;
    flex-direction: column;

    background: #111;

    color: white;

    overflow-x: hidden;
}



.navbar {

    background: #111;

    padding: 15px 30px;

    border-bottom: 1px solid rgba(255,255,255,.08);
}

.navbar-brand {

    color: #00d26a !important;

    font-size: 24px;

    font-weight: bold;
}

.navbar-nav .nav-link {

    color: white !important;

    margin-left: 15px;

    transition: .3s;
}

.navbar-nav .nav-link:hover {

    color: #00d26a !important;
}



.content {

    flex: 1;

    width: 100%;

    padding: 40px 15px;

    background:
        linear-gradient(
            rgba(0,0,0,.75),
            rgba(0,0,0,.75)
        ),
        url("https://images.unsplash.com/photo-1534438327276-14e5300c3a48?auto=format&fit=crop&w=1500&q=80");

    background-size: cover;

    background-position: center;

    background-attachment: fixed;
}




.form-card {

    width: 100%;

    max-width: 650px;

    margin: 20px auto;

    padding: 35px;

    background: rgba(20,20,20,.88);

    border: 1px solid rgba(255,255,255,.10);

    border-radius: 15px;

    box-shadow: 0 10px 40px rgba(0,0,0,.6);

    backdrop-filter: blur(8px);
}




.form-card h3 {

    color: white;

    font-size: 30px;

    font-weight: bold;

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




.form-card label {

    color: white;

    font-weight: 500;

    margin-bottom: 7px;
}




.form-control {

    width: 100%;

    height: 45px;

    background: #181818;

    border: 1px solid #333;

    color: white;

    border-radius: 6px;
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



select.form-control {

    color: #ddd;
}

select.form-control option {

    background: #181818;

    color: white;
}



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




.login-link {

    color: #00d26a;

    text-decoration: none;

    transition: .3s;
}

.login-link:hover {

    color: #00b85c;

    text-decoration: none;
}


footer {

    width: 100%;

    background: #111;

    color: #aaa;

    text-align: center;

    padding: 18px;

    border-top: 1px solid rgba(255,255,255,.08);
}




@media (max-width: 991px) {

    .navbar {

        padding: 12px 20px;
    }

    .form-card {

        max-width: 700px;

        padding: 30px;
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

        padding: 20px 10px;

        background-attachment: scroll;
    }

    .form-card {

        width: 100%;

        margin: 10px auto;

        padding: 25px 18px;

        border-radius: 10px;
    }

    .form-card h3 {

        font-size: 24px;
    }

}


@media (max-width: 480px) {

    .navbar-brand {

        font-size: 18px;
    }

    .form-card {

        padding: 22px 15px;
    }

    .form-card h3 {

        font-size: 21px;
    }

    .form-control {

        height: 44px;

        font-size: 16px;
    }

    .custom-btn {

        min-height: 44px;
    }

    footer {

        font-size: 12px;

        padding: 14px 8px;
    }

}



@media (max-width: 360px) {

    .navbar-brand {

        font-size: 16px;
    }

    .form-card {

        padding: 20px 12px;
    }

    .form-card h3 {

        font-size: 19px;
    }

}

</style>

</head>


<body>



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

            <li class="nav-item">
                <a class="nav-link" href="MembershipPlans.jsp">
                    Membership Plans
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="login.jsp">
                    Login
                </a>
            </li>

        </ul>

    </div>

</nav>




<div class="container-fluid content">

    <div class="row">

        <div class="col-12">

            <div class="form-card">

                <h3 class="text-center mb-4">

                    Gym Membership Registration

                </h3>


                <form method="post"
                      action="GymController">


                    <!-- USERNAME -->

                    <div class="form-group">

                        <label>
                            Username
                        </label>

                        <input type="text"
                               class="form-control"
                               name="username"
                               placeholder="Enter Username"
                               required>

                    </div>


                    <!-- FIRST NAME -->

                    <div class="form-group">

                        <label>
                            First Name
                        </label>

                        <input type="text"
                               class="form-control"
                               name="firstname"
                               placeholder="Enter First Name"
                               required>

                    </div>


                    <!-- LAST NAME -->

                    <div class="form-group">

                        <label>
                            Last Name
                        </label>

                        <input type="text"
                               class="form-control"
                               name="lastname"
                               placeholder="Enter Last Name"
                               required>

                    </div>


                    <!-- EMAIL -->

                    <div class="form-group">

                        <label>
                            Email
                        </label>

                        <input type="email"
                               class="form-control"
                               name="email"
                               placeholder="Enter Email"
                               required>

                    </div>


                    <!-- PHONE -->

                    <div class="form-group">

                        <label>
                            Phone Number
                        </label>

                        <input type="text"
                               class="form-control"
                               name="phone"
                               placeholder="Enter Phone Number"
                               required>

                    </div>


                    <!-- AGE -->

                    <div class="form-group">

                        <label>
                            Age
                        </label>

                        <input type="number"
                               class="form-control"
                               name="age"
                               placeholder="Enter Age"
                               required>

                    </div>


                    <!-- GENDER -->

                    <div class="form-group">

                        <label>
                            Gender
                        </label>

                        <select class="form-control"
                                name="gender">

                            <option value="">
                                Select Gender
                            </option>

                            <option>
                                Male
                            </option>

                            <option>
                                Female
                            </option>

                            <option>
                                Other
                            </option>

                        </select>

                    </div>


                    <!-- MEMBERSHIP PLAN -->

                    <div class="form-group">

                        <label>
                            Membership Plan
                        </label>

                        <select class="form-control"
                                name="plan">

                            <option value="">
                                Select Plan
                            </option>

                            <option>
                                Basic
                            </option>

                            <option>
                                Standard
                            </option>

                            <option>
                                Premium
                            </option>

                        </select>

                    </div>


                    <!-- PASSWORD -->

                    <div class="form-group">

                        <label>
                            Password
                        </label>

                        <input type="password"
                               class="form-control"
                               name="password"
                               placeholder="Enter Password"
                               required>

                    </div>


                    <!-- CONFIRM PASSWORD -->

                    <div class="form-group">

                        <label>
                            Confirm Password
                        </label>

                        <input type="password"
                               class="form-control"
                               name="confirm_password"
                               placeholder="Confirm Password"
                               required>

                    </div>


                    <!-- REGISTER -->

       <button type="submit" class="custom-btn">
    Register
</button>


                  

<div class="text-center mt-3">

    <a href="login.jsp" class="login-link">
        Already a member? Login
    </a>

</div>

                </form>

            </div>

        </div>

    </div>

</div>



<!-- ============================= -->
<!-- FOOTER -->
<!-- ============================= -->

<footer>

    <div class="container">

        &copy; 2026 FitZone Gym. All Rights Reserved.

    </div>

</footer>





<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>


</body>

</html>

