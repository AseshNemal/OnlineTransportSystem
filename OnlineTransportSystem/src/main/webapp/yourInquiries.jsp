<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ask Rideplus</title>
<style>
body {
    background-color: #1e1e1e; /* Darker background */
    color: #e3d69e; /* Softer light yellow text */
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Modern font */
    margin: 0;
    padding: 20px;
}

h2 {
    color: #f2c94c; /* Brighter yellow for headings */
    text-align: center;
    margin-bottom: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin: 0 auto;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Subtle shadow for depth */
}

th, td {
    padding: 15px;
    border: 1px solid #4b4b4b; /* Darker border */
    text-align: left;
}

th {
    background-color: #4b4b4b; /* Dark gray for table header */
    color: #f2c94c; /* Bright yellow text for header */
    font-weight: bold;
    text-transform: uppercase; /* Uppercase for header text */
}

tr:nth-child(even) {
    background-color: #2f2f2f; /* Darker background for even rows */
}

tr:hover {
    background-color: #3a3a3a; /* Lighter gray on hover */
}

button, input[type="submit"] {
    background-color: #f2c94c; /* Bright yellow button */
    color: #1e1e1e; /* Dark text */
    border: none;
    padding: 10px 15px;
    border-radius: 4px; /* Rounded corners */
    cursor: pointer;
    font-weight: bold;
    transition: background-color 0.3s, transform 0.2s; /* Smooth transitions */
}

button:hover, input[type="submit"]:hover {
    background-color: #d1a03c; /* Darker yellow on hover */
    transform: scale(1.05); /* Slightly enlarge on hover */
}

form {
    display: inline; /* Inline form for delete button */
}


</style>

</head>
<body>
<jsp:include page="views/header.jsp"></jsp:include>

<h2>Your Inquiries</h2>
<table>
    <tr>
        <th>InquiryId</th>
        <th>PassengerId</th>
        <th>Inquiry</th>
        <th>Customer Name</th>
        <th>Reply</th>
        <th>Date</th>
        <th>action</th>
    </tr>
   <c:forEach var="Inquiry" items="${inq}">
   <tr>
        <td>${Inquiry.inquiryId}</td>
        <td>${Inquiry.pid}</td>
        <td>${Inquiry.inquiry}</td>
        <td>${Inquiry.customerName}</td> 
        <td>${Inquiry.reply}</td>
        <td>${Inquiry.date}</td>
        
        <td>
           <a href="UpdateIn.jsp?inquiryId=${Inquiry.inquiryId}&pid=${Inquiry.pid}&inquiry=${Inquiry.inquiry}&CustomerName=${Inquiry.customerName}&reply=${Inquiry.reply}&date=${Inquiry.date}">
           <button>update</button>
           </a>
           <form action = "DeleteInqServlets" method = "POST">
           		<input type = "hidden" name = "pid" value = "${Inquiry.pid}">
           		<input type = "hidden" name = "inqID" value = "${Inquiry.inquiryId}">
           		<input type = "submit" name = "btn" value = "Delete">
           </form>
        </td>
    
    </tr>
</c:forEach> 
</table><br><br><br><br><br><br><br>
<jsp:include page="views/footer.jsp"></jsp:include>	
</body>
</html>