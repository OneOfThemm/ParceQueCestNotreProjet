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
        <title>page conseiller</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        
        <div class='container' >
            
            <div id='Bonjour' style='background:#33b5e5; color: white'  > 
                <hr>
                <h1 class='text-center'> Bonjour ${conseiller.prenom} ${conseiller.nom} </h1> 
                <h4 class='text-center' > votre dernière connexion était le ${conseiller.dateConnexion} </h4>            
                <hr>
            </div>
            
                
            <div id='bouttons' border border-primary > 
                <div> 
                    
                </div>
            </div>
                
            <div id='bouttons' border border-primary > 
                <div> 
                   <%-- voir les message non lu --%> 
                </div>
                <div> 
                   <%-- voir clients à decouvert--%> 
                </div>
                <div> 
                   <%-- voir clients à decouvert--%> 
                </div>
            </div>           
            
                
            
        </div>
            
            
            
        
        
    </body>
</html>
