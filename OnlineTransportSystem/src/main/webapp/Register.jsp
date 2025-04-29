<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driver Registration</title>
    <link rel="stylesheet" type="text/css" href="css/style3DR.css">
	<style type="text/css">
	.f1{
	display: run-in;
	position: relative;
	}
	.f2{
	top:300px;
	position: relative;}
	
	.registration-form-driver{
	top:450px;
	position: relative;
	}</style>
<body>
<div class="f1">
<div class="f3">
<jsp:include page="views/header.jsp"></jsp:include>
</div>
	<div class="registration-form-driver">
		<h1>Register Page</h1><br>
		
		
		<form action="Register" method="post" placeholder="Full Name" required><br>
			<p>Full Name:</p> 
			<input type="text" name="name" placeholder="Full Name" required ><br>
			
			<p>Email:</p>
			<input type="text" name="email" placeholder="Email" required><br>
			
			<p>Phone Number:</p>
	            <input type="tel" name="phonenumber" placeholder="Phone Number" required>
	            <p>Vehicle type:</p>
	            <select name="vehicletype" required>
	                <option value="">Select Vehicle Type</option>
	                <option value="Motorcycle">Motorcycle</option>
	                <option value="Three-wheel">Three-wheel</option>
	                <option value="Car">Car</option>
	                <option value="Van">Van</option>
	                <option value="Bus">Bus</option> 
	            </select>
	            <p>Vehicle Number:</p>
	            <input type="text" name="vehiclenumber" placeholder="Vehicle Number" required>
	            
	            
			<p>User Name:</p>
			<input type="text" name="user" placeholder="User Name" required><br>
			
			<p>Password:</p>
			<input type="password" name="pass" placeholder="Password" required><br>
			
			<button type="submit">Register as Driver</button>
		</form>
	</div>
<div class="f2">
<jsp:include page="views/footer.jsp"></jsp:include> </div> </div>
</body>
</html>