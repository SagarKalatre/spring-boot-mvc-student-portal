<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Login</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background: linear-gradient(135deg, #141e30, #243b55);
}

.login-box {
    width: 350px;
    padding: 35px;
    background: white;
    border-radius: 16px;
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
}

h1 {
    text-align: center;
    color: #243b55;
    margin-bottom: 10px;
}

.subtitle {
    text-align: center;
    color: #777;
    margin-bottom: 25px;
}

label {
    display: block;
    margin: 15px 0 7px;
    font-weight: bold;
    color: #333;
}

input {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 7px;
    outline: none;
}

input:focus {
    border-color: #243b55;
}

button {
    width: 100%;
    padding: 12px;
    margin-top: 22px;
    border: none;
    border-radius: 7px;
    background: #243b55;
    color: white;
    font-size: 16px;
    cursor: pointer;
}

button:hover {
    background: #141e30;
}

.register-link {
    text-align: center;
    margin-top: 20px;
    font-size: 14px;
}

a {
    color: #243b55;
    font-weight: bold;
    text-decoration: none;
}
</style>
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

            <button type="submit">Login</button>
        </form>

        <p class="register-link">
            New student?
            <a href="/studentRegistration">Create Account</a>
        </p>
    </div>
</body>
</html>
