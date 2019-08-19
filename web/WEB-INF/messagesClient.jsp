<%-- 
    Document   : messagesClient
    Created on : 16 août 2019, 14:51:26
    Author     : esic
--%>
<%@page import="java.sql.Date"%>
<%@page import="fr.solutec.bean.Client"%>
<%@page import="java.util.List"%>
<%@page import="fr.solutec.bean.Message"%>
<%@page import="fr.solutec.dao.UserDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css\messages.css">
        <title>JSP Page</title>

    </head>
    <body>
        <h1>Hello World!</h1>

        <div>
        <% List<Message> messages = (List<Message>) request.getAttribute("messages"); %>
        
        <% Client member = (Client) request.getAttribute("client");
        
        int memberId = member.getId();
        Date dateDerConnexion = member.getDateConnexion(); %>

        <% for (Message elem : messages) {
                Date dateMessage = new Date(elem.getDateMessage().getTime());
                if (elem.getUser_idEmetteur() == memberId) {
                        out.println("<div class=\"message\" style = \"float:left \"><p>Toi</p><p>" + elem.getCorpsMessage() + "</p></div>");
                }
                else{
                    try {
                        String emetteur = UserDao.getNameById(elem.getUser_idEmetteur());
                        if (dateDerConnexion.after(dateMessage)){
                            out.println("<div class='message' style = 'float:right'><p>" + emetteur + "</p><p>" + elem.getCorpsMessage() + "</p></div>");
                        }
                        else{
                            out.println("<div class='messageRecent' style = 'float:right'><p>" + emetteur + "</p><p>" + elem.getCorpsMessage() + "</p></div>");
                        }
                    } 
                    catch (Exception e) {
                    }
                    
                }
                
            }
        %>

        </div>

        <button onclick="location.href = 'NewMessage'" style="position : absolute; right: 20px; bottom: 20px;">Nouveau Message</button>
    </body>
</html>
