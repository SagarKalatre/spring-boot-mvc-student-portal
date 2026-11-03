<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Student Dashboard</title>
    </head>
    <body>

        <div>
            <center>
                <h1>Welcome to Student Dashboard!</h1>
            </center>
        </div>
        <div>
            <a href="${pageContext.request.contextPath}/studentRegistration">
                Open Student Registration
            </a>
        </div>

        <div>
            <a href="${pageContext.request.contextPath}/student-search">
                Search Student
            </a>
        </div>
    </body>
</html>