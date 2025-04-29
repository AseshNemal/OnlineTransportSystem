<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Start Ride</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/forms.css">
	<style type="text/css">
	.form-1{margin-top: 200px;
	margin-bottom: 200px;
	padding-bottom: 50px;
	}
	
	.batton {
    font-size: 16px;
    font-weight: bold;
    margin: 10px 0;
    padding: 8px 10px;
    width: 200px;
    border: 0;
    border-radius: 4px;
    background-color: #ffd700;
    color: #000;
    cursor: pointer;
}
	</style>
</head>
<body>
<jsp:include page="views/header.jsp"></jsp:include>
	<%  String rid = request.getParameter("rid");
	String did = request.getParameter("did");
	String pid = request.getParameter("ppid");%>
	
	<div class= "form-1">
	<form action="startRide" method="post">
	<center><h1>Start Ride</h1></center>
	<table>
	<tr><td>Ride id : </td><td><input type="text" name="rid" value="<%= rid %>" readonly></td></tr>
	<tr><td>Driver id :</td><td> <input type="text" name="id" value="<%= did %>" readonly></td></tr>
	</table>
	<center><input class="batton" type="submit" name="submit" value= "Start Ride"></center><br><br>
	
	
	</form>
	<form action="GetPassengerDetails" method="post">
	<input type="hidden" name="pid" value="<%= pid %>">
	<center><input class="batton" type="submit" value="Get Passenger details"></center>
	
	
	</form>
	</div>
	
<jsp:include page="views/footer.jsp"></jsp:include>	
</body>
</html>