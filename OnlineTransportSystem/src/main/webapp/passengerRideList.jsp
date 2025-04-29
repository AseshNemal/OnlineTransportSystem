<%@page import="java.util.PriorityQueue"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="com.model.Ride" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Passenger Ride List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/rideList.css">
</head>
<body>
<jsp:include page="views/header.jsp"></jsp:include>	

<div class="tables">
<center><h1>My ride List</h1></center>
	<table border="1">
            <tr>
                <th>Ride ID</th>
                <th>Date</th>
                <th>Time</th>
                <th>Vehicle Type</th>
                <th>Current Location</th>
                <th>Destination location</th>
                <th>Total Distance</th>
                <th>Ride Fee</th>
                <th>Passenger ID </th>
                <th>Driver ID</th>
                <th>Action</th>
            </tr>
	
	<% PriorityQueue<Ride> rides = (PriorityQueue<Ride>) request.getAttribute("rides");
   if (rides != null && !rides.isEmpty()) {
      for (Ride ride : rides) {
%>
      <tr>
         <td><%= ride.getRid() %></td>
         <td><%= ride.getDate() %></td>
         <td><%= ride.getTime() %></td>
         <td><%= ride.getcLocation() %></td>
         <td><%= ride.getDisLocation() %></td>
         <td><%= ride.getFeedback() %></td>
         <td><%= ride.getTotDistance() %></td>
         <td><%= ride.getRidefee() %></td>
         <td><%= ride.getPassengerID() %></td>
         <td><%= ride.getDriverid() %></td>
         
          <%int id = ride.getRid(); %>
         <% String rid = Integer.toString(id); %>
         <td>
         	<form action="deleteRide" method="POST">
                        <input type="hidden" name="rid" value="<%=rid%>">
                        <input class="batton" type="submit" name="btn" value="Delete">
                    </form>
                
         </td>
	
	
         
      </tr>
<%    }
   } else {
%>
      <tr><td colspan="11">No rides available</td></tr>
<% } %>

	</table>
	</div>
	
<jsp:include page="views/footer.jsp"></jsp:include>	
</body>
</html>