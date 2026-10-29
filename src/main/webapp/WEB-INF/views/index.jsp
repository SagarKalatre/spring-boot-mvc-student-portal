<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Index JSP Page</title>

        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f6f9;
                text-align: center;
                padding-top: 80px;
            }
            
            h1 {
                color: #007bff;
            }
            
            .container {
                background-color: white;
                width: 60%;
                margin: auto;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 2px 10px #ccc;
            }
        </style>
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

    </body>
</html>
