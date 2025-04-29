<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Driver Account</title>
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
	<jsp:include page="views/header.jsp"></jsp:include>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
	%>
	
	<div class= "form-1">
	<h1>Edit Driver Account</h1>
	<form action="UpdateDriver" method="post">
	<table>
		<tr><td>User id :</td><td> <input type="text" name="uid" value="<%= id %>" readonly></td></tr>
		<tr><td>Name : </td><td><input type="text" name="name" value="<%= name %>"></td></tr>
		<tr><td>Email : </td><td><input type="text" name="email" value="<%= email %>"></td></tr>
		<tr><td>Username :</td><td> <input type="text" name="userName" value="<%= userName %>"></td></tr>
		<tr><td>Password :</td><td> <input type="text" name="password" value="<%= password %>"></td></tr>
	</table>	
		<input type="submit" name="submit" value= "Update Driver">
	</form>
	</div>
<jsp:include page="views/footer.jsp"></jsp:include>	
</body>
</html>