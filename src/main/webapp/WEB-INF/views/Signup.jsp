<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>CabConnect - Signup</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f7f6; display: flex; justify-content: center; align-items: center; min-height: 100vh; margin: 0; }
        .card { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); width: 380px; margin: 20px 0; }
        h2 { color: #333; text-align: center; margin-bottom: 20px; }
        label { font-weight: 600; color: #555; font-size: 14px; }
        input, select { width: 100%; padding: 10px; margin-top: 5px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        button { width: 100%; background-color: #10b981; color: white; border: none; padding: 12px; border-radius: 4px; font-size: 16px; cursor: pointer; font-weight: bold; }
        button:hover { background-color: #059669; }
        .link { text-align: center; margin-top: 15px; font-size: 14px; }
        .link a { color: #4f46e5; text-decoration: none; }
    </style>
</head>
<body>
    <div class="card">
        <h2>📝 Register Account</h2>
        <form action="signup" method="post">
            <label>Full Name</label>
            <input type="text" name="fullName" required placeholder="John Doe">
            
            <label>Email Address</label>
            <input type="email" name="email" required placeholder="john@example.com">
            
            <label>Password</label>
            <input type="password" name="password" required placeholder="********">
            
            <label>Contact Number</label>
            <input type="text" name="contact" required placeholder="9876543210">
            
            <label>Select Role</label>
            <select name="role">
                <option value="PASSENGER">Passenger</option>
                <option value="DRIVER">Driver</option>
            </select>
            
            <button type="submit">Sign Up</button>
        </form>
        <div class="link">
            <a href="/">Already have an account? Login</a>
        </div>
    </div>
</body>
</html>