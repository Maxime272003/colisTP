<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gestion des Colis</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #c9d6ff, #e2e2e2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .menu-container {
            text-align: center;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        h1 {
            margin-bottom: 20px;
        }
        .menu-links a {
            display: block;
            color: #333;
            text-decoration: none;
            margin: 10px 0;
            padding: 10px;
            border-radius: 4px;
            background: #f0f0f0;
            transition: background 0.3s;
        }
        .menu-links a:hover {
            background: #d0d0d0;
        }
    </style>
</head>
<body>
    <div class="menu-container">
        <h1>Gestion des Colis</h1>
        <div class="menu-links">
            <a href="enregistrement.jsp">Enregistrer un nouveau colis</a>
            <a href="miseajour.jsp">Mettre à jour un colis</a>
            <a href="suivi.jsp">Suivre un colis</a>
        </div>
    </div>
</body>
</html>
