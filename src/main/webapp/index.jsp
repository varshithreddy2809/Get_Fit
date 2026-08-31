<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gym Membership Registration</title>

<!-- Bootstrap 4 -->
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<style>

body{
    display:flex;
    flex-direction:column;
    min-height:100vh;
    background:#f8f9fa;
}

.content{
    flex:1;
}

.form-card{
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 2px 10px rgba(0,0,0,.2);
    margin:40px 0;
}

footer{
    background:#343a40;
    color:white;
    text-align:center;
    padding:15px;
}

</style>

</head>
<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

<a class="navbar-brand" href="#">
<img src="https://via.placeholder.com/40"
class="rounded-circle">
FitZone Gym
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
<a class="nav-link" href="#">Home</a>
</li>

<li class="nav-item">
<a class="nav-link" href="#">Membership Plans</a>
</li>

<li class="nav-item">
<a class="nav-link" href="#">Trainers</a>
</li>

<li class="nav-item">
<a class="nav-link" href="#">Contact</a>
</li>

</ul>

</div>

</nav>

<!-- Body -->

<div class="container-fluid content">

<div class="row">

<div class="col-lg-3"></div>

<div class="col-12 col-lg-6">

<div class="form-card">

<h3 class="text-center mb-4">
Gym Membership Registration
</h3>

<form method="post" action="GymController">

<div class="form-group">
<label>Username</label>
<input type="text"
class="form-control"
name="username"
placeholder="Enter Username"
required>
</div>

<div class="form-group">
<label>First Name</label>
<input type="text"
class="form-control"
name="firstname"
placeholder="Enter First Name"
required>
</div>

<div class="form-group">
<label>Last Name</label>
<input type="text"
class="form-control"
name="lastname"
placeholder="Enter Last Name"
required>
</div>

<div class="form-group">
<label>Email</label>
<input type="email"
class="form-control"
name="email"
placeholder="Enter Email"
required>
</div>

<div class="form-group">
<label>Phone Number</label>
<input type="text"
class="form-control"
name="phone"
placeholder="Enter Phone Number"
required>
</div>

<div class="form-group">
<label>Age</label>
<input type="number"
class="form-control"
name="age"
placeholder="Enter Age"
required>
</div>

<div class="form-group">
<label>Gender</label>

<select class="form-control" name="gender">

<option value="">Select Gender</option>

<option>Male</option>

<option>Female</option>

<option>Other</option>

</select>

</div>

<div class="form-group">
<label>Membership Plan</label>

<select class="form-control" name="plan">

<option value="">Select Plan</option>

<option>Basic</option>

<option>Standard</option>

<option>Premium</option>

</select>

</div>

<div class="form-group">
<label>Password</label>
<input type="password"
class="form-control"
name="password"
placeholder="Enter Password"
required>
</div>

<div class="form-group">
<label>Confirm Password</label>
<input type="password"
class="form-control"
name="confirm_password"
placeholder="Confirm Password"
required>
</div>

<button type="submit"
class="btn btn-primary btn-block">
Register
</button>

<div class="text-center mt-3">

<a href="login.jsp">
Already a member? Login
</a>

</div>

</form>

</div>

</div>

<div class="col-lg-3"></div>

</div>

</div>

<!-- Footer -->

<footer>

<div class="container">

&copy; 2026 FitZone Gym. All Rights Reserved.

</div>

</footer>

<!-- Bootstrap JS -->

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>

</body>
</html>