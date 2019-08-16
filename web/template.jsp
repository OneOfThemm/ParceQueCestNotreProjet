<%-- 
    Document   : Template
    Created on : 16 août 2019, 15:04:54
    Author     : ESIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">

        <title>TEMPLATE</title>
        <style>
            .txt{
                font-size: 50px; 
            }
            .fond{
                height: 650px;
                width: 1250px;
            }
        </style>
    </head>
    <body>

        <div style="margin: auto; width: 75%">
            <div class="row align-items-center">
                <div style="background-color: lightsteelblue" class="col-sm-2">

                    <p class="txt">Bonjour NOM</p>

                </div>
                <div class="text-center col-sm-6">
                    <br> <br>
                    <img src="Image/Logo Caribou.png" alt=""/>

                </div>
                <div class="text-center col-sm-2">
                    <br>
                    <br>
                    <button class="btn btn-center" onclick="location.href = 'deco'"> Profil </button> 
                </div>
                <div class="col-sm-2">
                    <br>
                    <br>
                    <button class="btn btn-center" onclick="location.href = 'deco'"> Deconnexion </button>
                </div>

                <div style="background-color: lightsteelblue" class="col-sm-2">

                    <p class="txt">PRENOM.</p>

                </div>
                <div style="background-color: lightsteelblue" class="col-sm-6"> <br> <br><br></div>
                <div style="background-color: lightsteelblue" class="text-center col-sm-4">

                    <h5 > Votre dernière connexion était le DATECONNEXION </h5>    

                </div>
                <div style="background-color: lightsteelblue" class="col-sm-2">
                    <button class="btn btn-center" onclick="location.href = 'deco'"> Soldes </button>
                    <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
                     <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
                    

                </div>
                <div class="text-center col-sm-10">
                    <img class="fond" src="Image/Caribou.jpg" alt=""/>
                </div>
            </div>
        </div>
    </body>
</html>
