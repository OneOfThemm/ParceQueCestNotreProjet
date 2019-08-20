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
        <style>
            div.tab {
                transform: translateY(6rem);
                border-radius: 3px;
                width: 700px;
                height: 600px;
                padding-top: 5rem !important;
                padding: 0 2rem;
                background: rgba(0,0,0,0.75);
                margin: auto;
                position: center;


            }
            .modal.desac {
                position: absolute;
                top:10px;
                right: 1000px;
                bottom: 500px;
                left: 0;
                z-index: 10040;
                overflow: auto;
                overflow-y: auto;
            }
        </style>
        <script>
            function verifMdp() {
                var mdp1 = document.getElementById("mdp1").value;
                var mdp2 = document.getElementById("mdp2").value;

                if (mdp1 !== mdp2) {
                    document.querySelector('#alertmdp').innerHTML = 'Les deux mots de passe doivent être identiques.';
                    document.querySelector("#mdp1").style = "color : red !important";
                    document.querySelector("#mdp2").style = "color : red !important";
                    return false;
                } else {
                    return true;
                }
            }

        </script>


    </head>
    <nav class="navbar navbar-dark bg-dark">
        <h2 style="color:whitesmoke" class="col-sm-4">Bonjour ${adminn.prenom}</h2>
        <button type="button" class="btn btn-raised btn-danger" onclick="location.href = 'deconnexionadmin'">Déconnexion</button>
    </nav>

    <body>
        <div class="view" style="background-image: url('http://zone.wallpaper.free.fr/galleries/Animaux/Divers/Caribous_1600x1200.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center; height: 100%">
            <br><br><br>
            <div class="float-md-right " style="margin-right :200px"> <img src="Image/Logo.png" width="70" alt=""/></div>
            <div class="float-md-left" style="margin-left :200px"> <img src="Image/Logo.png" width="70" alt=""/></div>
            <div class="card border-primary mb-3 container ">
                <div class="card-body" style="opacity: 0.9">

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
                                    <th>Modifier</th>
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
                                        <td> <button class="btn"><i class="fa fa-close"data-toggle="modal" onclick="recup(${conseiller.id})" data-target="#desactiver"></i></button> </td>
                                        <td> <button class="btn"><i class="fa fa-address-card-o"data-toggle="modal" onclick="recupCons(${conseiller.id}, '${conseiller.prenom}', '${conseiller.nom}', '${conseiller.login_conseiller}', '${conseiller.email}', '${conseiller.tel}')" data-target="#modifier" ></i></button> </td>
                                    </tr>

                                </c:forEach>
                            </tbody>
                        </table>   
                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#addModal">Ajouter un conseiller</button> 
                        <br>        

                        <p class="text-success">${createOk}</p>            
                        <% HomeServletAdmin.msgCreateCOk = "";%>            
                        <br>

                    </div>  
                </div>  
            </div>  

            <br>
            <div class="card border-primary mb-3 container ">
                <div class="card-body">
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
                                    <th>Modifier</th>
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
                                <form method="GET" action="activerconseiller">
                                    <input type="hidden" value="${conseiller.id}" name="conseillerId">
                                    <td> <button type="submit" class="btn" ><i class="fa fa-plus"></i></button> </td>
                                    <td> <button class="btn"><i class="fa fa-address-card-o"></i></button> </td>
                                </form>

                                </tr>

                            </c:forEach>
                            </tbody>
                        </table>   
                        <br>

                        <br>
                    </div>  
                </div> 
            </div> 
            <hr>
            <br>
            <div class="float-md-right " style="margin-right :200px"> <img src="Image/Logo.png" width="70" alt=""/></div>
            <div class="float-md-left" style="margin-left :200px"> <img src="Image/Logo.png" width="70" alt=""/></div>
            <div class="card border-primary mb-3 container ">
                <div class="card-body">
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
                </div>
            </div>
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

        <div id="desactiver"class="modal desac" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Désactiver le conseiller</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="desactiverconseiller" method="GET">
                        <div class="modal-body">
                            <p>Êtes-vous sûr de vouloir désactiver ce conseiller?</p>
                        </div>
                        <div class="modal-footer">
                            <input type="hidden" name="test" id="test" value="" />
                            <button type="submit" class="btn btn-raised btn-danger">Désactiver le conseiller</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Abandonner</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <div class="modal fade" id="modifier" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title " id="addModalLabel">Modifier le conseiller :</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="adminmodifcons" method="POST" >
                            <input type="hidden" id="idCons" value="" name="idcons">
                            <div class="form-group">
                                <input type="text" value="" id="loginCons" name="login" placeholder="Login" required class="form-control">
                            </div>

                            <div class="form-group">
                                <input type="text"  value="" name="nom" id="nomCons" placeholder="Nom" required class="form-control">
                            </div>

                            <div class="form-group">
                                <input type="text" value="" name="prenom" id="prenomCons" placeholder="Prénom" required class="form-control">
                            </div>

                            <div class="form-group">
                                <input type="email"  name="email" id="emailCons" placeholder="Email" required class="form-control">
                            </div>

                            <div class="form-group">
                                <input type="text" name="tel" id="telCons" placeholder="Téléphone" required class="form-control">
                            </div>

                            <div class="form-group">
                                <input id="mdp11" type="password" name ="mdp1"  placeholder="Mot de passe" required class="form-control">
                            </div>
                            <div class="form-group">
                                <input id="mdp22" type="password" name ="mdp2"  placeholder="Répéter le mot de passe" required class="form-control">
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

        <script>

            function recup(value) {
                document.getElementById("test").value = value;
            }


            function recupCons(valid, valprenom, valnom, vallogin, valemail, valtel) {
                document.getElementById("idCons").value = valid;
                document.getElementById("prenomCons").value = valprenom;
                document.getElementById("nomCons").value = valnom;
                document.getElementById("loginCons").value = vallogin;
                document.getElementById("emailCons").value = valemail;
                document.getElementById("telCons").value = valtel;
            }


        </script>
    </body>
</html>
