<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enregistrement d'un Colis</title>
</head>
<body>
    <h1>Enregistrement d'un Colis</h1>
    <form action="enregistrer" method="post">
        <label for="poids">Poids (kg):</label>
        <input type="number" step="0.01" id="poids" name="poids" required><br><br>
        
        <label for="valeur">Valeur (€):</label>
        <input type="number" id="valeur" name="valeur" required><br><br>
        
        <label for="origine">Origine:</label>
        <input type="text" id="origine" name="origine" required><br><br>
        
        <label for="destination">Destination:</label>
        <input type="text" id="destination" name="destination" required><br><br>
        
        <label for="latitude">Latitude:</label>
        <input type="number" step="any" id="latitude" name="latitude" required><br><br>
        
        <label for="longitude">Longitude:</label>
        <input type="number" step="any" id="longitude" name="longitude" required><br><br>
        
        <label for="emplacement">Emplacement actuel:</label>
        <input type="text" id="emplacement" name="emplacement" required><br><br>
        
        <input type="submit" value="Enregistrer">
    </form>
    <br>
    <a href="index.jsp">Retour à l'accueil</a>
</body>
</html>
