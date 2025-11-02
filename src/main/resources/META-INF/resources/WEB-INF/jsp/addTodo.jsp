<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css">
    <title>Add New Todo</title>


    <style>
        body {
            background: linear-gradient(135deg, #f8e8ff, #dffcf6);
            font-family: "Poppins", sans-serif;
        }

        .form-container {
            max-width: 500px;
            margin: 70px auto;
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(10px);
            padding: 25px 35px;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #5e2b97;
            font-weight: 700;
            margin-bottom: 25px;
        }

        .btn-save {
            background: #2bbd8c;
            color: #fff;
            border: none;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 30px;
            font-weight: 600;
        }

        .btn-save:hover {
            background: #229f73;
        }

        .btn-back {
            display: block;
            margin-top: 12px;
            text-align: center;
            color: #5e2b97;
            font-weight: 500;
            text-decoration: none;
        }
        .btn-back:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

<div class="form-container">
    <h2>Add New Todo</h2>

    <form:form action="add-todo" method="post" modelAttribute="todo">
        <div class="mb-3">
            <label>Description</label>
            <form:input type="text" name="description" class="form-control" required="required" path="description"/>
            <form:errors path="description" cssClass="text-warning"/>
        </div>
        <form:input type="hidden" required="required" path="done"/>
        <form:input type="hidden" required="required" path="id"/>
        <div class="mb-3">
            <label>Target Date</label>
            <form:input type="date" name="targetDate" class="form-control" required="required" path="targetDate"/>
        </div>

        <button type="submit" class="btn-save">Save Task ✅</button>
    </form:form>

    <a href="todos" class="btn-back">⬅ Back to Todo List</a>
</div>
<script src="/webjars/jquery/3.6.0/jquery.min.js"></script>
<script src="/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</body>
</html>
