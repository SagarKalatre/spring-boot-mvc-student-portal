<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Search Results</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f7fc;
            padding: 30px;
        }

        .container {
            max-width: 1000px;
            margin: auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
        }

        h2 {
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background: #2563eb;
            color: white;
        }

        .message {
            text-align: center;
            color: red;
            padding: 20px;
        }

        a {
            display: inline-block;
            margin-top: 20px;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Student Search Results</h2>

    <p>
        Search:
        <strong><c:out value="${searchValue}"/></strong>
    </p>

    <c:choose>

        <c:when test="${not empty studList}">

            <table>
                <thead>
                    <tr>
                        <th>ID</th>
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
                            <td><c:out value="${s.name}"/></td>
                            <td><c:out value="${s.email}"/></td>
                            <td><c:out value="${s.phone}"/></td>
                            <td><c:out value="${s.course}"/></td>
                            <td><c:out value="${s.city}"/></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </c:when>

        <c:otherwise>

            <div class="message">
                <c:out value="${message}"/>
            </div>

        </c:otherwise>

    </c:choose>

    <center>
        <a href="${pageContext.request.contextPath}/student-search">
            Search Another Student
        </a>
    </center>

</div>

</body>
</html>