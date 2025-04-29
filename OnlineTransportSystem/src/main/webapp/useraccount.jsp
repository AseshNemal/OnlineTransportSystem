<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Passenger User Account</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/useraccount.css">
</head>
<body>
<jsp:include page="views/header.jsp"></jsp:include>

	
	<c:forEach var="driver" items="${driverDetails}">
	
		<c:set var="id" value="${driver.id}"/>
		<c:set var="name" value="${driver.name}"/>
		<c:set var="email" value="${driver.email}"/>
		<c:set var="userName" value="${driver.userName}"/>
		<c:set var="password" value="${driver.password}"/>
			
			
		<div class="user">
			<center><h1> Driver Account</h1></center>
			<table>
			<tr><td>Driver ID  </td><td>: ${driver.id}</td></tr>
			<tr><td>Name </td><td>: ${driver.name}</td></tr>
			<tr><td>Email </td><td>: ${driver.email}</td></tr>
			<tr><td>UserName</td><td>: ${driver.userName}</td></tr>
		</table>
		</div>
		
	</c:forEach>

	
	<center>
	<c:url value="EditUserAccount.jsp" var="userUpadate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="userName" value="${userName}"/>
		<c:param name="password" value="${password}"/>
	</c:url>

	<a href="${userUpadate}">
		<input class = "batton" type="button" name="update" value="Update Profile">
	</a>

	<c:url value="deleteDriver.jsp" var="driverDelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="userName" value="${userName}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	<a href = "${driverDelete}">
		<input class = "batton" type ="button" name = "delete" value ="Delete Account">
	</a>
	</center>
		
		
	<fieldset class="fieldset-1">
	<legend>Get Rides</legend>
		<form action="rideList" method="post">
		<input type="hidden" name="did" value="${id}">
		<center><input class = "batton"type="submit" name="submit" value="show Ride List"></center>
	</form>
	</fieldset>
	
	
	
<jsp:include page="views/footer.jsp"></jsp:include>			
</body>
</html>