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
        </div>
                
        <div class='container' >        
            <div class="row">
                <div id='corps' class="col-md-9"style='border-color: #33b5e5;height:200px;'>
                    <div>
                        <%-- affihher tous les message non lus --%>
                    </div>
                    <div>
                        <%-- affihher les clients à decouverts --%>
                        
                    </div>
                </div>
                <div class="col-md-1 " style='border-color: #33b5e5;height:200px;'>
                    <br>
                </div>
                <div id='buttons' class="col-md-2 " style='border-color: #33b5e5;height:200px;'>
                    Menu
                </div>
            </div>
        </div>        

                
        
                
            
       
            
            
            
        
        
    </body>
</html>
