<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Ride</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f7f6; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .card { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); width: 400px; }
        h2 { color: #333; text-align: center; margin-bottom: 20px; }
        label { font-weight: 600; color: #555; font-size: 14px; }
        input { width: 100%; padding: 10px; margin-top: 5px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        button { width: 100%; background-color: #4f46e5; color: white; border: none; padding: 12px; border-radius: 4px; font-size: 16px; cursor: pointer; font-weight: bold; }
        button:hover { background-color: #4338ca; }
        .back { text-align: center; margin-top: 15px; font-size: 14px; }
        .back a { color: #6b7280; text-decoration: none; }
    </style>
</head>
<body>
    <div class="card">
        <h2>🚖 Book Intercity Ride</h2>
        <form action="bookRide" method="post">
            <label>Pickup City (e.g., Ahmedabad)</label>
            <input type="text" name="pickup" required placeholder="Enter pickup city">
            
            <label>Drop City (e.g., Mumbai)</label>
            <input type="text" name="dropLocation" required placeholder="Enter destination city">
            
            <label>Date & Time</label>
            <input type="text" name="dateTime" required placeholder="YYYY-MM-DD HH:MM">
            
            <button type="submit">Confirm & Book</button>
        </form>
        <div class="back">
            <a href="passengerDashboard">&larr; Back to Dashboard</a>
        </div>
    </div>
</body>
</html>