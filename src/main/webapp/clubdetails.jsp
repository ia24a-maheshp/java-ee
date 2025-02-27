<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Club Details</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #0F2027, #203A43, #2C5364);
            color: white;
            text-align: center;
            padding: 50px;
        }

        .container {
            width: 80%;
            margin: auto;
            background: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.3);
            max-width: 900px;
        }

        h1 {
            color: #FFD700;
            text-shadow: 2px 2px 10px rgba(255, 215, 0, 0.8);
            font-size: 36px;
        }

        h2 {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .description {
            font-size: 18px;
            margin-top: 20px;
            text-align: justify;
            line-height: 1.6;
            padding: 0 20px;
        }

        .back-btn {
            margin-top: 30px;
            padding: 12px 25px;
            font-size: 18px;
            background: linear-gradient(135deg, #FF4500, #FF8C00);
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
        }

        .back-btn:hover {
            background: linear-gradient(135deg, #FF8C00, #FFD700);
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Club Details</h1>

    <%
        String club = request.getParameter("club");
        String description = "No description available.";

        if ("Madrid".equals(club)) {
            description = "Madrid Tennis Club is a prestigious tennis club known for its rich history and top-notch facilities. Established in the heart of Madrid, this club has hosted numerous international tournaments and has been a training ground for some of the world's greatest tennis players. With state-of-the-art courts, luxurious amenities, and a passionate tennis community, it is the ultimate destination for both professionals and enthusiasts.";
        } else if ("London".equals(club)) {
            description = "London Elite Tennis is one of the finest tennis clubs in the UK, home to international tournaments and renowned for its world-class coaching programs. Situated in the heart of London, the club boasts top-tier facilities, including grass, clay, and hard courts. Many legendary tennis players have trained here, and it continues to be a hub for competitive tennis, community engagement, and elite-level performance.";
        }
    %>

    <h2><%= club %></h2>
    <p class="description"><%= description %></p>


    <br>
    <a href="clubuebersicht.jsp" class="back-btn">Zurück zur Übersicht</a>
</div>

</body>
</html>
