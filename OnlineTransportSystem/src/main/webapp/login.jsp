<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width>, initial-scale=1.0">
    <title> Driver Login</title>
    <link rel="stylesheet" type="text/css" href="css/styleDL.css">
     <style type="text/css">
	.f1{
	display: run-in;
	position: relative;
	}
	.f2{
	top:260px;
	position: relative;}
	
	.login-form-driver{
	top:300px;
	position: relative;
	}

	</style>
</head>
<body>
<div class="f1">
<div class="f3">
<jsp:include page="views/header.jsp"></jsp:include>
</div>
	<div class="login-form-driver">
		<form action="Log" method="post">
		<h1>Login</h1>
	    <p>Username</p>
		<input type="text" name="userName" placeholder="Enter your username"><br><br>
		<p>Password</p>
		<input type="password" name="pass" placeholder="Enter your password"><br><br>
		<button type="submit">Log In</button>
		</form>
		 <div class="link">
            <a href="#">Forget Password? </a> | <a href="Register.jsp">Sign Up</a>
        </div>
	</div>
 <div class="f2">
 <jsp:include page="views/footer.jsp"></jsp:include>	      
 </div> </div>

</body>
</html>