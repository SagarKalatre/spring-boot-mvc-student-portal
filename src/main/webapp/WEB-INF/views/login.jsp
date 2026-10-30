<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/login.css">
</head>

<body>

    <div class="login-box">

        <h1>Welcome Back!</h1>
        <p class="subtitle">Student Login Portal</p>

        <form action="/login" method="post">

            <label for="email">Email Address</label>
            <input type="email" id="email" name="email"
                   placeholder="Enter your email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password"
                   placeholder="Enter your password" required>

            <p class="forgot">
                <a href="/forgotPassword">Forgot Password?</a>
            </p>

            <button type="submit">Login</button>

        </form>

        <p class="register-link">
            New student?
            <a href="/studentRegistration">Create Account</a>
        </p>

    </div>

    <div id="div_1">
        <p>
            Your Name is: ${name}
            <br>
            Your Age is: ${age}
        </p>
        <br>
        <p>
            <%-- ${studentName} --%>
            <c:forEach var = "student_name" items = "${studentName}">
                Student Name -: <c:out value = "${student_name}"></c:out><br>
            </c:forEach>
        </p>
    </div>

</body>
</html>
