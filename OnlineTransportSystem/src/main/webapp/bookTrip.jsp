<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trip Booking Form</title>

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
        background-color: #63b3d6;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .btn-submit:hover {
        background-color: #63b3d6;
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
    
    input::placeholder, 
    textarea::placeholder {
        color: #888; 
        font-style: italic; 
    }
    

    @media (max-width: 768px) {
        .container {
            margin: 20px;
            padding: 15px;
        }

        input, select, textarea {
            font-size: 14px;
        }
    }
</style>

</head>
<body>
<jsp:include page="views/header.jsp"></jsp:include>
	<div class="container">
        <h1>Trip Booking Form</h1>

        <%
            String id = request.getParameter("pid");
        %>

        <form action="insertTrip" method="POST">
            <div class="form-group">
                <label for="pid">Passenger ID</label>
                <input type="text" id="pid" name="pid" value="<%= id %>" required readonly>
            </div>

            <div class="form-group">
                <label for="vehicleType">Vehicle Type</label>
                <select id="vehicleType" name="vehicleType" required>
                    <option value="Car">Car</option>
                    <option value="Van">Van</option>
                    <option value="Bus">Bus</option>
                    <option value="SUV">SUV</option>
                </select>
            </div>

            <div class="form-group">
                <label for="pickupLoc">PickUp Location</label>
                <input type="text" id="pickupLoc" name="pickupLoc" placeholder = "Enter the PickUp Location" required>
            </div>

            <div class="form-group">
                <label for="dropoffLoc">Drop-off Location</label>
                <input type="text" id="dropoffLoc" name="dropoffLoc" placeholder = "Enter the Dropoff Location" required>
            </div>

            <div class="form-group">
                <label for="startDate">Start Date</label>
                <input type="datetime-local" id="startDate" name="startDate" required>
            </div>

            <div class="form-group">
                <label for="endDate">End Date</label>
                <input type="datetime-local" id="endDate" name="endDate" required>
            </div>

            <div class="form-group">
                <label for="notes">Additional Notes</label>
                <textarea id="notes" name="notes" rows="5" cols="100" placeholder = "Any additional things we need to know?"></textarea>
            </div>

            <div class="form-group">
                <label for="status">Booking Status</label>
                <select id="status" name="status" required>
                    <option value="Pending">Pending</option>
                    <option value="Confirmed" disabled>Confirmed</option>
                    <option value="Rejected" disabled>Rejected</option>
                </select>
            </div>

            <input type="submit" class="btn-submit" name="submit" value="Insert the data">
        </form>
    </div>
<jsp:include page="views/footer.jsp"></jsp:include>		
</body>
</html>