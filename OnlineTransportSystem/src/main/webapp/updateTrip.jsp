<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Trip</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 300px;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        font-size: 24px;
        color: #333;
    }

    form {
        display: flex;
        flex-direction: column;
    }

    label {
        margin-bottom: 10px;
        font-weight: bold;
        color: #555;
    }

    input, select, textarea {
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
        width: 90%; 
    }

    input:read-only {
        background-color: #e9e9e9;
        cursor: not-allowed;
    }

    textarea {
        resize: vertical;
    }

    .btn-submit {
        background-color: #007bff;
        color: white;
        padding: 10px;
        border: none;
        border-radius: 4px;
        font-size: 14px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .btn-submit:hover {
        background-color: #0056b3;
        cursor: pointer;
    }

    .form-group {
        margin-bottom: 20px;
    }

    select[disabled] {
        background-color: #f4f4f4;
        color: #999;
        cursor: not-allowed;
    }

    @media (max-width: 768px) {
        .container {
            margin: 20px;
            padding: 15px;
        }

        input, select, textarea {
            font-size: 13px;
            width: 100%;
        }
    }
</style>
</head>
<body>
<jsp:include page="views/header.jsp"></jsp:include>
    <div class="container">
        <h1>Update Trip Details</h1>

        <%
            String tripID = request.getParameter("tripID");
            String pid = request.getParameter("pid");
            String bookingDate = request.getParameter("bookingDate");
            String vehicleType = request.getParameter("vehicleType");
            String pickupLoc = request.getParameter("pickupLoc");
            String dropoffLoc = request.getParameter("dropoffLoc");
            String startDate = request.getParameter("startDate");
            String endDate = request.getParameter("endDate");
            String notes = request.getParameter("notes");
            String price = request.getParameter("price");
            String status = request.getParameter("status");

            // Format the date-time values for the datetime-local input
            if (startDate != null && startDate.length() > 0) {
                startDate = startDate.replace(" ", "T");
            }
            if (endDate != null && endDate.length() > 0) {
                endDate = endDate.replace(" ", "T");
            }
        %>

        <form action="tUpdate" method="POST">
            <div class="form-group">
                <label for="pid">Passenger ID</label>
                <input type="text" id="pid" name="pid" value="<%= pid %>" required readonly>
            </div>

            <div class="form-group">
                <label for="tripID">Trip ID</label>
                <input type="text" id="tripID" name="tripID" value="<%= tripID %>" required readonly>
            </div>

            <div class="form-group">
                <label for="vehicleType">Vehicle Type</label>
                <select id="vehicleType" name="vehicleType" required>
                    <option value="Car" <%= "Car".equals(vehicleType) ? "selected" : "" %>>Car</option>
                    <option value="Van" <%= "Van".equals(vehicleType) ? "selected" : "" %>>Van</option>
                    <option value="Bus" <%= "Bus".equals(vehicleType) ? "selected" : "" %>>Bus</option>
                    <option value="SUV" <%= "SUV".equals(vehicleType) ? "selected" : "" %>>SUV</option>
                </select>
            </div>

            <div class="form-group">
                <label for="pickupLoc">PickUp Location</label>
                <input type="text" id="pickupLoc" name="pickupLoc" value="<%= pickupLoc %>" required>
            </div>

            <div class="form-group">
                <label for="dropoffLoc">Drop-off Location</label>
                <input type="text" id="dropoffLoc" name="dropoffLoc" value="<%= dropoffLoc %>" required>
            </div>

            <div class="form-group">
                <label for="startDate">Start Date</label>
                <input type="datetime-local" id="startDate" name="startDate" value="<%= startDate %>" required>
            </div>

            <div class="form-group">
                <label for="endDate">End Date</label>
                <input type="datetime-local" id="endDate" name="endDate" value="<%= endDate %>" required>
            </div>

            <div class="form-group">
                <label for="notes">Additional Notes</label>
                <textarea id="notes" name="notes" rows="5"><%= notes != null ? notes : "" %></textarea>
            </div>

            <div class="form-group">
                <label for="status">Booking Status</label>
                <select id="status" name="status" required>
                    <option value="Pending" <%= "Pending".equals(status) ? "selected" : "disabled" %>>Pending</option>
                    <option value="Confirmed" <%= "Confirmed".equals(status) ? "selected" : "disabled" %>>Confirmed</option>
                    <option value="Rejected" <%= "Rejected".equals(status) ? "selected" : "disabled" %>>Rejected</option>
                </select>
            </div>

            <input type="submit" class="btn-submit" name="submit" value="Update the data">
        </form>
    </div>
<jsp:include page="views/footer.jsp"></jsp:include>		
</body>
</html>
