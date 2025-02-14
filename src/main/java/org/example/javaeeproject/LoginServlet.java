package org.example.javaeeproject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Statische Zugangsdaten (nur zur Demo)
    private static final String VALID_USERNAME = "admin";
    private static final String VALID_PASSWORD = "1234";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String browser = request.getParameter("browser");

        // Überprüfung der Anmeldedaten
        if (username != null && password != null &&
                username.equals(VALID_USERNAME) && password.equals(VALID_PASSWORD)) {

            // Benutzername als Cookie speichern
            Cookie userCookie = new Cookie("username", username);
            userCookie.setMaxAge(60 * 60 * 24); // 1 Tag gültig
            response.addCookie(userCookie);

            // Session-Attribute setzen
            HttpSession session = request.getSession();
            session.setAttribute("isLoggedIn", true);
            session.setAttribute("username", username);
            session.setAttribute("browser", browser);

            // Weiterleitung zur geschützten Seite
            response.sendRedirect("protected.jsp");
        } else {
            // Falsche Login-Daten, zurück zum Login mit Fehlerparameter
            response.sendRedirect("login.jsp?error=1");
        }
    }
}