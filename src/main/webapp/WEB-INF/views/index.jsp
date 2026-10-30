<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Index JSP Page</title>
                                    
        <link rel="stylesheet" href="${pageContext.request.contextPath}/index.css">
    </head>

    <body>

        <div class="container">
            <h1>Welcome to JSP</h1>

            <%
                String name = "Sagar";
                String course = "Java Full Stack Development";
            %>

            <h2>Hello, <%= name %>!</h2>
            <p>Course: <%= course %></p>
            <p>Current server date and time: <%= new java.util.Date() %></p>
        </div>
        <hr size = "5px" color = "red">
    

    </body>
</html>
