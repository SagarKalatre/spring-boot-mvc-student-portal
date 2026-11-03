<%-- <%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.Student" %>

<%
    List<Student> studList =
    (List<Student>) request.getAttribute("studList");
    
    String message = (String) request.getAttribute("message");
%>

<% if (studList != null && !studList.isEmpty()) { %>

<table border="1">
    <tr>
        <th>Student ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Course</th>
    </tr>

    <% for (Student s : studList) { %>
    <tr>
        <td><%= s.getStudentId() %></td>
        <td><%= s.getName() %></td>
        <td><%= s.getEmail() %></td>
        <td><%= s.getPhone() %></td>
        <td><%= s.getCourse() %></td>
    </tr>
    <% } %>
</table>

<% } else { %>
<h3><%= message != null ? message : "No student found!" %></h3>
<% } %> --%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
<%-- <link rel="stylesheet" href="showStudentByIStudentId.css"> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/showStudentByIStudentId.css">
</head>

<body>

<div class="container">

    <h2>Student Details</h2>
    <p class="subtitle">Student Information Management System</p>

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
                        <th>Password</th>
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
                            <td>${s.password}</td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>

        </c:when>

        <c:otherwise>

            <div class="message">
                <c:out value="${message}" default="No student found!" />
            </div>

        </c:otherwise>

    </c:choose>

    <a href="${pageContext.request.contextPath}/student-searchbyidpage"
       class="back-btn">
        Search Another Student
    </a>

</div>

</body>
</html>
