<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Suivi d'un Colis</title>
</head>
<body>
    <h1>Suivi d'un Colis</h1>
    <form action="suivi" method="get">
        <label for="id">ID du colis:</label>
        <input type="number" id="id" name="id" required>
        <input type="submit" value="Suivre">
    </form>
    
    <c:if test="${not empty colis}">
        <h2>Informations du colis ${colis.id}</h2>
        <p>Poids: ${colis.poids} kg</p>
        <p>Valeur: ${colis.valeur} €</p>
        <p>Origine: ${colis.origine}</p>
        <p>Destination: ${colis.destination}</p>
        <p>Emplacement actuel: ${colis.emplacement}</p>
        <p>État: ${colis.etat}</p>
        <p>Coordonnées: ${colis.latitude}, ${colis.longitude}</p>
    </c:if>
    
    <c:if test="${empty colis and not empty param.id}">
        <p>Aucun colis trouvé avec l'ID ${param.id}</p>
    </c:if>
    
    <br>
    <a href="index.jsp">Retour à l'accueil</a>
</body>
</html>
