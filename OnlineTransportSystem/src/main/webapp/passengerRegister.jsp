
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Passenger Registration</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/style2PR.css">
    <style type="text/css">
	.f1{
	display: run-in;
	position: relative;
	}
	.f2{
	top:260px;
	position: relative;}
	
	.registration-form{
	top:400px;
	position: relative;
	}

	</style>
</head>
<body>
<div class="f1">
<div class="f3">
<jsp:include page="views/header.jsp"></jsp:include>
</div>
	<div class="registration-form">
		<h1>Passenger Registration</h1>
        <form action="passengerRegister" method="post">
            <p>Full Name:</p>
            <input type="text" name="fullname" placeholder="Full Name" required>
            <p>Email:</p>
            <input type="email" name="email" placeholder="Email" required>
            <p>Phone Number:</p>
            <input type="tel" name="phonenumber" placeholder="Phone Number" required>
            <p>District:</p>   
            <input type="text" name="district" placeholder="District" required>
            <p>User Name:</p>
            <input type="text" name="username" placeholder="User Name" required>
            <p>Password:</p>
            <input type="password" name="password" placeholder="Password" required>
            <br>
            <button type="submit">Register</button>


        </form>
    </div>
    <div class="f2">
 <jsp:include page="views/footer.jsp"></jsp:include>	      
 </div> </div>
    

</body>
</html>