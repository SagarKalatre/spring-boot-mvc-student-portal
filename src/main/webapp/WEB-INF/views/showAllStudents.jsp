
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Students</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            padding: 30px;
        }

        .container {
            max-width: 1100px;
            margin: auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 25px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background: #343a40;
            color: white;
        }

        tr:nth-child(even) {
            background: #f2f2f2;
        }

        .message {
            text-align: center;
            color: red;
            margin-top: 20px;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>All Student Records</h2>

    <c:choose>

        <c:when test="${not empty studList}">

            <table>
                <thead>
                    <tr>
                        <th>Student ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Course</th>
                        <th>City</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="s" items="${studList}">
                        <tr>
                            <td>${s.studentId}</td>
                            <td>${s.name}</td>
                            <td>${s.email}</td>
                            <td>${s.phone}</td>
                            <td>${s.course}</td>
                            <td>${s.city}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </c:when>

        <c:otherwise>
            <div class="message">
                No Student Records Found!
            </div>
        </c:otherwise>

    </c:choose>

</div>

</body>
</html>
