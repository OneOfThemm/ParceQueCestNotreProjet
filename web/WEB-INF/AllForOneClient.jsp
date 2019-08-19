<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
        integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
        
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
            <h4 class='text-center' > Tous les compte de mon client </h4>
            
            <div class="btn-group float-right" id='buttonsRight'>
                <button type="button" class="btn " onclick="location.href = 'RetourHomeConseillerServlet'">Retour</button>
                <button type="button" class="btn " onclick="location.href = 'DeconnexionConseillerServlet'">Déconnexion</button>
            </div>
            
        </div>
        <br> <br><br> 
        <div class='float-md-left'>            
            <button type="button" id='popuAjoutCompt' class="btn btn-info"> + </button>
        </div>
        
        
        
        <div class='container' >
            <table class="table table-striped">                            
                <thead class="thead table-primary">
                    <tr>
                        <th> idCompte</th>
                        <th> solde</th>
                        <th> plafond </th>
                        <th> decouvert </th>
                        <th> numCompte </th>
                        <th> client_idUser </th>
                                                     
                    </tr>
                </thead>
                    
                <tbody>
                    <c:forEach items="${ListCompt}" var="compt"> 
                        <tr>
                            
                            <td scopa="row">${compt.idCompte}</td> 
                            <td scopa="row"> ${compt.solde}</td>
                                
                            <td scopa="row">${compt.plafond}</td>
                            <td scopa="row">${compt.decouvert}</td>
                            <td scopa="row">${compt.numCompte}</td>
                            <td scopa="row">${compt.client_idUser}</td>

                        </tr>
                    </c:forEach>
                </tbody>                    
            </table>  
        </div>
        
    </body>
</html>
