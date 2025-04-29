<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Ceylon Go</title>
    <link rel="stylesheet" type="text/css" href="css/adminUI.css">
    <style type="text/css">
    .tbutton {
    padding: 12px 20px;
    background-color: #00d2ff;
    border: none;
    border-radius: 5px;
    color: white;
    cursor: pointer;
    transition: background-color 0.3s;
}</style>
</head>
<body>
<jsp:include page="views/header.jsp"></jsp:include>

<%String count = request.getParameter("count");%>

	<div class="admin-container">
        <div class="admin-content">
            <aside class="admin-sidebar">
               <div class="admin-profile">
                    <h2>Admin Profile</h2>
                    <p><strong>Name:</strong> Admin user </p>
                    <p><strong>Email:</strong> headadmin@gmail.com</p>
                    <p><strong>Role:</strong>Super Admin</p>
               </div>
                <nav>
                <ul>
                    <li><a href="#">Dashboard</a></li>
                    <li><a href="#">Users</a></li>
                    <li><a href="#">Notices</a></li>
                    <li><a href="#">Statistics</a></li>
                    <li><a href="#">Logout</a></li>
                </ul>
            </nav>
        </aside>
        

        <main>
            <section class="search-section">
                <h2>Search User Accounts</h2>
                <input type="text" placeholder="Enter username or email" />
                <button type="button">Search</button>
            </section>
            
             <h2>Passenger Trips</h2>
             <form action="adminView" method="get">
             <input class="tbutton" type = "submit" name="Approve" value="View Full Table">
             </form><br><br>
            
            
            
            

            <section class="notices-section">
                <h2>Approve Notices</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Notice</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>New Feature Launch</td>
                            <td>Pending</td>
                            <td><button class="approve-btn">Approve</button></td>
                        </tr>
                        <tr>
                            <td>Maintenance Schedule</td>
                            <td>Approved</td>
                            <td><button class="approve-btn">Revoke</button></td>
                        </tr>
                        <tr>
                            <td>Latest Trip Packages</td>
                            <td>Pending</td>
                            <td><button class="approve-btn">Approve</button></td>
                        </tr>
                        <tr>
                            <td>Premium Offers</td>
                            <td>Approved</td>
                            <td><button class="approve-btn">Revoke</button></td>
                        </tr>
                        
                        
                    </tbody>
                </table>
            </section>

            <section class="stats-section">
                <h2>Account Statistics</h2>
                <p>Total Accounts Created: 
                <c:forEach var="count" items="${count}">
                <span id="total-accounts">${count}</span></p>
                </c:forEach>
                <button type="button">Refresh Statistics</button>
                
                
            </section>

            <section class="driver-account-section">
                <h2>Registered Driver Account</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Full Name</th>
                            <th>UserName</th>
                            <th>Email</th>
                            <th>Phone Number</th>
                            <th>Vehice Type</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Asesh Nemal</td>
                            <td>nemal20</td>
                            <td>aseshnemal@gmail.com</td>
                            <td>076 365 9987</td>
                            <td>Car</td>
                        </tr>

                        <tr>
                            <td>Roshith Rajapaksha</td>
                            <td>rmtrajapaksha</td>
                            <td>rajapaksha@gmail.com</td>
                            <td>077 750 2387</td>
                            <td>van</td>
                        </tr>

                        <tr>
                            <td>Kavindu Geeshan</td>
                            <td>kavindu400</td>
                            <td>kgeeshan@gmail.com</td>
                            <td>078 500 1321</td>
                            <td>Three Wheel</td>
                        </tr>    
                    </tbody>
                </table>
            </section>

            <section class="passenger-account-section">
                <h2>Registered Passenger Accounts</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Full Name</th>
                            <th>UserName</th>
                            <th>Email</th>
                            <th>Phone Number</th>
                            <th>District</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Surath Gayanatha</td>
                            <td>gayantha17</td>
                            <td>gayanatha2002@gmail.com</td>
                            <td>075 333 5665</td>
                            <td>Gampaha</td>
                        </tr>
                        <tr>
                            <td>Adriel Damian</td>
                            <td>adamian</td>
                            <td>adperera@gmail.com</td>
                            <td>072 830 7987</td>
                            <td>Kaluthara</td>
                        </tr>

                        <tr>
                            <td>Yasindu Rasanga</td>
                            <td>karawita07</td>
                            <td>YRK@gmail.com</td>
                            <td>071 462 3325</td>
                            <td>Kandy</td>
                        </tr>

                    </tbody>
                </table>
            </section>
        </main>
      </div>
    </div>
<jsp:include page="views/footer.jsp"></jsp:include>	
</body>
</html>