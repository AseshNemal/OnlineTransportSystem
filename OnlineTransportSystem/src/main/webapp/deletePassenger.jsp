<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Passenger</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/forms.css">
	<style type="text/css">
	.form-1{margin-top: 100px;
	margin-bottom: 100px;
	padding-bottom: 50px;
	}
	</style>
</head>
<body>
	<body>
	<jsp:include page="views/header.jsp"></jsp:include>

	<%
		String pid = request.getParameter("pid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String district = request.getParameter("district");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
	%>
	<div class= "form-1">
	<center><h1>Delete Account</h1></center>
	<form action="deletePassenger" method="post">
		User id : <input type="text" name="pid" value="<%= pid %>" readonly><br>
		Name : <input type="text" name="name" value="<%= name %>" readonly><br>
		phone Number : <input type="text" name="uid" value="<%= phoneNumber %>" readonly><br>
		District : <input type="text" name="name" value="<%= district %>" readonly><br>
		Email : <input type="text" name="email" value="<%= email %> " readonly><br>
		
		<br>
		
		<input type="submit" name="sumbit" value= "Confirm">
	</form>
	</div>
	<jsp:include page="views/footer.jsp"></jsp:include>	

</body>
</html>