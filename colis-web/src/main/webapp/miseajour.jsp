<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mise à jour d'un Colis</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #e2eafc, #cfd6ff);
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
        input[type="text"], input[type="number"], select {
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
        .note {
            font-size: 12px;
            margin-top: 10px;
            color: #555;
        }
    </style>
    <script>
        function validateForm() {
            let isValid = true;
            const fields = [
                { id: "id", type: "number", errorMsg: "ID incorrect (doit être un nombre entier)" },
                { id: "latitude", type: "number", errorMsg: "Latitude incorrecte (doit être un nombre flottant)" },
                { id: "longitude", type: "number", errorMsg: "Longitude incorrecte (doit être un nombre flottant)" },
                { id: "emplacement", type: "text", errorMsg: "Emplacement incorrect (texte requis)" }
            ];

            fields.forEach(field => {
                const input = document.getElementById(field.id);
                const error = document.getElementById(field.id + "Error");
                if ((field.type === "number" && isNaN(parseFloat(input.value))) || (field.type === "text" && !input.value.trim())) {
                    error.style.display = "block";
                    error.textContent = field.errorMsg;
                    isValid = false;
                } else {
                    error.style.display = "none";
                }
            });
            return isValid;
        }
    </script>
</head>
<body>
    <div class="form-container">
        <h1>Mise à jour d'un Colis</h1>
        <form onsubmit="return validateForm()" action="miseajour" method="post">
            <label for="id">ID du Colis* :</label>
            <input type="number" id="id" name="id" required>
            <div id="idError" class="error"></div>

            <label for="latitude">Latitude* :</label>
            <input type="number" step="0.000001" id="latitude" name="latitude" required>
            <div id="latitudeError" class="error"></div>

            <label for="longitude">Longitude* :</label>
            <input type="number" step="0.000001" id="longitude" name="longitude" required>
            <div id="longitudeError" class="error"></div>

            <label for="emplacement">Emplacement actuel* :</label>
            <input type="text" id="emplacement" name="emplacement" required>
            <div id="emplacementError" class="error"></div>

            <label for="etat">État du Colis* :</label>
            <select id="etat" name="etat" required>
                <option value="">Sélectionnez un état</option>
                <option value="En transit">En transit</option>
                <option value="Livré">Livré</option>
                <option value="En attente de ramassage">En attente de ramassage</option>
                <option value="Retourné">Retourné</option>
                <option value="Perdu">Perdu</option>
                <option value="En cours de livraison">En cours de livraison</option>
            </select>
            <div id="etatError" class="error"></div>

            <input type="submit" value="Mettre à jour">
            <div class="note">* Champs obligatoires</div>
        </form>
    </div>
</body>
</html>
