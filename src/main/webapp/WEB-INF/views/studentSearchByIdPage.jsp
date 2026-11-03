<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Search Student</title>

        <style>
            * {
                box-sizing: border-box;
            }
            
            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
                background: linear-gradient(135deg, #667eea, #764ba2);
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            
            .search-box {
                background: white;
                width: 90%;
                max-width: 450px;
                padding: 35px;
                border-radius: 12px;
                box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            }
            
            h1 {
                text-align: center;
                color: #333;
                margin-bottom: 10px;
            }
            
            .subtitle {
                text-align: center;
                color: #777;
                margin-bottom: 30px;
            }
            
            label {
                display: block;
                margin-bottom: 8px;
                font-weight: bold;
                color: #333;
            }
            
            input {
                width: 100%;
                padding: 12px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 6px;
                font-size: 15px;
            }
            
            input:focus {
                outline: none;
                border-color: #667eea;
            }
            
            button {
                width: 100%;
                padding: 13px;
                background: #667eea;
                color: white;
                border: none;
                border-radius: 6px;
                font-size: 16px;
                cursor: pointer;
            }
            
            button:hover {
                background: #5365d8;
            }
            
            .student-details {
                margin-top: 25px;
                padding: 20px;
                background: #f4f6ff;
                border-radius: 8px;
            }
            
            .student-details h2 {
                color: #333;
                text-align: center;
            }
            
            .student-details p {
                color: #444;
                margin: 12px 0;
            }
            
            .message {
                text-align: center;
                margin-top: 15px;
                color: #d93025;
            }
            
            .back-link {
                display: block;
                text-align: center;
                margin-top: 20px;
                color: #667eea;
                text-decoration: none;
            }
        </style>
    </head>

    <body>

        <div class="search-box">

            <h1>Search Student</h1>

            <p class="subtitle">
                Find your registered student details
            </p>

            <!-- Search Student By ID -->
            <%-- <form action="${pageContext.request.contextPath}/student-searchbyispage" method="post"> --%>
            <form action="${pageContext.request.contextPath}/student-searchbyidpage" method="post">

                <label for="studentId">Student ID</label>

                <input type="number"
                id="studentId"
                name="studentId"
                placeholder="Enter Student ID"
                min="1"
                required>

                <button type="submit">Search Student</button>

            </form>

            <!-- Display Student Details -->
            <%
                com.example.demo.model.Student student =
                (com.example.demo.model.Student) request.getAttribute("student");
                
                String message = (String) request.getAttribute("message");
            %>

            <% if (student != null) { %>

            <div class="student-details">

                <h2>Student Details</h2>

                <p><strong>Student ID:</strong> <%= student.getStudentId() %></p>
                <p><strong>Name:</strong> <%= student.getName() %></p>
                <p><strong>Email:</strong> <%= student.getEmail() %></p>
                <p><strong>Phone:</strong> <%= student.getPhone() %></p>
                <p><strong>Course:</strong> <%= student.getCourse() %></p>

            </div>

            <% } %>

            <% if (message != null) { %>

            <p class="message"><%= message %></p>

            <% } %>

            <br>
            <center>
            <a  class="back"
                href="${pageContext.request.contextPath}/studentRegistration">
                Back to Registration
            </a>
            </center>

    </div>

</body>
</html>
