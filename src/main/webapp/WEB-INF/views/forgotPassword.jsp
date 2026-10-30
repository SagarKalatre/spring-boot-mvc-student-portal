<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Forgot Password</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/forgotPassword.css">
    </head>

    <body>
        <div class="container">
            <div class="icon">🔐</div>

            <h1>Forgot Password?</h1>

            <p class="description">
                Enter your registered email address to request
                a password reset.
            </p>

            <form action="/forgotPassword" method="post">
                <label for="email">Registered Email</label>

                <input type="email"
                id="email"
                name="email"
                placeholder="Enter your email address"
                required>

                <button type="submit">Request Password Reset</button>
            </form>

            <a class="back-link" href="/login">← Back to Login</a>
        </div>
    </body>
</html>
