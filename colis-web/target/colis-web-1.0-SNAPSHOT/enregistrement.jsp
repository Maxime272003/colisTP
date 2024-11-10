<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enregistrement d'un Colis</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #e0eafc, #cfdef3);
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
                { id: "poids", type: "number", errorMsg: "Poids incorrect (doit être un nombre)" },
                { id: "valeur", type: "number", errorMsg: "Valeur incorrecte (doit être un nombre entier)" },
                { id: "origine", type: "text", errorMsg: "Origine incorrecte (texte requis)" },
                { id: "destination", type: "text", errorMsg: "Destination incorrecte (texte requis)" },
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
        <h1>Enregistrement d'un Colis</h1>
        <form onsubmit="return validateForm()" action="enregistrer" method="post">
            <label for="poids">Poids (kg)* :</label>
            <input type="number" step="0.01" id="poids" name="poids" required>
            <div id="poidsError" class="error"></div>

            <label for="valeur">Valeur (€)* :</label>
            <input type="number" id="valeur" name="valeur" required>
            <div id="valeurError" class="error"></div>

            <label for="origine">Origine* :</label>
            <input type="text" id="origine" name="origine" required>
            <div id="origineError" class="error"></div>

            <label for="destination">Destination* :</label>
            <input type="text" id="destination" name="destination" required>
            <div id="destinationError" class="error"></div>

            <label for="latitude">Latitude* :</label>
            <input type="number" step="0.000001" id="latitude" name="latitude" required>
            <div id="latitudeError" class="error"></div>

            <label for="longitude">Longitude* :</label>
            <input type="number" step="0.000001" id="longitude" name="longitude" required>
            <div id="longitudeError" class="error"></div>

            <label for="emplacement">Emplacement actuel* :</label>
            <input type="text" id="emplacement" name="emplacement" required>
            <div id="emplacementError" class="error"></div>

            <input type="submit" value="Enregistrer">
            <div class="note">* Champs obligatoires</div>
        </form>
    </div>
</body>
</html>
