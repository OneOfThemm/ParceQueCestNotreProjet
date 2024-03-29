/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import fr.solutec.bean.Client;
import fr.solutec.bean.Conseiller;
import fr.solutec.dao.ClientDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author esic
 */
@WebServlet(name = "AjoutClientServlet", urlPatterns = {"/AjoutClientServlet"})
public class AjoutClientServlet extends HttpServlet {

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
            out.println("<title>Servlet AjoutClientServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AjoutClientServlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession(true);
        Conseiller u1 = (Conseiller) session.getAttribute("member");
        request.setAttribute("conseiller", u1);
        
        
        
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
        String mdp = request.getParameter("mdp");
        //String actifuser = request.getParameter("actifuser");
        
        String numClient = request.getParameter("numClient"); 
                
                
                
        try {
                Client c = new Client();
                c.setNumClient(numClient);
                c.setNom(nom);
                c.setPrenom(prenom);
                c.setEmail(email);
                c.setTel(tel);
                c.setMdp(mdp);
                //c.setActifUser(true);

                ClientDao.insert(c, u1);
                //HomeServletAdmin.msgCreateCOk = "Client créé avec succès";
                //response.sendRedirect("homeadmin");
            } catch (Exception e) {
                PrintWriter out = response.getWriter();
                out.println(e.getMessage());
            }
            response.sendRedirect("HomeConseillerServlet"); 

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
