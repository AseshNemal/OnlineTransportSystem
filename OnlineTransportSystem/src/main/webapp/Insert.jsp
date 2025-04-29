<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Inquiry</title>
    <style>
   body {
    background-color: #2e2e2e; /* Darker background for better contrast */
    color: #f2e79e; /* Light yellow text */
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Modern font */
    padding: 20px;
    margin: 0; /* Remove default margin */
}

h2 {
    text-align: center;
    color: #f2e79e; /* Light yellow */
    margin-bottom: 20px; /* Spacing below heading */
}

table {
    margin: 0 auto;
    border-collapse: collapse;
    width: 80%; /* Increased width for better layout */
    background-color: #4a4a4a; /* Slightly lighter dark background */
    border-radius: 5px;
    overflow: hidden;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Subtle shadow for depth */
}

th, td {
    padding: 12px; /* Consistent padding for cells */
    border: 1px solid #f2e79e; /* Light yellow borders */
    text-align: left; /* Align text to the left */
}

th {
    background-color: #3f3f3f; /* Darker gray for header */
    color: #f2e79e; /* Light yellow for header text */
    font-weight: bold;
    text-transform: uppercase; /* Uppercase for header */
}

tr:nth-child(even) {
    background-color: #3a3a3a; /* Darker background for even rows */
}

tr:hover {
    background-color: #5a5a5a; /* Lighter gray on hover */
}

input[type="text"] {
    width: 100%;
    padding: 10px; /* Increased padding for comfort */
    border: 1px solid #f2e79e; /* Light yellow border */
    border-radius: 4px;
    background-color: #5a5a5a; /* Darker input field */
    color: #f2e79e; /* Light yellow text */
    box-sizing: border-box; /* Ensure padding is included in width */
}

input[type="text"]:disabled {
    background-color: #2e2e2e; /* Match body background */
    color: #888; /* Grey text for disabled */
}

input[type="submit"] {
    background-color: #f2e79e; /* Light yellow button */
    color: #2e2e2e; /* Dark text */
    border: none;
    border-radius: 5px;
    padding: 10px 15px;
    cursor: pointer;
    font-weight: bold; /* Bold text */
    transition: background-color 0.3s, transform 0.2s; /* Smooth transitions */
}

input[type="submit"]:hover {
    background-color: #d6c85a; /* Darker yellow on hover */
    transform: scale(1.05); /* Slightly enlarge on hover */
}

form {
    display: inline; /* Inline form for delete button */
}
   
    </style>
</head>
<body>
<%String pid= request.getParameter("pid");%>
<h2>Inquire</h2>
    <form action="InsertServlet" method="post">
    
         <table>
         <tr>
                <td>PassengerId:</td>
                <td><input type = "text" name="pid" value="<%=pid%>" readonly required></td>
             </tr>
             
             <tr>
                <td>CustomerName:</td>
                <td><input type = "text" name="CustomerName" required ></td>
             </tr>
             
             <tr>
                <td>Inquiry:</td>
                <td><input type = "text" name="inquiry" required></td>
             </tr>
             
             <tr>
                <td>Reply:</td>
                <td><input type = "text" name="Reply" required disabled></td>
             </tr>
             <tr>
                <td colspan="2"><input type="submit" value="Submit"></td>
             </tr>
         </table>
    
    </form>

</body>
</html>
