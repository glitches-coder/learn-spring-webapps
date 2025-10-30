<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Todo List</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            width: 50%;
            background: rgba(255,255,255,0.9);
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 8px 30px rgba(0,0,0,0.2);
            font-size: 1.1rem;
            white-space: pre-line; /* Show new lines */
            line-height: 1.6;
        }

        h1 {
            text-align: center;
            color: #ff5722;
            margin-bottom: 20px;
        }

        .item {
            background: #fff3e0;
            padding: 12px;
            margin-bottom: 12px;
            border-radius: 10px;
            border-left: 5px solid #ff9800;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>🗒️ Todo</h1>
    <div class="item">
        ${todos}
    </div>

</div>

</body>
</html>
