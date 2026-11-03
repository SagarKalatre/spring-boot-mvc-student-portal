<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Login</title>

        <link rel="stylesheet"
        href="${pageContext.request.contextPath}/login.css">
    </head>

    <body>

        <div class="login-box">

            <h1>Welcome Back!</h1>
            <p class="subtitle">Student Login Portal</p>

            <form action="${pageContext.request.contextPath}/goto-dashboard" method="post">
                <%-- <form name="" id="" method="" action="" class=""> --%>

                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter your username" required>

                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
                <br><br>

                <a href="${pageContext.request.contextPath}/forgotPassword"
                class="forgot-password">Forgot Password?</a>
                <c:if test="${not empty message}">
                    <p style="color: red;">${message}</p>
                </c:if>

                <button type="submit">Login</button>

            </form>

            <p class="register-link">
                New student?
                <a href="${pageContext.request.contextPath}/studentRegistration">
                    Create Account
                </a>
            </p>

        </div>

        <%-- <div id="div_1">
        
        <p>
        Your Name is: ${name}
        <br>
        Your Age is: ${age}
        </p>
        
        <br>
        
        <p>
        <c:forEach var="student_name" items="${studentName}">
        Student Name: <c:out value="${student_name}"/><br>
        </c:forEach>
        </p>
        
        </div> --%>

    </body>
</html>
