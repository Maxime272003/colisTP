<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Suivi d'un Colis</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #dce6f1, #f5f5f5);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            width: 100%;
            max-width: 400px;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        h1 {
            margin-bottom: 20px;
            text-align: center;
        }
        label {
            display: block;
            margin-top: 10px;
        }
        .error {
            color: red;
            font-size: 12px;
            display: none;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            border: none;
            border-radius: 4px;
            background: #4CAF50;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        .result-container {
            margin-top: 20px;
            padding: 10px;
            background-color: #f0f8ff;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Suivi d'un Colis</h1>
        <form action="suivi" method="get">
            <label for="id">ID du Colis* :</label>
            <input type="number" id="id" name="id" required>
            <input type="submit" value="Suivre">
        </form>

        <c:if test="${not empty param.id}">
            <c:choose>
                <c:when test="${not empty colis}">
                    <div class="result-container">
                        <h2>Détails du Colis</h2>
                        <p><strong>ID :</strong> ${colis.id}</p>
                        <p><strong>Origine :</strong> ${colis.origine}</p>
                        <p><strong>Destination :</strong> ${colis.destination}</p>
                        <p><strong>Latitude :</strong> ${colis.latitude}</p>
                        <p><strong>Longitude :</strong> ${colis.longitude}</p>
                        <p><strong>Emplacement :</strong> ${colis.emplacement}</p>
                        <p><strong>État :</strong> ${colis.etat}</p>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="result-container" style="color: red;">
                        <p>Colis non trouvé. Veuillez vérifier l'ID et réessayer.</p>
                    </div>
                </c:otherwise>
            </c:choose>
        </c:if>
    </div>
</body>
</html>