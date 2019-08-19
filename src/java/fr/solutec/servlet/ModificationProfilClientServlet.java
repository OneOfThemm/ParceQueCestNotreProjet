/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import fr.solutec.bean.Client;
import fr.solutec.bean.User;
import fr.solutec.dao.AccessDao;
import fr.solutec.dao.ClientDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ESIC
 */
@WebServlet(name = "ModificationProfilClientServlet", urlPatterns = {"/ModificationProfilClientServlet"})
public class ModificationProfilClientServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ModificationProfilClientServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ModificationProfilClientServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
        String mdp = request.getParameter("mdp");

        try {
            HttpSession session = request.getSession(true);
            Client u1 = (Client) session.getAttribute("member");
            request.setAttribute("client", u1);

            u1.setNom(nom);
            u1.setPrenom(prenom);
            u1.setEmail(email);
            u1.setTel(tel);
            u1.setMdp(mdp);
            u1.setActifUser(true); 
            
            
            String sqlUser = "UPDATE user SET nom = ?, prenom = ?, email = ?, tel = ?, mdp = ?, actifuser = ? WHERE idUser = ?;";
            Connection connexion = AccessDao.getConnection();
            PreparedStatement ordreUser = connexion.prepareStatement(sqlUser);
            ordreUser.setString(1, nom);
            ordreUser.setString(2, prenom);
            ordreUser.setString(3, email);
            ordreUser.setString(4, tel);
            ordreUser.setString(5, mdp);
            ordreUser.setBoolean(6, u1.getActifUser());
            ordreUser.setInt(7, u1.getId());
            ordreUser.execute();
            
            

            request.setAttribute("msgmodif", "Modifications réalisées avec succès");
            response.sendRedirect("HomeClientServlet");
        } catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.println(e.getMessage());

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
