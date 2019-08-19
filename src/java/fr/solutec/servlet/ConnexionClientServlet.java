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
import fr.solutec.dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ESIC
 */
@WebServlet(name = "ConnexionClient", urlPatterns = {"/connexionClient"})
public class ConnexionClientServlet extends HttpServlet {

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
            out.println("<title>Servlet ConnexionClient</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConnexionClient at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("index.jsp").forward(request, response);
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
        String numClient = request.getParameter("numClient");
        String mdp = request.getParameter("mdp");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date d = new Date(0,0,0);
        String timestamp= sdf.format(new Timestamp(System.currentTimeMillis()));
        d=Date.valueOf(timestamp);

        try {
            Client u = ClientDao.getByLoginPass(numClient, mdp);

            if (u != null) {
                String sqlUser = "UPDATE user SET dateConnexion = ? WHERE idUser = ?;";
        Connection connexion = AccessDao.getConnection();
            PreparedStatement ordreUser = connexion.prepareStatement(sqlUser);
            ordreUser.setDate(1, d);
            ordreUser.setInt(2, u.getId());
            ordreUser.execute();
                request.getSession(true).setAttribute("member", u);
                
                response.sendRedirect("HomeClientServlet"); 

                // request.getRequestDispatcher("WEB-INF/homeclient.jsp").forward(request, response);

            } else {
                request.setAttribute("msg", "Login ou Mot de passe inconu.");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
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
