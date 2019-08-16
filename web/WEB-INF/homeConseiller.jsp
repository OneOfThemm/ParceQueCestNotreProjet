<%-- 
    Document   : homeConseiller
    Created on : 16 août 2019, 10:23:32
    Author     : esic
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="fr.solutec.bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>page conseiller/title>
               
       
    
    </head>
    <body>
        <div>            
            <%-- <button type="button" onclick="location.href='deco'" class="btn btn-info bmd-btn-fab btn-pull-right"> D</button> --%> 
        </div>
        
        <div class='text-center' style='color : #FF1493'>
        <h1>Hello World!</h1>
        </div>
        
        
        <div class='container'>             
            <hr>
            <p> Bonjour ${conseiller.prenom} ${conseiller.nom} </p> 
            <hr>
        </div>
        
    </body>
</html>
