<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Bookings</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 20px;
    }

    h1 {
        text-align: center;
        font-size: 24px;
        color: #333;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        background-color: #fff;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #007bff;
        color: white;
        text-transform: uppercase;
        letter-spacing: 0.1em;
        font-size: 14px;
        text-align: center;
    }

    td {
        color: #555;
        font-size: 14px;
        text-align: center;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    a button {
        background-color: #28a745;
        color: white;
        border: none;
        padding: 8px 12px;
        border-radius: 4px;
        cursor: pointer;
        font-size: 14px;
        margin-right: 5px;
    }

    a button:hover {
        background-color: #218838;
    }

    form {
        display: inline-block;
        margin: 0;
    }

    form input[type="submit"] {
        background-color: #dc3545;
        color: white;
        border: none;
        padding: 8px 12px;
        border-radius: 4px;
        cursor: pointer;
        font-size: 14px;
    }

    form input[type="submit"]:hover {
        background-color: #c82333;
    }

    input[type="hidden"] {
        display: none;
    }

    .container {
        max-width: 1500px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .btn-back {
        display: block;
        width: 200px;
        margin: 20px auto;
        padding: 10px;
        background-color: #007bff;
        color: white;
        text-align: center;
        border: none;
        border-radius: 4px;
        text-decoration: none;
        font-size: 16px;
        cursor: pointer;
    }

    .btn-back:hover {
        background-color: #0056b3;
    }

</style>
</head>
<body>
<jsp:include page="views/header.jsp"></jsp:include>
    <div class="container">
        <h1>My Bookings</h1>

        <c:forEach var="tripD" items="${trip}">
            <c:set var="pid" value="${tripD.pid}" />
        </c:forEach>

        <form action="exit" method="POST">
            <input type="hidden" name="pid" value="${pid}">
            <input type="submit" name="btn2" value="Return to Passenger UI" class="btn-back">
        </form>

        <table>
            <tr>
                <th>Trip ID</th>
                <th>Booking Date</th>
                <th>Vehicle Type</th>
                <th>Pickup Location</th>
                <th>Drop Off Location</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Additional Notes</th>
                <th>Price</th>
                <th>Status</th>
                <th>Action</th>
            </tr>

            <c:forEach var="trip" items="${trip}">
            <tr>
                <td>${trip.tripID}</td>
                <td>${trip.bookingDate}</td>
                <td>${trip.vehicleType}</td>
                <td>${trip.pickupLoc}</td>
                <td>${trip.dropoffLoc}</td>
                <td>${trip.startDate}</td>
                <td>${trip.endDate}</td>
                <td>${trip.notes}</td>
                <td>${trip.price}</td>
                <td>${trip.status}</td>
                <td>
                    <a href="updateTrip.jsp?tripID=${trip.tripID}&pid=${trip.pid}&bookingDate=${trip.bookingDate}&vehicleType=${trip.vehicleType}&pickupLoc=${trip.pickupLoc}&dropoffLoc=${trip.dropoffLoc}&startDate=${trip.startDate}&endDate=${trip.endDate}&notes=${trip.notes}&price=${trip.price}&status=${trip.status}">
                        <button>Update</button>
                    </a>

                    <form action="tDelete" method="POST">
                        <input type="hidden" name="pid" value="${trip.pid}">
                        <input type="hidden" name="tripID" value="${trip.tripID}">
                        <input type="submit" name="btn" value="Delete">
                    </form>
                </td>
            </tr>
            </c:forEach>

        </table>
    </div>
<jsp:include page="views/footer.jsp"></jsp:include>		
</body>
</html>
