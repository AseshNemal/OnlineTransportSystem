<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
    background-color: #2c2c2c; /* Dark background */
    color: #f0e68c; /* Light yellow text */
    font-family: Arial, sans-serif;
}

table {
    width: 100%;
    border-collapse: collapse;
}

td {
    padding: 10px;
    border: 1px solid #444; /* Darker border */
}

input[type="text"] {
    width: 100%;
    padding: 8px;
    border: 1px solid #555; /* Darker border for inputs */
    border-radius: 4px;
    background-color: #3c3c3c; /* Slightly lighter background for inputs */
    color: #f0e68c; /* Light yellow text */
}

input[type="text"]:focus {
    border-color: #f0e68c; /* Highlight border on focus */
    outline: none; /* Remove default outline */
}

input[type="submit"] {
    background-color: #f0e68c; /* Yellow background for button */
    color: #2c2c2c; /* Dark text */
    border: none;
    padding: 10px 15px;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #d6d600; /* Darker yellow on hover */
}

</style>
</head>
<body>
<jsp:include page="views/header.jsp"></jsp:include><br><br><br><br>
	<%
		String inquiryID = request.getParameter("inquiryId");
		String pid = request.getParameter("pid");
		String inquiry = request.getParameter("inquiry");
		String customerName = request.getParameter("CustomerName");
		String reply = request.getParameter("reply");
		String date = request.getParameter("date");
	%>
	
	<form action = "UpdateCSRServlets" method = "post">
		<table>
             <tr>
                <td>InquiryId:</td>
                <td><input type = "text" id="inquiryId" name="inquiryId" value="<%=inquiryID%>" readonly></td>
             </tr>
             <tr>
                <td>PassengerId:</td>
                <td><input type = "text" id="pid" name="pid" value="<%=pid%>" required readonly></td>
             </tr>
             
             <tr>
                <td>CustomerName:</td>
                <td><input type = "text" id="CustomerName" name="CustomerName" value="<%=customerName%>" required readonly></td>
             </tr>
             <tr>
             <tr>
                <td>Inquiry:</td>
                <td><input type = "text" id="inquiy" name="inquiry" value="<%=inquiry%>" required readonly></td>
             </tr>
             <tr>
                <td>Reply:</td>
                <td><input type = "text" id="Reply" name="Reply" value="<%=reply%>" required></td>
             </tr>
             <tr>
                <td>Date:</td>
                <td><input type = "text"  id="Date" name="Date" value="<%=date%>" required readonly></td>
             </tr>
             <tr>
                <td colspan="2"><input type="submit" value="Submit Reply"></td>
             </tr>
         </table>
    
	</form><br><br><br><br><br><br><br>
	<jsp:include page="views/footer.jsp"></jsp:include>	
</body>
</html>