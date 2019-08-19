<%-- 
    Document   : homeAdmin
    Created on : 16 août 2019, 11:18:14
    Author     : esic
--%>
<%@page import="fr.solutec.servlet.HomeServletAdmin"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fr.solutec.bean.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
        <link  rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <title>JSP Page</title>
        
        <script>
            function verifMdp(){
                var mdp1 = document.getElementById("mdp1").value;
                var mdp2 = document.getElementById("mdp2").value;
                
                if (mdp1!== mdp2){
                    document.querySelector('#alertmdp').innerHTML= 'Les deux mots de passe doivent être identiques.';
                    document.querySelector("#mdp1").style = "color : red !important";
                    document.querySelector("#mdp2").style = "color : red !important";
                    return false;
                }
                else{
                    return true;
                }
            }
            
        </script>
        
        
    </head>
    <nav class="navbar navbar-dark bg-dark">
        <p style="color:whitesmoke">Bonjour ${adminn.prenom}</p>
        <button type="button" class="btn btn-raised btn-danger" onclick="location.href = 'deconnexionadmin'">Déconnexion</button>

    </nav>

    <body>
        <br><br><br>
        <div class="float-md-right " style="margin-right :200px"> <img src="Image/Logo.png" width="70" alt=""/></div>
        <div class="float-md-left" style="margin-left :200px"> <img src="Image/Logo.png" width="70" alt=""/></div>
        <div class="container text-center">
            <h2>Liste des conseillers actifs</h2>         
            <table id="ConsTable" class="table table-striped table-bordered"> 
                <thead class="thead-dark sticky">
                    <tr>
                        <th>#</th>
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Login</th>
                        <th>Email</th>
                        <th>Téléphone</th>
                        <th>Désactiver</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listconsActifs}" var="conseiller">
                        <tr>

                            <td>${conseiller.id}</td>
                            <td>${conseiller.prenom}</td>
                            <td>${conseiller.nom}</td>
                            <td>${conseiller.login_conseiller}</td>
                            <td>${conseiller.email}</td>
                            <td>${conseiller.tel}</td>
                            <td> <button class="btn"><i class="fa fa-close"></i></button> </td>
                        </tr>

                    </c:forEach>
                </tbody>
            </table>   
            <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#addModal">Ajouter un conseiller</button> 
            <br>        
            
            <p class="text-success">${createOk}</p>            
            <% HomeServletAdmin.msgCreateCOk = ""; %>            
            <br>
            <hr>
        </div>  

        <br>
        <div class="container text-center">
            <h2>Liste des conseillers inactivés</h2>         
            <table id="ConsTable" class="table table-striped table-bordered"> 
                <thead class="thead-dark sticky">
                    <tr>
                        <th>#</th>
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Login</th>
                        <th>Email</th>
                        <th>Téléphone</th>
                        <th>Activer</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listconsInactifs}" var="conseiller">
                        <tr>

                            <td>${conseiller.id}</td>
                            <td>${conseiller.prenom}</td>
                            <td>${conseiller.nom}</td>
                            <td>${conseiller.login_conseiller}</td>
                            <td>${conseiller.email}</td>
                            <td>${conseiller.tel}</td>
                            <td> <button class="btn"><i class="fa fa-plus"></i></button> </td>
                        </tr>

                    </c:forEach>
                </tbody>
            </table>   
            <br>

            <br>
        </div>  
        <hr>
        <br>
        <div class="float-md-right " style="margin-right :200px"> <img src="Image/Logo.png" width="70" alt=""/></div>
        <div class="float-md-left" style="margin-left :200px"> <img src="Image/Logo.png" width="70" alt=""/></div>
        <div class="container text-center">
            <h2>Liste des administrateurs</h2>         
            <table id="AdminTable" class="table table-striped table-bordered"> 
                <thead class="thead-dark sticky">
                    <tr>
                        <th>#</th>
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Login</th>
                        <th>Email</th>
                        <th>Téléphone</th>         
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listadmin}" var="ad">
                        <tr>
                            <td>${ad.id}</td>
                            <td>${ad.prenom}</td>
                            <td>${ad.nom}</td>
                            <td>${ad.loginAdmin}</td>
                            <td>${ad.email}</td>
                            <td>${ad.tel}</td>

                        </tr>

                    </c:forEach>
                </tbody>
            </table>   
        </div>

        <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title " id="addModalLabel">Ajouter un conseiller : </h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="ajoutconseiller" method="POST" >
                            <div class="form-group">
                                <input type="text"  name="login" placeholder="Login" required class="form-control">
                            </div>

                            <div class="form-group">
                                <input type="text"  name="nom" placeholder="Nom" required class="form-control">
                            </div>

                            <div class="form-group">
                                <input type="text"  name="prenom" placeholder="Prénom" required class="form-control">
                            </div>

                            <div class="form-group">
                                <input type="email"  name="email" placeholder="Email" required class="form-control">
                            </div>

                            <div class="form-group">
                                <input type="text" name="tel" placeholder="Téléphone" required class="form-control">
                            </div>

                            <div class="form-group">
                                <input id="mdp1" type="password" name ="mdp1"  placeholder="Mot de passe" required class="form-control">
                            </div>
                            <div class="form-group">
                                <input id="mdp2" type="password" name ="mdp2"  placeholder="Répéter le mot de passe" required class="form-control">
                            </div>

                            <div class="text-center">
                                <button type ="submit" class="btn btn-primary" onclick="return verifMdp()">Ajouter le conseiller</button>   
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Abandonner</button>
                                <br>
                                <p id="alertmdp" class="text-danger">${msg}</p>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>
