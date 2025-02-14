<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Tennisverwaltung - Login</title>
    <style>

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #E3F2FD, #BBDEFB);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 80%;
            text-align: left;
        }

        .header {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            color: #1E3A5F;
            margin-bottom: 50px;
        }

        .login-form {
            text-align: center;
            margin-bottom: 40px;
            padding: 30px;
            border-radius: 15px;
        }

        input {
            display: block;
            width: 350px;
            margin: 10px auto;
            padding: 12px;
            border-radius: 15px;
            border: 1px solid #A0AEC0;
            font-size: 16px;
            text-align: left;
            background: rgba(255, 255, 255, 0.7);
        }

        input:focus {
            border-color: #1565C0;
            outline: none;
            background: white;
        }

        input::placeholder {
            color: #546E7A;
            font-size: 16px;
        }

        button {
            width: 320px;
            padding: 12px;
            margin-top: 10px;
            border-radius: 15px;
            border: none;
            background: #1565C0;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease-in-out;
        }

        button:hover {
            background: #0D47A1;
        }


        .error {
            color: #D32F2F;
            font-weight: bold;
        }

        .divider {
            width: 100%;
            height: 2px;
            background-color: #A0AEC0;
            margin: 50px 0;
        }

        .content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .text {
            width: 50%;
            padding: 20px;
            color: #1E3A5F;
        }

        .image {
            width: 45%;
            height: 200px;
            background-color: #A0AEC0;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 1px solid #546E7A;
            color: #1E3A5F;
        }

    </style>
</head>
<body>

<div class="container">
    <div class="header">Tennisverwaltung</div>

    <div class="login-form">
        <c:if test="${not empty param.error}">
            <p class="error">Wrong username or password</p>
        </c:if>

        <form action="LoginServlet" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
    </div>

    <div class="divider"></div>

    <div class="content">
        <div class="text">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
        </div>
        <div class="image">
            <p>Image Placeholder</p>
        </div>
    </div>
</div>

</body>
</html>
