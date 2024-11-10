package fr.usmb.colis;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/enregistrer")
public class EnregistrementServlet extends HttpServlet {

    @EJB
    private ColisService colisService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            double poids = Double.parseDouble(request.getParameter("poids"));
            int valeur = Integer.parseInt(request.getParameter("valeur"));
            String origine = request.getParameter("origine");
            String destination = request.getParameter("destination");
            double latitude = Double.parseDouble(request.getParameter("latitude"));
            double longitude = Double.parseDouble(request.getParameter("longitude"));
            String emplacement = request.getParameter("emplacement");

            Colis colis = new Colis(poids, valeur, origine, destination, latitude, longitude, emplacement);
            colisService.enregistrerColis(colis);

            response.sendRedirect("confirmation.jsp");
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Erreur de format dans les données saisies");
            request.getRequestDispatcher("enregistrement.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "Une erreur est survenue lors de l'enregistrement du colis");
            request.getRequestDispatcher("enregistrement.jsp").forward(request, response);
        }
    }
}
