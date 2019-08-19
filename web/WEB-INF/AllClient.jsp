<%-- 
    Document   : AllClient
    Created on : 19 août 2019, 10:00:30
    Author     : esic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>page conseiller Voir all clients</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
       
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"> 
        <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script> 
    </head>
    <body>
        <div id='Bonjour' style='background:#33b5e5; color: white'  >        
            <h1 class='text-center'> Bonjour ${conseiller.prenom} ${conseiller.nom} </h1> 
            <h4 class='text-center' > Voici la liste de tous vos clients </h4>
        </div>
         
        <div class='container' >
            <table class="table table-striped">                            
                <thead class="thead table-primary">
                    <tr>
                        <th> numClient </th>
                        <th> nom </th>
                        <th> prenom </th>
                        <th> tel </th>
                        <th> email </th>
                        <th> actifuser </th>
                        <th> numCompte </th>
                        <th> plafond </th>
                        <th> Decouvert autorisé </th>
                        <th> Solde </th>
                                                     
                    </tr>
                </thead>
                    
                <tbody>
                    <c:forEach items="${clients}" var="client"> 
                        <tr>
                            
                            <td scopa="row">${client.numClient}</td> 
                            <td scopa="row"> ${client.nom}</td>
                                
                            <td scopa="row">${client.prenom}</td>
                            <td scopa="row">${client.tel}</td>
                            <td scopa="row">${client.email}</td>
                            <td scopa="row">${client.actifuser}</td>
                            <td scopa="row">${client.numCompte}</td>
                            <td scopa="row">${client.plafond}</td>
                            <td scopa="row">${client.decouvert}</td>
                            <td scopa="row">${client.solde}</td>
                        </tr>
                    </c:forEach>
                </tbody>                    
            </table>  
        </div>
        
        
    </body>
</html>
