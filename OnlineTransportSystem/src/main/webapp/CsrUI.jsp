<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Support Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
@charset "UTF-8";

body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #2c2c2c; /* Dark background */
    color: #e0e0e0; /* Light text color */
}

.container {
    display: flex;
    flex-direction: column;
    height: 100vh;
}

header {
    background: #3a3a3a; /* Darker header */
    color: #f2e79e; /* Light yellow */
    padding: 1rem;
    text-align: center;
}

.main-content {
    display: flex;
    flex: 1;
}

.sidebar {
    background: #3b3b3b; /* Dark sidebar */
    color: #f2e79e; /* Light yellow */
    min-width: 200px;
    padding: 15px;
}

.sidebar ul {
    list-style-type: none;
    padding: 0;
}

.sidebar ul li {
    margin: 10px 0;
}

.sidebar ul li a {
    color: #f2e79e; /* Light yellow */
    text-decoration: none;
    padding: 5px;
    display: block;
}

.sidebar ul li a:hover {
    background: #555555; /* Slightly lighter on hover */
    border-radius: 4px;
}

main {
    flex: 1;
    padding: 20px;
    overflow-y: auto;
    background: #2a2a2a; /* Main area background */
}

h2 {
    border-bottom: 2px solid #f2e79e; /* Yellow border for section headers */
    padding-bottom: 10px;
    color: #f2e79e; /* Light yellow for headers */
}

table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    background: #4a4a4a; /* Darker table background */
    border-radius: 5px;
    overflow: hidden;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
}

table, th, td {
    border: 1px solid #444444; /* Darker border color */
}

th, td {
    padding: 10px;
    text-align: left;
}

th {
    background: #f2c94c; /* Yellow background for header */
    color: #2c2c2c; /* Dark text for header */
}

.status {
    font-weight: bold;
}

.status.open {
    color: #66bb6a; /* Green color for open status */
}

.view-btn {
    background: #f2c94c; /* Yellow button */
    color: #2c2c2c; /* Dark text */
    border: none;
    padding: 5px 10px;
    border-radius: 5px;
    cursor: pointer;
}

.view-btn:hover {
    background: #d1a03c; /* Darker yellow on hover */
}

.chat-box {
    border: 1px solid #444444; /* Darker border for chat box */
    padding: 10px;
    background: #4a4a4a; /* Dark background for chat box */
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
}

.messages {
    height: 200px;
    overflow-y: auto;
    border: 1px solid #444444; /* Darker border for messages */
    margin-bottom: 10px;
    padding: 5px;
    border-radius: 5px;
}

input[type="text"] {
    width: calc(100% - 100px);
    padding: 10px;
    border: 1px solid #444444; /* Darker border for input */
    border-radius: 5px;
    background: #4a4a4a; /* Dark background for input */
    color: #f2e79e; /* Light yellow text for input */
}

button {
    padding: 10px;
    border: none;
    background: #f2c94c; /* Yellow button */
    color: #2c2c2c; /* Dark text */
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background: #d1a03c; /* Darker yellow on hover */
}

    </style>
</head>
<body>
<jsp:include page="views/header.jsp"></jsp:include>
    <div class="container">
        <header>
            <h1>Customer Support Dashboard</h1>
        </header>
        

        <div class="main-content">
            <aside class="sidebar">
                <ul>
                    <li><a href="#tickets">Tickets</a></li>
                    <li><a href="#live-chat">Live Chat</a></li>
                    <li><a href="#lost-reports">Lost Reports</a></li>
                    <li><a href="#settings">Settings</a></li>
                </ul>
            </aside>

            <main>
                <section id="tickets">
                    <h2>User Inquiries</h2>
                    <table>
                        <thead>
                            <tr>
                                 <th>InquiryId</th>
                                 <th>PassengerId</th>
                                 <th>Inquiry</th>
                                 <th>Customer Name</th>
                                 <th>Reply</th>
                                 <th>Date</th>
                                 <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                               <c:forEach var="Inquiries" items="${allInquiries}">
                               <tr>
                               <td>${Inquiries.inquiryId}</td>
                               <td>${Inquiries.pid}</td>
                               <td>${Inquiries.inquiry}</td>
                               <td>${Inquiries.customerName}</td> 
                               <td>${Inquiries.reply}</td>
                               <td>${Inquiries.date}</td>
    							<td>
    								<a href="updateCSR.jsp?inquiryId=${Inquiries.inquiryId}&pid=${Inquiries.pid}&inquiry=${Inquiries.inquiry}&CustomerName=${Inquiries.customerName}&reply=${Inquiries.reply}&date=${Inquiries.date}">
           								<button>update</button>
          							 </a>
    							</td>
                               </tr>
                               </c:forEach>                           
                            <!-- More inquiries can be added here -->
                        </tbody>
                    </table>
                </section>

                <section id="lost-reports">
                    <h2>Lost Item Reports</h2>
                    <table>
                        <thead>
                            <tr>
                                <th>User</th>
                                <th>Item Name</th>
                                <th>Lost Date</th>
                                <th>Message</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Jane Smith</td>
                                <td>Mobile Phone</td>
                                <td>2024-10-09</td>
                                <td>I lost my mobile phone today. I assume that I left it in one of your rides. Please can you check for it? I traveled in Aqua, and the driver's name was Dileep.</td>
                            </tr>
                            <tr>
                                <td>Asesh Nemal</td>
                                <td>Wallet</td>
                                <td>2024-10-10</td>
                                <td>I have dropped my wallet somewhere today,please can you check whether that i have dropped it in your ride that I took today morning around 9am</td>
                            </tr>
                            <tr>
                                <td>Yasindu Rasa</td>
                                <td>School bag</td>
                                <td>2024-10-10</td>
                                <td>I have left my school bag in your ride that i took today evening,please can you kindly check for it</td>
                            </tr>
                        </tbody>
                    </table>
                </section>

                <section id="live-chat">
                    <h2>Live Chat</h2>
                    <div class="chat-box">
                        <div class="messages"></div>
                        <input type="text" placeholder="Type a message..." />
                        <button><i class="fas fa-paper-plane"></i> Send</button>
                    </div>
                </section>
            </main>
        </div>
    </div><br><br><br><br><br><br><br><br>
    	
</body>
</html>
