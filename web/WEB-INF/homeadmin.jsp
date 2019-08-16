<%-- 
    Document   : homeAdmin
    Created on : 16 août 2019, 11:18:14
    Author     : esic
--%>
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
        <title>JSP Page</title>
    </head>
    <nav class="navbar navbar-dark bg-dark">
        <p style="color:whitesmoke">Bonjour ${adminn.prenom}</p>    
        <button type="button" class="btn btn-raised btn-danger" onclick="location.href = 'deconnexionadmin'">Déconnexion</button>

    </nav>

    <body>
        <br><br><br>
        <div class="container text-center">
            <h2>Liste des conseillers</h2>         
            <table id="userTable" class="table table-striped table-bordered"> 
                <thead class="thead-dark sticky">
                    <tr>
                        <th>#</th>
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Login</th>
                        <th>Email</th>
                        <th>Téléphone</th>
                        <th>Supprimer</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listcons}" var="cn">
                        <tr>
                            <td>${cn.id}</td>
                            <td>${cn.prenom}</td>
                            <td>${cn.nom}</td>
                            <td>${cn.login_conseiller}</td>
                            <td>${cn.email}</td>
                            <td>${cn.tel}</td>
                            <td> <button class="btn"><i class="fa fa-trash"></i></button> </td>
                        </tr>

                    </c:forEach>
                </tbody>
            </table>   
            <br>
            <br>
        </div>   
        <br>
        <hr>
        <br>

        <div class="container text-center">
            <h2>Liste des administrateurs</h2>         
            <table id="userTable" class="table table-striped table-bordered"> 
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



    </body>
</html>
