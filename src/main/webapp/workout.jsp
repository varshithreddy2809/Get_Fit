<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Fitness Assessment</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

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
    min-height:100vh;
}

.overlay{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.75);
}

.container-box{
    position:relative;
    z-index:2;
    width:550px;
    max-width:95%;
    margin:50px auto;
    background:rgba(20,20,20,.85);
    backdrop-filter:blur(10px);
    border-radius:20px;
    padding:40px;
    color:white;
    box-shadow:0 10px 30px rgba(0,0,0,.5);
}

h2{
    text-align:center;
    color:#00d26a;
    margin-bottom:30px;
    font-weight:bold;
}

.form-label{
    font-size:18px;
}

.form-control,
.form-select{
    height:50px;
}

.btn-success{
    width:100%;
    height:55px;
    font-size:20px;
    font-weight:bold;
    background:#00d26a;
    border:none;
}

.btn-success:hover{
    background:#00b85c;
}

</style>

</head>

<body>

<div class="overlay"></div>

<div class="container-box">

<h2>Fitness Assessment</h2>

<form action="WorkoutCOntroller" method="post">

<div class="mb-3">
<label class="form-label">Age</label>
<input type="number" name="age" class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Gender</label>

<select name="gender" class="form-select" required>
<option value="">Select Gender</option>
<option>Male</option>
<option>Female</option>
</select>

</div>

<div class="mb-3">
<label class="form-label">Height (cm)</label>
<input type="number" name="height" class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Weight (kg)</label>
<input type="number" name="weight" class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Fitness Goal</label>

<select name="goal" class="form-select" required>

<option value="">Select Goal</option>

<option value="Muscle Gain">Muscle Gain</option>

<option value="Weight Loss">Weight Loss</option>

<option value="Maintain Fitness">Maintain Fitness</option>

</select>

</div>

<div class="mb-4">
<label class="form-label">Experience Level</label>

<select name="experience" class="form-select" required>

<option value="">Select Experience</option>
<option value="Beginner">Beginner (1 to 6 Months)</option>
<option value="Intermediate">Intermediate (6 to 12 Months)</option>
<option value="Advanced">Advanced (More Than 1 Year)</option>

</select>

</div>

<!-- Days Per Week -->

<div class="mb-3">

<label class="form-label">Days Per Week</label>

<select name="daysPerWeek" class="form-select" required>

<option value="">Select Days</option>

<option value="3">3 Days</option>

<option value="4">4 Days</option>

<option value="5">5 Days</option>

<option value="6">6 Days</option>

</select>

</div>

<!-- Workout Place -->

<div class="mb-3">

<label class="form-label">Workout Place</label>

<select name="workoutPlace" class="form-select" required>

<option value="">Select Place</option>

<option value="Gym">Gym</option>

<option value="Home">Home</option>

</select>

</div>

<!-- Workout Duration -->

<div class="mb-3">

<label class="form-label">Workout Duration</label>

<select name="workoutDuration" class="form-select" required>

<option value="">Select Duration</option>

<option value="30">30 Minutes</option>

<option value="45">45 Minutes</option>

<option value="60">60 Minutes</option>

<option value="90">90 Minutes</option>

</select>

</div>

<!-- Injury -->

<div class="mb-4">

<label class="form-label">Any Injury?</label>

<select name="injury" class="form-select" required>

<option value="None">None</option>

<option value="Shoulder">Shoulder</option>

<option value="Knee">Knee</option>

<option value="Back">Back</option>

</select>

</div>

<button type="submit" class="btn btn-success">
Generate Workout Plan
</button>

</form>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>