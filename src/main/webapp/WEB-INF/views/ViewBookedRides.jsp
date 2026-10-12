<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.entity.BookingsEntity" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Booked Rides</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f7f6; margin: 0; padding: 40px; }
        .container { max-width: 900px; margin: auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); }
        h2 { color: #1f2937; margin-top: 0; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 12px 15px; text-align: left; border-bottom: 1px solid #e5e7eb; font-size: 14px; }
        th { background-color: #4f46e5; color: white; }
        tr:hover { background-color: #f9fafb; }
        .badge { padding: 5px 10px; border-radius: 4px; font-weight: bold; font-size: 12px; }
        .badge-pending { background-color: #fef3c7; color: #d97706; }
        .badge-accepted { background-color: #e0e7ff; color: #4f46e5; }
        .badge-reached { background-color: #d1fae5; color: #059669; }
        a.back-btn { display: inline-block; margin-top: 20px; background-color: #4f46e5; color: white; padding: 10px 20px; border-radius: 4px; text-decoration: none; font-weight: bold; }
        a.back-btn:hover { background-color: #4338ca; }
    </style>
</head>
<body>
    <div class="container">
        <h2>📋 My Booked Rides</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Pickup</th>
                <th>Drop</th>
                <th>Fare</th>
                <th>Date & Time</th>
                <th>Status</th>
            </tr>
            <%
                List<BookingsEntity> rides = (List<BookingsEntity>) request.getAttribute("rides");
                if (rides != null) {
                    for (BookingsEntity ride : rides) {
            %>
            <tr>
                <td>#<%= ride.getBookingId() %></td>
                <td><%= ride.getPickup() %></td>
                <td><%= ride.getDropLocation() %></td>
                <td>₹<%= ride.getFare() %></td>
                <td><%= ride.getDateTime() %></td>
                <td>
                    <% if("PENDING".equals(ride.getStatus())) { %>
                        <span class="badge badge-pending">PENDING</span>
                    <% } else if("ACCEPTED".equals(ride.getStatus())) { %>
                        <span class="badge badge-accepted">ACCEPTED</span>
                    <% } else if("REACHED".equals(ride.getStatus())) { %>
                        <span class="badge badge-reached">REACHED</span>
                    <% } else { %>
                        <span class="badge"><%= ride.getStatus() %></span>
                    <% } %>
                </td>
            </tr>
            <% 
                    }
                } 
            %>
        </table>
        <br>
        <a href="passengerDashboard" class="back-btn">&larr; Back to Dashboard</a>
    </div>
</body>
</html>