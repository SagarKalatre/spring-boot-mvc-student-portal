
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Student Details</title>

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
                                <th>City</th>
                                <th>Action</th>
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

                                    <td>
                                        <a href="${pageContext.request.contextPath}/show-studentRecord/${s.studentId}"
                                        class="edit-btn">
                                        Edit
                                    </a>
                                </td>
                                <td>
                                    <form action="${pageContext.request.contextPath}/delete-student/${s.studentId}"
                                    method="post"
                                    onsubmit="return confirm('Are you sure you want to delete this student?');">

                                    <button type="submit">Delete</button>

                                </form>
                            </td>
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
