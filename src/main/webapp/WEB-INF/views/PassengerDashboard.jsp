<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Passenger Dashboard</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f7f6; margin: 0; padding: 40px; }
        .container { max-width: 600px; margin: auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); text-align: center; }
        h2 { color: #1f2937; }
        .btn-group { margin-top: 30px; display: flex; justify-content: center; gap: 15px; }
        a.btn { background-color: #4f46e5; color: white; padding: 12px 24px; border-radius: 4px; text-decoration: none; font-weight: bold; }
        a.btn:hover { background-color: #4338ca; }
        a.btn-logout { background-color: #ef4444; }
        a.btn-logout:hover { background-color: #dc2626; }
    </style>
</head>
<body>
    <div class="container">
        <h2>👋 Welcome Passenger Dashboard</h2>
        <p style="color: #6b7280;">Manage your intercity rides smoothly and quickly.</p>
        <div class="btn-group">
            <a href="bookRide" class="btn">Book a New Ride</a>
            <a href="viewMyRides" class="btn" style="background-color: #0284c7;">View My Rides</a>
            <a href="logout" class="btn btn-logout">Logout</a>
        </div>
    </div>
</body>
</html>