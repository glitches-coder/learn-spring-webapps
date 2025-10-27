<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #4f46e5, #3b82f6);
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-container {
            background: white;
            padding: 2rem 2.5rem;
            border-radius: 12px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.2);
            width: 320px;
            text-align: center;
            animation: fadeIn 0.6s ease;
        }

        h2 {
            color: #1e3a8a;
            margin-bottom: 1.5rem;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px 12px;
            margin: 10px 0;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            outline: none;
            transition: border 0.2s;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #2563eb;
        }

        button {
            background-color: #2563eb;
            color: white;
            padding: 10px 14px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            font-size: 1rem;
            margin-top: 10px;
            transition: background 0.3s;
        }

        button:hover {
            background-color: #1e40af;
        }

        .footer {
            margin-top: 1rem;
            font-size: 0.9rem;
            color: #64748b;
        }

        .footer a {
            color: #2563eb;
            text-decoration: none;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>

<body>
<div class="login-container">
    <h2>Login</h2>
    <form action="login" method="post">
        <input type="text" name="username" placeholder="Enter username" required>
        <input type="password" name="password" placeholder="Enter password" required>
        <button type="submit">Sign In</button>
    </form>
    <div class="footer">
        <p>Don't have an account? <a href="#">Sign up</a></p>
    </div>
</div>
</body>
</html>
