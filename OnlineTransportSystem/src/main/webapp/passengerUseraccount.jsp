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
   <style type="text/css">
   fieldset{
   width: 600px;
   margin-left: auto;
   margin-right: auto;
   }
   
   
   
   </style>
</head>
<body>
<jsp:include page="views/header.jsp"></jsp:include>
	
	<c:forEach var="passenger" items="${passengerDetails}">
	
		<c:set var="pid" value="${passenger.pid}"/>
		<c:set var="name" value="${passenger.name}"/>
		<c:set var="email" value="${passenger.email}"/>
		<c:set var="phoneNumber" value="${passenger.phoneNumber}"/>
		<c:set var="district" value="${passenger.district}"/>
		<c:set var="username" value="${passenger.username}"/>
		<c:set var="password" value="${passenger.password}"/>
		
		<div class="user">
		<center><h1>Account Information</h1></center>
		<table>
		<tr><td>Passenger ID  </td><td>: ${passenger.pid}</td></tr>
		<tr><td>Name </td><td>: ${passenger.name}</td></tr>
		<tr><td>Email </td><td>: ${passenger.email}</td></tr>
		<tr><td>Phone Number</td><td>: ${passenger.phoneNumber}</td></tr>
		<tr><td>District</td><td>:  ${passenger.district}</td></tr>
		<tr><td>UserName</td><td>: ${passenger.username}</td></tr>
		</table>
		
		</div>
	</c:forEach>
	<center>
	<c:url value="PassengerEditUserAccount.jsp" var="PassengerUserUpadate">
		<c:param name="pid" value="${pid}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phoneNumber" value="${phoneNumber}"/>
		<c:param name="district" value="${district}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	<br>
	<a href="${PassengerUserUpadate}">
		<input class = "batton" type="button" name="update" value="Update Profile">
	</a>
	
	<c:url value="deletePassenger.jsp" var="PassengerDelete">
		<c:param name="pid" value="${pid}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phoneNumber" value="${phoneNumber}"/>
		<c:param name="district" value="${district}"/>
		<c:param name="username" value="${usernames}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	<a href = "${PassengerDelete}">
		<input class = "batton" type ="button" name = "delete" value ="Delete Account">
	</a></center>
	<br><br>
	
	<c:url value="addRide.jsp" var="addRide">
		<c:param name="pid" value="${pid}"/>
		
	</c:url>
	<a href = "${addRide}">
		<center><input class = "batton" type ="button" name = "ride" value ="Ride UI"></center>
	</a>
	
	<fieldset>
	<legend>Trip UI</legend>
		<c:url value="bookTrip.jsp" var="trip">
			<c:param name="pid" value="${pid}"/>
			
		</c:url>
		<a href = "${trip}">
			<center><input class = "batton" type ="button" name = "ride" value ="Add Trip">
		</a>
		
		<c:url value="viewMyTrips.jsp" var="trip">
			<c:param name="pid" value="${pid}"/>
			
		</c:url>
		<form action="myTrip" method="post">
			<input type="hidden" name="pid" value="${pid}">
			<input class = "batton" type ="submit" name = "ride" value =" My Trip"></center>
		</form>
	</fieldset><br><br>
	
	
	
	<fieldset>
	<legend>Inquriy</legend>
		<c:url value="Insert.jsp" var="Insert">
			<c:param name="pid" value="${pid}"/>
		</c:url>	
		
		<a href = "${Insert}">
			<center><input class = "batton" type ="button" name = "Insert" value ="Add Inquiries"></center>
		</a>
		
		 <form action = "GetMyInqServlets" method = "post">
		 	<input type = "hidden" name = "pid" value = "${pid}">
		 	<center><input class = "batton" type = "submit" value = "View My Inquiries"></center>
		 </form>
		
	
	</fieldset>
	
	
<jsp:include page="views/footer.jsp"></jsp:include>			
		

</body>
</html>