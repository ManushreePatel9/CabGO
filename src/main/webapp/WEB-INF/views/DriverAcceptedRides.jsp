<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.entity.BookingsEntity" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Accepted Rides</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f7f6; margin: 0; padding: 40px; }
        .container { max-width: 950px; margin: auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); }
        h2 { color: #1f2937; margin-top: 0; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 12px 15px; text-align: left; border-bottom: 1px solid #e5e7eb; font-size: 14px; }
        th { background-color: #1f2937; color: white; }
        tr:hover { background-color: #f9fafb; }
        .badge { padding: 5px 10px; border-radius: 4px; font-weight: bold; font-size: 12px; }
        .badge-accepted { background-color: #e0e7ff; color: #4f46e5; }
        .badge-reached { background-color: #d1fae5; color: #059669; }
        a.btn-reach { background-color: #10b981; color: white; padding: 6px 12px; border-radius: 4px; text-decoration: none; font-size: 13px; font-weight: bold; }
        a.btn-reach:hover { background-color: #059669; }
        a.back-btn { display: inline-block; margin-top: 20px; background-color: #4f46e5; color: white; padding: 10px 20px; border-radius: 4px; text-decoration: none; font-weight: bold; }
        a.back-btn:hover { background-color: #4338ca; }
    </style>
</head>
<body>
    <div class="container">
        <h2>🛣️ My Accepted Rides</h2>
        <table>
            <tr>
                <th>Booking ID</th>
                <th>Pickup</th>
                <th>Drop</th>
                <th>Fare</th>
                <th>Date & Time</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            <%
                List<BookingsEntity> acceptedRides = (List<BookingsEntity>) request.getAttribute("acceptedRides");
                if (acceptedRides != null) {
                    for (BookingsEntity ride : acceptedRides) {
            %>
            <tr>
                <td>#<%= ride.getBookingId() %></td>
                <td><%= ride.getPickup() %></td>
                <td><%= ride.getDropLocation() %></td>
                <td>₹<%= ride.getFare() %></td>
                <td><%= ride.getDateTime() %></td>
                <td>
                    <% if("ACCEPTED".equals(ride.getStatus())) { %>
                        <span class="badge badge-accepted">ACCEPTED</span>
                    <% } else if("REACHED".equals(ride.getStatus())) { %>
                        <span class="badge badge-reached">REACHED</span>
                    <% } else { %>
                        <span class="badge"><%= ride.getStatus() %></span>
                    <% } %>
                </td>
                <td>
                    <% if("ACCEPTED".equals(ride.getStatus())) { %>
                        <a href="rideReached?bookingId=<%= ride.getBookingId() %>" class="btn-reach">Mark Reached</a>
                    <% } else { %>
                        <span style="color: #059669; font-weight: bold;">Completed</span>
                    <% } %>
                </td>
            </tr>
            <% 
                    }
                } 
            %>
        </table>
        <br>
        <a href="driverDashboard" class="back-btn">&larr; Back to Dashboard</a>
    </div>
</body>
</html>