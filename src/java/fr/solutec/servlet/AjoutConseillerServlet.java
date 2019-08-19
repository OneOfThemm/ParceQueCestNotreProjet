/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import fr.solutec.bean.Conseiller;
import fr.solutec.dao.ConseillerDao;
import fr.solutec.dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author esic
 */
@WebServlet(name = "AjoutConseillerServlet", urlPatterns = {"/ajoutconseiller"})
public class AjoutConseillerServlet extends HttpServlet {

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
            out.println("<title>Servlet AjoutConseillerServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AjoutConseillerServlet at " + request.getContextPath() + "</h1>");
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
        // processRequest(request, response)

        String loginConseiller = request.getParameter("login");
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
        String mdp1 = request.getParameter("mdp1");
        String mdp2 = request.getParameter("mdp2");

        if (!(mdp1.equals(mdp2))) {
            request.setAttribute("msg", "Les deux mots de passe doivent être indentiques. Échec de l'ajout d'un conseiller");
            request.getRequestDispatcher("WEB-INF/homeadmin.jsp").forward(request, response);
        } else {
            try {
                Conseiller c = new Conseiller();
                c.setLogin_conseiller(loginConseiller);
                c.setNom(nom);
                c.setPrenom(prenom);
                c.setEmail(email);
                c.setTel(tel);
                c.setMdp(mdp1);
                c.setActifUser(true);


                ConseillerDao.insert(c);
                HomeServletAdmin.msgCreateCOk = "Conseiller créé avec succès";
                response.sendRedirect("homeadmin");
            } catch (Exception e) {
                PrintWriter out = response.getWriter();
                out.println(e.getMessage());
            }
        }

    }
    public static int valMsg = 0;

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
