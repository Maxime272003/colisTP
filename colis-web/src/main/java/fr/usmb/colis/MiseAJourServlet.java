package fr.usmb.colis;
import java.io.IOException;


import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/miseajour")
public class MiseAJourServlet extends HttpServlet {
    @EJB
    private ColisService colisService;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            int id = Integer.parseInt(request.getParameter("id"));
            double latitude = Double.parseDouble(request.getParameter("latitude"));
            double longitude = Double.parseDouble(request.getParameter("longitude"));
            String emplacement = request.getParameter("emplacement");
            String etat = request.getParameter("etat");
            
            colisService.mettreAJourColis(id, latitude, longitude, emplacement, etat);
            response.sendRedirect("confirmation.jsp");
        }catch (NumberFormatException e) {
            request.setAttribute("error", "Erreur de format dans les données saisies");
            request.getRequestDispatcher("miseajour.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "Une erreur est survenue lors de l'enregistrement du colis");
            request.getRequestDispatcher("miseajour.jsp").forward(request, response);
        }
    }
}
