<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.entity.BookingsEntity" %>
<!DOCTYPE html>
<html>
<head>
    <title>Driver Dashboard</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f7f6; margin: 0; padding: 40px; }
        .container { max-width: 950px; margin: auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); }
        h2, h3 { color: #1f2937; }
        .top-bar { display: flex; justify-content: space-between; align-items: center; border-bottom: 1px solid #e5e7eb; padding-bottom: 15px; margin-bottom: 20px; }
        form { display: flex; gap: 10px; margin-bottom: 20px; }
        input[type="text"] { padding: 10px; width: 300px; border: 1px solid #ccc; border-radius: 4px; }
        button { background-color: #10b981; color: white; border: none; padding: 10px 20px; border-radius: 4px; cursor: pointer; font-weight: bold; }
        button:hover { background-color: #059669; }
        table { width: 100%; border-collapse: collapse; margin-top: 15px; }
        th, td { padding: 12px 15px; text-align: left; border-bottom: 1px solid #e5e7eb; font-size: 14px; }
        th { background-color: #1f2937; color: white; }
        tr:hover { background-color: #f9fafb; }
        a.action-link { color: #4f46e5; font-weight: bold; text-decoration: none; }
        a.action-link:hover { text-decoration: underline; }
        .nav-links a { color: #4f46e5; text-decoration: none; font-weight: 600; margin-right: 15px; }
        .nav-links a.logout { color: #ef4444; }
    </style>
</head>
<body>
    <div class="container">
        <div class="top-bar">
            <h2>🚗 Driver Portal</h2>
            <div class="nav-links">
                <a href="driverAcceptedRides">My Accepted Rides</a>
                <a href="logout" class="logout">Logout</a>
            </div>
        </div>
        
        <form action="findCity" method="post">
            <% String searchedCity = (String) request.getAttribute("searchedCity"); %>
            <input type="text" name="cityName" value="<%= searchedCity != null ? searchedCity : "" %>" required placeholder="Enter Current City (e.g. Ahmedabad)">
            <button type="submit">Search Pending Rides</button>
        </form>

        <hr style="border: 0; border-top: 1px solid #e5e7eb; margin: 20px 0;">

        <h3>Available Rides from "<%= searchedCity != null ? searchedCity : "" %>"</h3>
        <table>
            <tr>
                <th>Booking ID</th>
                <th>Pickup City</th>
                <th>Drop City</th>
                <th>Fare</th>
                <th>Date & Time</th>
                <th>Action</th>
            </tr>
            <%
                List<BookingsEntity> pendingRides = (List<BookingsEntity>) request.getAttribute("pendingRides");
                if (pendingRides != null) {
                    for (BookingsEntity ride : pendingRides) {
            %>
            <tr>
                <td>#<%= ride.getBookingId() %></td>
                <td><%= ride.getPickup() %></td>
                <td><%= ride.getDropLocation() %></td>
                <td>₹<%= ride.getFare() %></td>
                <td><%= ride.getDateTime() %></td>
                <td>
                    <a href="acceptRide?bookingId=<%= ride.getBookingId() %>" class="action-link">Accept Ride</a>
                </td>
            </tr>
            <% 
                    }
                } 
            %>
        </table>
    </div>
</body>
</html>