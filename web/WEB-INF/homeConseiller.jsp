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
            <div class="btn-group float-left" id='buttonAjout'>
                <button button type="button" class="btn btn-info"> Ajouter un client</button>
            </div> 
            
            
            <div class="btn-group float-right" id='buttonsVoir'>
                <button button type="button" class="btn btn-info">Voir un client</button>
                    <%-- creer un compte, modifier compte(solde,plafond,decouvert), bloquer la carte du compte, voir l'historique du client--%>
                <button button type="button" class="btn btn-outline-info">Voir tous mes clients</button>
            </div>        
        </div>


        <div class='container' >      
            <div id='corps' style='border-color: #33b5e5;height:200px;'>
                <div>
                    <%-- affihher tous les message non lus --%>
                    <h1 class='text-center'> Mes messages </h1>
                    <br> <br>
                </div>
                    
                <div>                        
                    <%-- affihher les clients à decouverts --%> 
                    <h1 class='text-center'> Mes clients à decouvert </h1>
                    
                    <table class="table table-striped">                            
                    <thead class="thead table-primary">
                        <tr>
                                <th> Nom </th>
                                <th> Prénom </th>
                                <th> Téléphone </th>
                                <th> N° Compte </th>
                                <th> Solde </th>
                                <th> Decouvert autorisé </th>                                
                        </tr>
                    </thead>
                    
                    <tbody>
                        <c:forEach items="${clientsD}" var="member"> 
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
                    
                    </table>                        
                </div>
            </div>   
        </div>        

                
        
                
            
       
            
            
            
        
        
    </body>
</html>
