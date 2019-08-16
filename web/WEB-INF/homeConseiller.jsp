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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
       
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"> 
        <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script> </head>
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
                        <script>
                            $(document).ready(function () {
                            $('#tablo').dataTable();
                            });
                        </script>
                        
                        <table id="tablo" class='table table-striped' >
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">%</th>
                                <th> Nom</th>
                                <th> Prénom</th>
                                <th> Téléphone </th>
                                <th> n Compte</th>
                                <th> solde</th>
                                <th> decouvert autorisé </th>                                
                            </tr>
                        </thead>
                        
                        <tbody>
                            <c:forEach items="${ClientDecouvert}" var="member"> 
                                <tr>
                                    <td scopa="row">${member.nom}</td>
                                    <td scopa="row">${member.prenom}</td>
                                    <td scopa="row">${member.tel}</td>
                                    <td scopa="row">${member.numCompte}</td>
                                    <td scopa="row">${member.solde}</td>
                                    <td scopa="row">${member.decouvert}</td>

                                </tr>
                            </c:forEach>
                        </tbody>
                        
                        
                    </div>
                </div>
                <div class="col-md-1 " style='border-color: #33b5e5;height:200px;'>
                    <br>
                </div>
                <div id='buttons' class="col-md-2 " style='border-color: #33b5e5;height:200px;'>
                    
                </div>
            </div>
        </div>        

                
        
                
            
       
            
            
            
        
        
    </body>
</html>
