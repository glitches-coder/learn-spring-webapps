<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/css/navbar.css">
        <link rel="stylesheet" href="/css/add-todo.css">
        <link rel="stylesheet" href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css">
        <title>Add New Todo</title>

    </head>

    <body>
        <%@include file="common/navigation.jspf"%>
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
        <%@include file="common/footer.jspf"%>
        <script src="/webjars/jquery/3.6.0/jquery.min.js"></script>
        <script src="/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    </body>
</html>
