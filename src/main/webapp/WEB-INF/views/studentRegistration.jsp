<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Registration</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/studentRegistration.css">
    </head>

    <body>
        <div class="registration-box">
            <h1>Join Us!</h1>
            <p class="subtitle">Create Your Student Account</p>

            <form action="/studentRegistration" method="post">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name"
                placeholder="Enter your full name" required>

                <label for="email">Email Address</label>
                <input type="email" id="email" name="email"
                placeholder="Enter your email" required>

                <label for="phone">Phone Number</label>
                <input type="tel" id="phone" name="phone"
                placeholder="Enter your phone number"
                pattern="[0-9]{10}" required>

                <label for="course">Course</label>
                <select id="course" name="course" required>
                    <option value="">-- Select Course --</option>
                    <option value="BCA">BCA</option>
                    <option value="BSc IT">B.Sc. IT</option>
                    <option value="BTech">B.Tech</option>
                    <option value="MCA">MCA</option>
                    <option value="MSc IT">M.Sc. IT</option>
                </select>

                <label for="password">Password</label>
                <input type="password" id="password" name="password"
                placeholder="Create a password" minlength="8" required>

                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword"
                name="confirmPassword"
                placeholder="Re-enter your password"
                minlength="8" required>

                <button type="submit">Register Now</button>
            </form>

            <p class="login-link">
                Already registered?
                <a href="/login">Login Here</a>
            </p>
        </div>
    </body>
</html>
