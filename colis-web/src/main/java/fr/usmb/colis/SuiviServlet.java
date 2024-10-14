package fr.usmb.colis;
import java.io.IOException;


import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/suivi")
public class SuiviServlet extends HttpServlet {
    @EJB
    private ColisService colisService;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Colis colis = colisService.suivreColis(id);
        request.setAttribute("colis", colis);
        request.getRequestDispatcher("suivi.jsp").forward(request, response);
    }
}
