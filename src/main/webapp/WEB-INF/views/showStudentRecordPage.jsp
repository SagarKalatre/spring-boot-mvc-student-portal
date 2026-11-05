
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Update Student Record</title>

        <style>
            body {
                font-family: Arial, sans-serif;
                background: linear-gradient(135deg, #667eea, #764ba2);
                margin: 0;
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            
            .container {
                background: white;
                width: 90%;
                max-width: 450px;
                padding: 30px;
                border-radius: 12px;
                box-shadow: 0 5px 20px rgba(0,0,0,0.2);
            }
            
            h1 {
                text-align: center;
                color: #333;
            }
            
            label {
                display: block;
                margin-top: 15px;
                font-weight: bold;
            }
            
            input {
                width: 100%;
                padding: 11px;
                margin-top: 7px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;
            }
            
            button {
                width: 100%;
                padding: 12px;
                margin-top: 22px;
                background: #28a745;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
            }
            
            button:hover {
                background: #218838;
            }
            
            .back-link {
                display: block;
                text-align: center;
                margin-top: 20px;
                text-decoration: none;
                color: #667eea;
            }
        </style>
    </head>

    <body>

        <div class="container">

            <h1>Update Student Record</h1>

            <form action="${pageContext.request.contextPath}/update-student"
            method="post">

            <input type="hidden" name="studentId"
            value="${student.studentId}">

            <label>Student Name:</label>
            <input type="text" name="name"
            value="${student.name}" required>

            <label>Email:</label>
            <input type="email" name="email"
            value="${student.email}" required>

            <label>Phone:</label>
            <input type="text" name="phone"
            value="${student.phone}" required>

            <label>Course:</label>
            <input type="text" name="course"
            value="${student.course}" required>

            <label>City:</label>
            <input type="text" name="city"
            value="${student.city}" required>

            <a href="${pageContext.request.contextPath}/update-student">
                <button type="submit">Update Student</button>
            </a>

        </form>

        <a class="back-link"
        href="${pageContext.request.contextPath}/showStudentRecordPage">
        Back to Student Records
    </a>

</div>

</body>
</html>
