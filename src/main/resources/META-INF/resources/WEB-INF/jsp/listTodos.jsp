<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Your Todos</title>

    <!-- Bootstrap CDN -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

    <style>
        body {
            background: linear-gradient(135deg, #f8e8ff, #dffcf6);
            font-family: "Poppins", sans-serif;
        }

        h1 {
            color: #5e2b97;
            margin-top: 20px;
            margin-bottom: 20px;
            font-weight: 700;
        }

        .container {
            padding-top: 30px;
        }

        table {
            background: rgba(255, 255, 255, 0.75);
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            border-radius: 12px;
            overflow: hidden;
        }

        th {
            background: #7f3fbf !important;
            color: #fff;
            font-size: 15px;
            letter-spacing: 0.5px;
        }

        th, td {
            padding: 14px !important;
        }

        tr:hover {
            background: rgba(127, 63, 191, 0.06);
        }

        .btn-custom-add {
            background: #2bbd8c;
            color: white;
            border-radius: 25px;
            padding: 10px 18px;
            font-weight: bold;
            border: none;
        }

        .btn-custom-add:hover {
            background: #249c72;
            color: #fff;
        }

        .badge-done {
            background: #2ecc71;
        }

        .badge-pending {
            background: #e73257;
        }
    </style>
</head>

<body>

<div class="container">
    <h1 class="text-center">✨ Your Todo List</h1>

    <table class="table">
        <thead>
        <tr>
            <th>Description</th>
            <th>Target Date</th>
            <th>Status</th>
            <th></th>
            <th></th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${todos}" var="todo">
            <tr>
                <td>${todo.description}</td>
                <td>${todo.targetDate}</td>
                <td>
                    <span class="badge ${todo.done ? 'badge-done' : 'badge-pending'}">
                            ${todo.done ? 'Completed ✅' : 'Pending ⏳'}
                    </span>
                </td>

                <td>
                    <a href="delete-todo?id=${todo.id}" class="btn btn-outline-danger btn-sm">
                        Delete
                    </a>
                </td>
                <td>
                    <a href="update-todo?id=${todo.id}" class="btn btn-outline-primary btn-sm">
                        Update
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class="text-center mt-3">
        <a href="add-todo" class="btn-custom-add">
            ➕ Add New Task
        </a>
    </div>
</div>

</body>
</html>
