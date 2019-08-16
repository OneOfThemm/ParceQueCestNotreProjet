<%-- 
    Document   : homeclientjsp
    Created on : 16 août 2019, 10:58:00
    Author     : ESIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Client</title>
    </head>
    <body>
        <div class="container border border-primary">
            <br>
            <div class="row">
                <div >
                    <img class="col-sm-2" src="../Image/Logo Caribou.png" alt=""/>
                </div>
                <div class="col-sm-8">
                    <h1>Bienvenu ${client.nom} ${client.prenom}</h1>
                </div>
                <div class="col-sm-2">
                    <button onclick="location.href = 'deco'"> Deconnexion </button>
                </div>
                <div class="col-sm-10">
                    <h4 > votre dernière connexion était le ${client.dateConnexion} </h4>    
                </div>
            </div>
               
                <br>
                
        </div>
                
    </body>
</html>
