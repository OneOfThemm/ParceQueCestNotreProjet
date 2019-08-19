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
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
        integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>page conseiller</title>
  
    </head>
    <body>
<script>
            $(function () {
                    $("#creationprofil").dialog({
                          autoOpen: false,
                          show: {
                              effect: "fade",
                              duration: 1000
                          },
                          hide: {
                              effect: "fade",
                              duration: 1000
                          }
                    }); 
                    
                    $("#popupCreaClient").on("click", function () {
                    $("#creationprofil").dialog("open");
                    });

              });
</script>

        
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
                
                <button button id="popupCreaClient" type="button" class="btn btn-info"> Ajouter un client</button>
            </div>  
            <div class="btn-group float-right" id='buttonsVoir'>
                <button button type="button" class="btn btn-info" >Voir un client</button>
                    <%-- creer un compte, modifier compte(solde,plafond,decouvert), bloquer la carte du compte, voir l'historique du client--%>
                <button button type="button" class="btn btn-outline-info" onclick="location.href='allClients'" >Voir tous mes clients</button>
            </div>        
        </div>

        
        <div id="creationprofil" title="Creation Profil Client">
                <form action='AjoutClientServlet' method="POST">
             
                <p>Numéro de Client</p>
                 <p><input type="text" placeholder="numClient"
                           required class="form-control text-center" name="numClient"></p>          
                 <p>Nom du Client</p>
                 <p><input type="text" placeholder="client.nom"
                            required class="form-control text-center" name="nom"></p>
                <p>Prénom</p>
                <p><input type="text" placeholder="client.prenom"
                           required class="form-control text-center" name="prenom"> </p>
                <br>
                <p>Téléphone</p>
               <p><input type="text" placeholder="client.tel"
                           required class="form-control text-center" name="tel"></p>
               <p>E-mail</p>
                <p><input type="text" placeholder="client.email"
                           required class="form-control text-center" name="email"></p>
                <p>Mot de passe</p>
                 <p><input type="text" placeholder="client.mdp"
                           required class="form-control text-center" name="mdp"></p>
                 <button id="validermodif" class="float-left" type="submit"> Valider</button>
                </form>
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
                        <c:forEach items="${clientsD}" var="clientsD"> 
                                    <tr>
                                        <td scopa="row">${clientsD.nom}</td>
                                        <td scopa="row">${clientsD.prenom}</td>
                                        <td scopa="row">${clientsD.tel}</td>
                                        <td scopa="row">${clientsD.numCompte}</td>
                                        <td scopa="row">${clientsD.solde}</td>
                                        <td scopa="row">${clientsD.decouvert}</td>
                                    </tr>
                        </c:forEach>
                    </tbody>
                    
                    </table>                        
                </div>
            </div>   
        </div>        

                
        
                
            
       
            
            
            
        
        
    </body>
</html>
