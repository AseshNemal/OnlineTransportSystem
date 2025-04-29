<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title> Passenger Login</title>
	<link rel="stylesheet" type="text/css" href="css/style1PL.css">
	<style type="text/css">
	.f1{
	display: run-in;
	position: relative;
	}
	.f2{
	top:260px;
	position: relative;}
	
	.login-form{
	top:300px;
	position: relative;
	}

	</style>
	
</head>
<body>
<div class="f1">
<div class="f3">
<jsp:include page="views/header.jsp"></jsp:include></div>

	<div class="login-form">
        <h1>Login</h1>
        <form action="PassengerLogin" method="post">
        <p>Username</p>
        <input type="text" name="username" placeholder="Enter your username" required>

        <p>Password</p>
        <input type="password" name="password" placeholder="Enter your password" required>

        <button type="submit">Log In</button>
        </form>

        <div class="link">
            <a href="#">Forget Password? </a> | <a href="passengerRegister.jsp">Sign Up</a>
           	<br><br><a href="staffLogin.jsp">Staff Login </a>
        </div>
		
    </div><br><br>

<div class="f2">
 <jsp:include page="views/footer.jsp"></jsp:include>	      
 </div> </div>
    

</body>
</html>