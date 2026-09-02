<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.List,com.gym.service.WorkoutDay,com.gym.service.Exercise" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Fit Life - Workout Plan</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;
}

body{

background:url("https://images.unsplash.com/photo-1534438327276-14e5300c3a48?auto=format&fit=crop&w=1500&q=80");

background-size:cover;

background-position:center;

background-attachment:fixed;

min-height:100vh;

}

.overlay{

position:fixed;

inset:0;

background:rgba(0,0,0,.72);

z-index:-1;

}

.navbar{

background:#111;

padding:15px 0;

}

.navbar-brand{

color:#00d26a !important;

font-size:32px;

font-weight:bold;

}

.nav-link{

color:white !important;

margin-left:20px;

font-size:18px;

}

.nav-link:hover{

color:#00d26a !important;

}

.hero{

padding:60px 0 20px;

text-align:center;

color:white;

}

.hero h1{

font-size:55px;

font-weight:bold;

margin-bottom:20px;

}

.hero p{

font-size:22px;

}

.hero span{

color:#00d26a;

font-weight:bold;

}

.feature-card{

background:rgba(255,255,255,.12);

backdrop-filter:blur(12px);

border-radius:25px;

padding:45px;

text-align:center;

cursor:pointer;

transition:.4s;

height:100%;

border:1px solid rgba(255,255,255,.15);

box-shadow:0 10px 30px rgba(0,0,0,.35);

}

.feature-card:hover{

transform:translateY(-10px);

background:rgba(0,210,106,.20);

box-shadow:0 15px 40px rgba(0,210,106,.25);

}

.feature-card i{

font-size:70px;

margin-bottom:25px;

color:#00d26a;

}

.feature-card h3{

color:white;

font-weight:bold;

margin-bottom:10px;

}

.feature-card p{

color:#ddd;

font-size:18px;

}

.modal-content{

background:#181818;

color:white;

border-radius:25px;

border:2px solid #00d26a;

}

.modal-header{

border:none;

}

.modal-body{

padding:30px;

}

.table{

color:white;

}

.table td{

padding:15px;

font-size:18px;

}

.btn-close{

filter:invert(1);

}

.footer{

margin-top:60px;

padding:30px;

text-align:center;

color:white;

background:#111;

}

.progress{

height:25px;

border-radius:15px;

background:#333;

}

.progress-bar{

font-size:15px;

font-weight:bold;

}

.card{

background:rgba(255,255,255,.12);

backdrop-filter:blur(10px);

border-radius:20px;

color:white;

}

</style>

</head>
<div id="loader">

<div class="spinner-border text-success"

style="width:5rem;height:5rem;"

role="status">

</div>

</div>

#loader{

position:fixed;

top:0;

left:0;

width:100%;

height:100%;

background:#111;

display:flex;

justify-content:center;

align-items:center;

z-index:9999;

}

<body>

<div class="overlay"></div>

<nav class="navbar navbar-expand-lg navbar-dark">

<div class="container">

<a class="navbar-brand" href="#">FIT LIFE</a>

<button class="navbar-toggler"

data-bs-toggle="collapse"

data-bs-target="#menu">

<span class="navbar-toggler-icon"></span>

</button>

<div class="collapse navbar-collapse"

id="menu">

<ul class="navbar-nav ms-auto">

<li class="nav-item">

<a class="nav-link"

href="Home.jsp">

Home

</a>

</li>

<li class="nav-item">

<a class="nav-link"

href="LogoutController">

Logout

</a>

</li>

</ul>

</div>

</div>

</nav>

<section class="hero">

<div class="container">

<h1>

Your Personalized Fitness Plan

</h1>

<p>

Welcome Back

<span>

<%=session.getAttribute("username")%>

</span>

💪

</p>

<p>

Click any card below to view your complete fitness information.

</p>

</div>

</section>

<div class="container mt-4">

    <div class="row g-4">

        <div class="col-md-3">

            <div class="card shadow-lg text-center border-0">

                <div class="card-body">

                    <h5>BMI</h5>

                    <h2 class="text-primary">
                        <%=request.getAttribute("bmi")%>
                    </h2>

                </div>

            </div>

        </div>

        <div class="col-md-3">

            <div class="card shadow-lg text-center border-0">

                <div class="card-body">

                    <h5>Calories</h5>

                    <h2 class="text-danger">
                        <%=request.getAttribute("calories")%>
                    </h2>

                </div>

            </div>

        </div>

        <div class="col-md-3">

            <div class="card shadow-lg text-center border-0">

                <div class="card-body">

                    <h5>Protein</h5>

                    <h2 class="text-success">
                        <%=request.getAttribute("protein")%> g
                    </h2>

                </div>

            </div>

        </div>

        <div class="col-md-3">

            <div class="card shadow-lg text-center border-0">

                <div class="card-body">

                    <h5><i class="fa-solid fa-glass-water text-info"></i> Water</h5>

                    <h2 class="text-info">
                        <%=request.getAttribute("water")%> L
                    </h2>

                </div>

            </div>

        </div>

    </div>

</div>

<div class="container">

<div class="row g-4">

<div class="col-lg-4 col-md-6">

<div class="feature-card"

data-bs-toggle="modal"

data-bs-target="#personalModal">

<i class="fa-solid fa-user"></i>

<h3>Personal Information</h3>

<p>Click to View</p>

</div>

</div>

<div class="col-lg-4 col-md-6">

<div class="feature-card"

data-bs-toggle="modal"

data-bs-target="#healthModal">

<i class="fa-solid fa-heart-pulse"></i>

<h3>Health Summary</h3>

<p>Click to View</p>

</div>

</div>

<div class="col-lg-4 col-md-6">

<div class="feature-card"

data-bs-toggle="modal"

data-bs-target="#goalModal">

<i class="fa-solid fa-bullseye"></i>

<h3>Daily Goals</h3>

<p>Click to View</p>

</div>

</div>

<div class="col-lg-4 col-md-6">

<div class="feature-card"

data-bs-toggle="modal"

data-bs-target="#workoutModal">

<i class="fa-solid fa-dumbbell"></i>

<h3>Workout Plan</h3>

<p>Click to View</p>

</div>

</div>

<div class="col-lg-4 col-md-6">

<div class="feature-card"

data-bs-toggle="modal"

data-bs-target="#dietModal">

<i class="fa-solid fa-utensils"></i>

<h3>Diet Plan</h3>

<p>Click to View</p>

</div>

</div>

<div class="col-lg-4 col-md-6">

<div class="feature-card"

data-bs-toggle="modal"

data-bs-target="#progressModal">

<i class="fa-solid fa-chart-line"></i>

<h3>Progress</h3>

<p>Click to View</p>

</div>

</div>

</div>

</div>

<!-- PART 2 STARTS HERE -->
<!-- ================= PERSONAL INFO ================= -->

<div class="modal fade" id="personalModal">

<div class="modal-dialog modal-dialog-centered">

<div class="modal-content">

<div class="modal-header">

<h3>👤 Personal Information</h3>

<button class="btn-close"
data-bs-dismiss="modal"></button>

</div>

<div class="modal-body">

<table class="table table-dark table-borderless">

<tr>

<td>Age</td>

<td><%=request.getAttribute("age")%></td>

</tr>

<tr>

<td>Gender</td>

<td><%=request.getAttribute("gender")%></td>

</tr>

<tr>

<td>Height</td>

<td><%=request.getAttribute("height")%> cm</td>

</tr>

<tr>

<td>Weight</td>

<td><%=request.getAttribute("weight")%> kg</td>

</tr>

<tr>

<td>Goal</td>

<td><%=request.getAttribute("goal")%></td>

</tr>

<tr>

<td>Experience</td>

<td><%=request.getAttribute("experience")%></td>

</tr>

</table>

</div>

</div>

</div>

</div>



<!-- ================= HEALTH ================= -->

<div class="modal fade" id="healthModal">

<div class="modal-dialog modal-dialog-centered">

<div class="modal-content">

<div class="modal-header">

<h3>❤️ Health Summary</h3>

<button class="btn-close"
data-bs-dismiss="modal"></button>

</div>

<div class="modal-body">

<table class="table table-dark table-borderless">

<tr>

<td>BMI</td>

<td><%=request.getAttribute("bmi")%></td>

</tr>

<tr>

<td>Status</td>

<td><%=request.getAttribute("status")%></td>

</tr>

<tr>

<td>Calories</td>

<td><%=request.getAttribute("calories")%> kcal</td>

</tr>

<tr>

<td>Protein</td>

<td><%=request.getAttribute("protein")%> g</td>

</tr>

<tr>

<td>Water Intake</td>

<td><%=request.getAttribute("water")%> L</td>

</tr>

<tr>

<td>Sleep</td>

<td>8 Hours</td>

</tr>

</table>

</div>

</div>

</div>

</div>



<!-- ================= DAILY GOALS ================= -->

<div class="modal fade" id="goalModal">

<div class="modal-dialog modal-dialog-centered">

<div class="modal-content">

<div class="modal-header">

<h3>🎯 Daily Goals</h3>

<button class="btn-close"
data-bs-dismiss="modal"></button>

</div>

<div class="modal-body">

<table class="table table-dark table-borderless">

<tr>

<td>Daily Steps</td>

<td><%=request.getAttribute("steps")%></td>

</tr>

<tr>

<td>Workout Time</td>

<td><%=request.getAttribute("workoutDuration")%> Minutes</td>

</tr>

<tr>

<td>Calories</td>

<td><%=request.getAttribute("calories")%> kcal</td>

</tr>

<tr>

<td>Protein</td>

<td><%=request.getAttribute("protein")%> g</td>

</tr>

<tr>

<td>Water</td>

<td><%=request.getAttribute("water")%> L</td>

</tr>

<tr>

<td>Sleep</td>

<td>8 Hours</td>

</tr>

</table>

</div>

</div>

</div>

</div>



<!-- ================= WORKOUT ================= -->

<div class="modal fade" id="workoutModal">

<div class="modal-dialog modal-xl modal-dialog-centered">

<div class="modal-content">

<div class="modal-header">

<h3>🏋 Weekly Workout Plan</h3>

<button class="btn-close"
data-bs-dismiss="modal"></button>

</div>

<div class="modal-body">

<%
List<WorkoutDay> workout =
(List<WorkoutDay>)request.getAttribute("workout");

if(workout!=null){

for(WorkoutDay day : workout){
%>

<h4 class="text-success mt-4">

<%=day.getDay()%>

</h4>

<table class="table table-dark table-striped table-bordered">

<tr>

<th>Exercise</th>

<th>Sets</th>

<th>Reps</th>

<th>Rest</th>

</tr>

<%

for(Exercise e : day.getExercises()){

%>

<tr>

<td><%=e.getExerciseName()%></td>
<td><%=e.getSets()%></td>
<td><%=e.getReps()%></td>
<td><%=e.getRestTime()%></td>

</tr>

<%

}

%>

</table>

<%

}

}else{

%>

<h4 class="text-center">

No Workout Generated

</h4>

<%

}

%>

</div>

</div>

</div>

</div>



<!-- ================= DIET ================= -->

<div class="modal fade" id="dietModal">

<div class="modal-dialog modal-lg modal-dialog-centered">

<div class="modal-content">

<div class="modal-header">

<h3>🥗 Diet Plan</h3>

<button class="btn-close"
data-bs-dismiss="modal"></button>

</div>

<div class="modal-body">

<ul class="list-group">

<%
List<String> diet =
(List<String>)request.getAttribute("diet");

if(diet!=null){

for(String meal : diet){
%>

<li class="list-group-item bg-dark text-white">

<%=meal%>

</li>

<%
}
}
%>

</ul>

</div>

</div>

</div>

</div>





<div class="modal fade" id="progressModal">

<div class="modal-dialog modal-dialog-centered">

<div class="modal-content">

<div class="modal-header">

<h3>📈 Progress</h3>

<button class="btn-close"
data-bs-dismiss="modal"></button>

</div>

<div class="modal-body">

<h5><i class="fa-solid fa-weight-scale text-primary"></i> BMI</h5>

<div class="progress mb-3" style="height:25px;">

    <div class="progress-bar bg-success" style="width:<%=request.getAttribute("bmiProgress")%>%">

        <%=request.getAttribute("bmi")%>

    </div>

</div>

<h5><i class="fa-solid fa-fire text-danger"></i> Calories</h5>

<div class="progress mb-3" style="height:25px;">

    <div class="progress-bar bg-danger" style="width:<%=request.getAttribute("calorieProgress")%>%">

        <%=request.getAttribute("calories")%> kcal

    </div>

</div>

<h5><i class="fa-solid fa-drumstick-bite text-success"></i> Protein</h5>

<div class="progress mb-3" style="height:25px;">

    <div class="progress-bar bg-primary" style="width:<%=request.getAttribute("proteinProgress")%>%">

        <%=request.getAttribute("protein")%> g

    </div>

</div>

<h5>Water Intake</h5>

<div class="progress mb-3" style="height:25px;">

    <div class="progress-bar bg-info"style="width:<%=request.getAttribute("waterProgress")%>%">

        <%=request.getAttribute("water")%> L

    </div>

</div>

<div class="alert alert-success text-center mt-3">

    <strong>Current Goal:</strong>
    <%=request.getAttribute("goal")%>

</div>

<div class="alert alert-warning text-center">

    <strong>Current Weight:</strong>
    <%=request.getAttribute("weight")%> kg

</div>
<div class="alert alert-info text-center">

    <strong>Workout Plan</strong><br>

    <%=request.getAttribute("daysPerWeek")%> Days / Week

</div>

<div class="alert alert-primary text-center">

    <strong>Workout Place</strong><br>

    <%=request.getAttribute("workoutPlace")%>

</div>

<div class="alert alert-secondary text-center">

    <strong>Workout Duration</strong><br>

    <%=request.getAttribute("workoutDuration")%> Minutes

</div>

<div class="alert alert-danger text-center">

    <strong>Injury</strong><br>

    <%=request.getAttribute("injury")%>

</div>

</div>

</div>

</div>

</div>

<!-- PART 3 STARTS HERE -->
<footer class="footer">

<div class="container">

<h4 class="mb-2">

<i class="fa-solid fa-dumbbell"></i>

FIT LIFE

</h4>

<p>

Stay Consistent • Stay Healthy • Stay Strong 💪

</p>

<p class="mb-0">

Developed By
<%=session.getAttribute("username")%>

<br>

© 2026 Fit Life Gym



</p>

</div>

</footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>

// Smooth animation when page loads

window.addEventListener("load",function(){

const cards=document.querySelectorAll(".feature-card");

cards.forEach(function(card,index){

card.style.opacity="0";

card.style.transform="translateY(40px)";

setTimeout(function(){

card.style.transition="all .6s ease";

card.style.opacity="1";

card.style.transform="translateY(0)";

},index*150);

});

});

// Card hover effect

document.querySelectorAll(".feature-card").forEach(function(card){

card.addEventListener("mouseenter",function(){

card.style.transform="translateY(-10px) scale(1.03)";

});

card.addEventListener("mouseleave",function(){

card.style.transform="translateY(0) scale(1)";

});

});

window.onload=function(){

	document.getElementById("loader").style.display="none";

	};

</script>

</body>

</html>