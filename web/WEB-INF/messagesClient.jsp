<%-- 
    Document   : messagesClient
    Created on : 16 août 2019, 14:51:26
    Author     : esic
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <div>
            <c:forEach items="${messages}" var="message">
                <p>${message.corpsMessage}</p>
            </c:forEach>
            

            
            <%--<button onclick="location.href = 'newMessage'"> Nouveau message </button>--%>
        </div>
    </body>
</html>
