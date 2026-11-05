
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Updated Student Record</title>
</head>
<body>

    <h2>Updated Student Data Successfully!</h2>

    <table border="1" cellpadding="10">
        <tr>
            <th>Student ID</th>
            <td>${student.studentId}</td>
        </tr>
        <tr>
            <th>Name</th>
            <td>${student.name}</td>
        </tr>
        <tr>
            <th>Email</th>
            <td>${student.email}</td>
        </tr>
        <tr>
            <th>Phone</th>
            <td>${student.phone}</td>
        </tr>
        <tr>
            <th>Course</th>
            <td>${student.course}</td>
        </tr>
        <tr>
            <th>City</th>
            <td>${student.city}</td>
        </tr>
    </table>

    <br>

    <a href="${pageContext.request.contextPath}/student-searchbyidpage">
        Back to Student Search
    </a>

</body>
</html>
