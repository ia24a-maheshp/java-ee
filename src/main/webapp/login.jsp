<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Tennisverwaltung - Login</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #0F2027, #203A43, #2C5364); /* Dark greenish gradient */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 400px;
            background: rgba(32, 58, 67, 0.9); /* Greenish box to match Club Übersicht */
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .header {
            font-size: 28px;
            font-weight: bold;
            color: #FFC107;
            margin-bottom: 20px;
            text-shadow: 0px 0px 15px rgba(255, 193, 7, 0.8);
        }

        input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
            background-color: #f9f9f9;
        }

        input:focus {
            border-color: #FFA000;
            outline: none;
            background: white;
        }

        button {
            width: 80%; /* Adjusted width to match input fields */
            padding: 12px;
            background: linear-gradient(135deg, #FF4500, #FF8C00);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: background 0.3s ease-in-out;
            display: block;
            margin: 20px auto 0; /* Centering */
        }

        button:hover {
            background: linear-gradient(135deg, #FF8C00, #FFD700);
        }

        .error {
            color: red;
            font-size: 14px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="header">Tennisverwaltung</div>

    <c:if test="${not empty param.error}">
        <p class="error">Wrong username or password</p>
    </c:if>

    <form action="LoginServlet" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>
</div>

</body>
</html>
