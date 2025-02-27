<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Club Übersicht</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #0F2027, #203A43, #2C5364);
            margin: 0;
            padding: 0;
            text-align: center;
            color: white;
        }

        .navigation {
            padding: 15px;
            font-size: 16px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(8px);
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            display: inline-block;
            margin-top: 20px;
        }

        .navigation a {
            margin: 0 15px;
            text-decoration: none;
            color: #FFD700;
            font-weight: bold;
            transition: color 0.3s ease-in-out;
        }

        .navigation a:hover {
            color: #FF4500;
        }

        .container {
            width: 90%;
            margin: auto;
            padding-top: 50px;
        }

        h1 {
            font-size: 40px;
            color: #FFD700;
            font-weight: 600;
            margin-bottom: 50px;
            text-shadow: 2px 2px 10px rgba(255, 215, 0, 0.8);
        }

        .clubs-wrapper {
            display: flex;
            justify-content: center;
            gap: 50px;
            flex-wrap: wrap;
        }

        .club {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 42%;
            min-height: 420px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
            cursor: pointer;
        }

        .club:hover {
            transform: translateY(-10px);
            box-shadow: 0px 10px 30px rgba(255, 215, 0, 0.5);
        }

        .club a {
            text-decoration: none;
            color: white;
            display: block;
            width: 100%;
            height: 100%;
        }

        .club-title {
            font-size: 22px;
            font-weight: bold;
            padding: 15px;
            background: linear-gradient(135deg, #FF4500, #FF8C00);
            color: white;
            border-radius: 8px;
            border: none;
            width: 100%;
        }

        /* ✅ Fix: Remove black box background */
        .club-image {
            width: 100%;
            height: auto;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 15px;
            background: none; /* No background */
            padding: 10px;
        }

        .club-image img {
            width: 50%; /* Adjust size of logo */
            height: auto;
            border-radius: 10px;
            object-fit: contain;
            background: transparent; /* Ensure background is transparent */
        }
    </style>
</head>
<body>

<!-- 🌟 Navigation Bar -->
<div class="navigation">
    <a href="spielerAnsehen.jsp">Spieler ansehen</a> /
    <a href="spielerBearbeiten.jsp">bearbeiten</a> /
    <a href="spielerHinzufuegen.jsp">hinzufügen</a> /
    <a href="ClubUebersichtServlet"><b>Club Übersicht</b></a>
</div>

<!-- 🏆 Club Übersicht -->
<div class="container">
    <h1>Club Übersicht</h1>

    <div class="clubs-wrapper">
        <!-- Club 1 (Madrid) -->
        <div class="club">
            <a href="clubdetails.jsp?club=Madrid">
                <button class="club-title">Madrid Tennis Club</button>
                <div class="club-image">
                    <img src="https://upload.wikimedia.org/wikipedia/en/8/8f/Roland_Garros_logo.svg" alt="Roland Garros Logo">

                </div>
            </a>
        </div>

        <!-- Club 2 (London) -->
        <div class="club">
            <a href="clubdetails.jsp?club=London">
                <button class="club-title">London Elite Tennis</button>
                <div class="club-image">
                    <img src="https://upload.wikimedia.org/wikipedia/en/7/71/Wimbledon_logo.svg" alt="Wimbledon Logo">
                </div>
            </a>
        </div>
    </div>

</div>

</body>
</html>
