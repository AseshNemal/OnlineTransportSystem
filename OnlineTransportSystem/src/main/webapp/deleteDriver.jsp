<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Driver</title>
<link rel="stylesheet" type="text/css" href="css/forms.css">
<style type="text/css">
	.batton {
    font-size: 15px;
    font-weight: bold;
    padding: 4px 6px;
    width: 150px;
    border: 0;
    border-radius: 4px;
    background-color: #ffd700;
    color: #000;
    cursor: pointer;
    margin-left: 75px;
    margin-right: auto;
}

.batton:hover {
    background-color: #ff0000;
    color: #fff;
    transition: background-color 0.3s ease;
    }
    
.form-1{
	margin-bottom: 200px;
	margin-top: 200px;
}    

    </style>
</head>
<body>
<jsp:include page="views/header.jsp"></jsp:include>

	<%
		String uid = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
	%>
<div class= "form-1">
	<h1>Delete Account</h1>
	<form action="deleteDriver" method="post">
		User id : <input type="text" name="uid" value="<%= uid %>" readonly><br>
		Name : <input type="text" name="name" value="<%= name %>" readonly><br>
		Email : <input type="text" name="email" value="<%= email %> " readonly><br>
		Username : <input type="text" name="userName" value="<%= userName %>" readonly><br>
		<br>
		
		<input class="batton" type="submit" name="sumbit" value= "Delete Account">
	</form>
	
</div>
<jsp:include page="views/footer.jsp"></jsp:include>		

</body>
</html>