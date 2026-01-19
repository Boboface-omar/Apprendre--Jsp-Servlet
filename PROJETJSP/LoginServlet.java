// LoginServlet.java
// C'est la classe Java qui va recevoir les données.

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 1. Récupérer les données (étape "request")
        String nom = request.getParameter("nomUtilisateur");
        
        // 2. Logique métier (simplifiée pour l'exemple)
        if (nom != null && !nom.isEmpty()) {
            // On crée la session (étape "session")
            HttpSession session = request.getSession();
            session.setAttribute("user", nom);
            
            // 3. On transfère vers la page d'accueil (étape "forward")
            this.getServletContext().getRequestDispatcher("/accueil.jsp").forward(request, response);
        } else {
            // Sinon on renvoie vers le login
            response.sendRedirect("login.jsp");
        }
    }
}