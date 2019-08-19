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

        <form action="NewMessage" method="POST">
            <textarea id="textMessage" name="text"></textarea>
       
            <input type="submit" >
        </form>
        <button onclick="location.href = 'MessagesClient'" style="position : absolute; right: 20px; bottom: 20px;">Retour Messagerie</button>
    </body>
</html>
