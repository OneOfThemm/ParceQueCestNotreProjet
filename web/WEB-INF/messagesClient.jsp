<%-- 
    Document   : messagesClient
    Created on : 16 août 2019, 14:51:26
    Author     : esic
--%>
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
            <c:forEach items="${messages}" var="message">            
                <c:choose>
                    <c:when test="${member.id==message.user_idEmetteur}"> 
                        <div class="message" style = "float:left "><p>Toi</p><p>${message.corpsMessage}</p></div>
                    </c:when>
                    <c:otherwise>
                        <% String emetteur = UserDao.getNameById(2); %>
                        <div class="message" style = "float:right"><p><%= emetteur %></p><p>${message.corpsMessage}</p></div>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            

            
            <%--<button onclick="location.href = 'newMessage'"> Nouveau message </button>--%>
        </div>
    </body>
</html>
