<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>CabConnect - Login</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f7f6; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .card { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); width: 350px; }
        h2 { color: #333; text-align: center; margin-bottom: 20px; }
        label { font-weight: 600; color: #555; font-size: 14px; }
        input { width: 100%; padding: 10px; margin-top: 5px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        button { width: 100%; background-color: #4f46e5; color: white; border: none; padding: 12px; border-radius: 4px; font-size: 16px; cursor: pointer; font-weight: bold; }
        button:hover { background-color: #4338ca; }
        .link { text-align: center; margin-top: 15px; font-size: 14px; }
        .link a { color: #4f46e5; text-decoration: none; }
        .link a:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <div class="card">
        <h2>🚖 CabConnect Login</h2>
        <form action="login" method="post">
            <label>Email Address</label>
            <input type="email" name="email" required placeholder="Enter email">
            
            <label>Password</label>
            <input type="password" name="password" required placeholder="Enter password">
            
            <button type="submit">Login</button>
        </form>
        <div class="link">
            <a href="signup">Don't have an account? Signup</a>
        </div>
    </div>
</body>
</html>