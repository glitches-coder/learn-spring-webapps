<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/css/navbar.css">
        <link rel="stylesheet" href="/css/list-todo.css">
        <link rel="stylesheet" href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css">

        <title>Your Todos</title>

    </head>
    
    <body>
        <%@include file="common/navigation.jspf"%>
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
        <%@include file="common/footer.jspf"%>
        <script src="/webjars/jquery/3.6.0/jquery.min.js"></script>
        <script src="/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    </body>
</html>
