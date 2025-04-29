<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Ride</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/forms.css">
	<style type="text/css">
	.batton {
    font-size: 15px;
    font-weight: bold;
    padding: 4px 6px;
    width: 100px;
    border: 0;
    border-radius: 4px;
    background-color: #ffd700;
    color: #000;
    cursor: pointer;
    margin-left: auto;
    margin-right: auto;
}

.batton:hover {
    background-color: #ff0000;
    color: #fff;
    transition: background-color 0.3s ease;
    
}</style>

</head>
<body>
	<jsp:include page="views/header.jsp"></jsp:include>
	<h1 style="color: gray; text-align: center;">Passenger Rides</h1>
	<%
		String pid = request.getParameter("pid");
	%>
	
	<div class= "form-1">
	<h1>Add ride</h1><br>
	<form action="addRide" method="post">
		<table>
		<tr><td>Current Location :</td> <td><input type="text" name="cLocation" required></td></tr>
		<tr><td>Destination Location:</td><td><input type="text" name="dLocation" required></td></tr>
		<tr><td>Vehicle Type : </td><td><label for="vehicleType" required></label>
                <select id="vehicleType" name="feedback" required>
                    <option value="Car">Car</option>
                    <option value="Van">Van</option>
                    <option value="Bus">Bus</option>
                    <option value="SUV">SUV</option>
                </select></td></tr>
		</table>
		<input type="hidden" name="passengerID" value = <%=pid %> readOnly><br>
		
		<center><input class="batton" type="submit" name="submit" value="Add ride"></center>
	
	</form></div><br><br>
	
	
	<div class= "form-1">
		<h1>My ride List</h1><br>
		<form action="passengerRides" method="post">
			<input type="hidden" name="pid" value = <%=pid %> readOnly>
			
			<center><input class="batton" type="submit" name="submit" value="Ride List"></center>
		
		</form>
	</div><br><br>
	
	
	
	
	
	
	
	
<jsp:include page="views/footer.jsp"></jsp:include>	


</body>
</html>