<%@page import="java.util.PriorityQueue"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="com.model.Ride" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ride List</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/rideList.css">

</head>
<body>
	<jsp:include page="views/header.jsp"></jsp:include>	
	<%  String did = (String) request.getAttribute("did"); %>
	<div class="tables">
	<h1>Ride List</h1>
	<h4>If the ride has a driver ID, the ride is already taken by the other driver.</h4>
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
         <td>
          <%int ppid = ride.getPassengerID(); %>
         <%int id = ride.getRid(); %>
         <% String pid = Integer.toString(ppid); %>
         <% String rid = Integer.toString(id); %>
         <c:url value="driverRide.jsp" var="approveRide">
		<c:param name="rid" value="<%= rid %>"/>
		<c:param name="did" value="<%= did %>"/>
		<c:param name="ppid" value="<%= pid %>"/>
		</c:url>
		<a href="${approveRide}">
		<input class="batton" type="button" name="GetRide" value="Get Ride">
	</a></td>
         
        
<%    }
   } else {
%>
      <tr><td colspan="10">No rides available</td></tr>
<% } %>

	</table>
      
	</div>
	<jsp:include page="views/footer.jsp"></jsp:include>	 
</body>
</html>
