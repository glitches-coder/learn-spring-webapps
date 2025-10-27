<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hello World JSP</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #89f7fe, #66a6ff);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }
        .container {
            background: white;
            border-radius: 15px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
            padding: 40px 60px;
            text-align: center;
        }
        h1 {
            color: #0078d7;
            font-size: 2.5rem;
            margin-bottom: 10px;
        }
        p {
            color: #555;
            font-size: 1.2rem;
        }
        .highlight {
            color: #ff6a00;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Hello, <span class="highlight">World!</span> 🌍</h1>
    <p>Welcome to your first <strong>JSP</strong> page running on a Java web server.</p>
</div>
</body>
</html>
