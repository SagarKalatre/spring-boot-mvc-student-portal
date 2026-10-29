<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Registration</title>

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
    padding: 30px 15px;
    background: linear-gradient(135deg, #11998e, #38ef7d);
}

.registration-box {
    width: 450px;
    padding: 35px;
    background: white;
    border-radius: 16px;
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.2);
}

h1 {
    text-align: center;
    color: #16796f;
    margin-bottom: 10px;
}

.subtitle {
    text-align: center;
    color: #777;
    margin-bottom: 25px;
}

label {
    display: block;
    margin: 13px 0 7px;
    font-weight: bold;
    color: #333;
}

input, select {
    width: 100%;
    padding: 11px;
    border: 1px solid #ccc;
    border-radius: 7px;
    background: white;
}

input:focus, select:focus {
    outline: none;
    border-color: #11998e;
}

button {
    width: 100%;
    padding: 13px;
    margin-top: 22px;
    border: none;
    border-radius: 7px;
    background: #11998e;
    color: white;
    font-size: 16px;
    cursor: pointer;
}

button:hover {
    background: #087f74;
}

.login-link {
    text-align: center;
    margin-top: 20px;
    font-size: 14px;
}

a {
    color: #087f74;
    font-weight: bold;
    text-decoration: none;
}
</style>
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
