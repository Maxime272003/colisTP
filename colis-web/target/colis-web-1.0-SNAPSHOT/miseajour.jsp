<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mise à jour d'un Colis</title>
</head>
<body>
    <h1>Mise à jour d'un Colis</h1>
    <form action="miseajour" method="post">
        <label for="id">ID du colis:</label>
        <input type="number" id="id" name="id" required><br><br>
        
        <label for="latitude">Latitude:</label>
        <input type="number" step="0.000001" id="latitude" name="latitude" required><br><br>
        
        <label for="longitude">Longitude:</label>
        <input type="number" step="0.000001" id="longitude" name="longitude" required><br><br>
        
        <label for="emplacement">Emplacement:</label>
        <input type="text" id="emplacement" name="emplacement" required><br><br>
        
        <label for="etat">État:</label>
        <select id="etat" name="etat" required>
            <option value="enregistrement">Enregistrement</option>
            <option value="en attente">En attente</option>
            <option value="en acheminement">En acheminement</option>
            <option value="bloqué">Bloqué</option>
            <option value="livré">Livré</option>
        </select><br><br>
        
        <input type="submit" value="Mettre à jour">
    </form>
    <br>
    <a href="index.jsp">Retour à l'accueil</a>
</body>
</html>
