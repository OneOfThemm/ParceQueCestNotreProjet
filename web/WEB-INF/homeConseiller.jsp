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
        <title>JSP Page</title>
               
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
       
       <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"> 
        <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
       
    
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
