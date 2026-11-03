<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Students</title>
</head>
<body>

    <center>
        <h1>Search Students</h1>

        <form action="${pageContext.request.contextPath}/student-search"
              method="post">

            <label>Search By:</label>

            <select name="searchType" required>
                <option value="city">City</option>
                <option value="course">Course</option>
                <option value="email">Email ID</option>
            </select>

            <br><br>

            <label>Enter Search Value:</label>

            <input type="text" name="searchValue"
                   placeholder="Enter city, course or email"
                   required>

            <br><br>

            <button type="submit">Search Student</button>

        </form>

        <br>

        <a href="${pageContext.request.contextPath}/studentRegistration">
            Back to Registration
        </a>
    </center>

</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Student</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(120deg, #667eea, #764ba2);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .search-box {
            background: white;
            width: 380px;
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
            margin-top: 18px;
            font-weight: bold;
        }

        select, input {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            width: 100%;
            padding: 12px;
            margin-top: 22px;
            background: #667eea;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background: #5368d5;
        }

        .back {
            display: block;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>

<body>

<div class="search-box">

    <h1>Search Student</h1>

    <form action="${pageContext.request.contextPath}/student-search"
          method="post">

        <label>Search By:</label>

        <select name="searchType" required>
            <option value="id">Student ID</option>
            <option value="course">Course</option>
            <option value="city">City</option>
            <option value="email">Email ID</option>
        </select>

        <label>Enter Search Value:</label>

        <input type="text"
               name="searchValue"
               placeholder="Enter ID, course, city or email"
               required>

        <button type="submit">Search Student</button>

    </form>

    <a class="back"
       href="${pageContext.request.contextPath}/studentRegistration">
        Back to Registration
    </a>

</div>

</body>
</html>
