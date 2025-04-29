<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Login</title>
    <link rel="stylesheet" type="text/css" href="css/style4SL.css">
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
	
	.s1{
	color: balck;
	}

	</style>
</head>
<body>

    <div class="login-form-staff">
        <h1> Staff Login</h1>
        <form action="staffLogin" method="post">
        <p>Username</p>
        
        <input type="text" class="s1" name="username" placeholder="Enter your username" required>

        <p>Password</p>
        <input type="password" class="s1" name="password" placeholder="Enter your password" required>

        <button type="submit">Log In</button>
        </form>

        

    </div>


</body>
</html>