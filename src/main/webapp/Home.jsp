<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Fit Life Gym</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

html,body{
    width:100%;
    overflow-x:hidden;
    background:#111;
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
    background:url("https://images.unsplash.com/photo-1534438327276-14e5300c3a48?auto=format&fit=crop&w=1500&q=80");
    background-size:cover;
    background-position:center;
    position:relative;
    min-height:100vh;
}

.overlay{
    position:absolute;
    inset:0;
    background:rgba(0,0,0,.65);
}

.hero-content{
    position:relative;
    z-index:2;
    color:white;
    text-align:center;
    padding-top:90px;
    padding-bottom:40px;
}

.hero h1{
    font-size:65px;
    font-weight:bold;
}

.service-card{
    background:white;
    border-radius:20px;
    padding:35px;
    height:100%;
    box-shadow:0 8px 20px rgba(0,0,0,.3);
    
}





.section-title{

    color:white;
    margin:70px 0 40px;
    font-weight:bold;

}




.service-card:hover{

    transform:translateY(-10px);

}

.service-card h3{

    margin-bottom:20px;
    color:#111;

}



.feature-box{

    background:rgba(255,255,255,.12);
    backdrop-filter:blur(8px);
    color:white;
    border-radius:15px;
    padding:25px;
    margin-bottom:20px;
    transition:.3s;

}




.footer{

    background:#111;
    color:white;
    text-align:center;
    padding:30px 0;
    margin:0;

}

.custom-btn{
    background:#00d26a;
    color:white;
    border:none;
    padding:15px 40px;
    font-size:22px;
    font-weight:bold;
    border-radius:50px;
    transition:.3s;
    text-decoration:none;
}

.custom-btn:hover{
    background:#00b85c;
    color:white;
    transform:translateY(-3px);
    box-shadow:0 8px 20px rgba(0,210,106,.4);
}

</style>

</head>

<body>

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
<a class="nav-link" href="#">Home</a>
</li>

<li class="nav-item">
<a class="nav-link" href="#">Membership</a>
</li>

<li class="nav-item">
<a class="nav-link" href="#">Services</a>
</li>

<li class="nav-item">
<a class="nav-link" href="#">Contact</a>
</li>

<li class="nav-item">
<a class="nav-link text-danger"
href="LogoutController">
Logout
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

<h1>WELCOME TO FIT LIFE GYM</h1>

<p>Push Yourself Because No One Else Is Going To Do It For You.</p>

<div class="mt-4 mb-5">

    <a href="CheckWorkoutController" class="custom-btn">
        Get Your Workout Plan
    </a>

    <a href="workout.jsp" class="custom-btn ms-3">
        Update Workout Assessment
    </a>

</div>
<h2 class="section-title">Our Services</h2>

<div class="row g-4">

    <div class="col-lg-4 col-md-6">

        <div class="service-card text-center">

            <h3>🏋️ Weight Training</h3>

           

        </div>

    </div>

    <div class="col-lg-4 col-md-6">

        <div class="service-card text-center">

            <h3>🏃 Cardio</h3>

        </div>

    </div>

    <div class="col-lg-4 col-md-12">

        <div class="service-card text-center">

            <h3>🧘 Yoga</h3>

           

        </div>

    </div>

</div>


<h2 class="section-title">Why Choose Us?</h2>

<div class="row mt-4">

    <div class="col-md-3">

        <div class="feature-box text-center">

            <h4>💪</h4>

            <h5>Certified Trainers</h5>


        </div>

    </div>

    <div class="col-md-3">

        <div class="feature-box text-center">

            <h4>🏆</h4>

            <h5>Modern Equipment</h5>


        </div>

    </div>

    <div class="col-md-3">

        <div class="feature-box text-center">

            <h4>🥗</h4>

            <h5>Diet Plans</h5>

            
        </div>

    </div>

    <div class="col-md-3">

        <div class="feature-box text-center">

            <h4>🚿</h4>

            <h5>Clean Environment</h5>

         

        </div>
   

    </div>
       <footer class="footer">

    <div class="container">

        <h2>FIT LIFE GYM</h2>

        <p>Fitness • Strength • Health</p>

        <p>© 2026 Gym Membership Management System</p>

    </div>
    </footer>
</div>

</div>

</div>

</section>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>