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

        <style>
            html
            {
                height: 100%;
            }
            .txt{
                font-size: 50px; 
            }
            .fond{
                height: 650px;
                width: 1250px;
            }

            body
            {
                background-color:lightsteelblue !important;
                height:100%;
                margin:0;
                padding:0;
                
            }
            #main{
            
                    color: black;
                    margin: auto;
                    min-height:100%;
                    width: 1024px;
                    background-color: #f1f0f0 !important;
                
            }
        </style>
    </head>
    <body>
        
       
        
        <div id="main" class="container border border-primary">
            <br>
            <div class="row">
                <div class="col-sm-2"  >
                    <img src="../Image/Logo Caribou.png" alt=""/>
                </div>
                <div class="col-sm-8">
                    <h1>Bienvenu ${client.nom} ${client.prenom}</h1>
                </div>
                <div class="col-sm-2">
                    <button onclick="location.href = 'deco'"> Deconnexion </button>
                    <button onclick="location.href = 'MessagesClient'"> Messages </button>
                </div>
                <div class="col-sm-9">
                    
                </div>
                <div class="col-sm-3">
                   
                    <p> votre dernière connexion était le ${client.dateConnexion} </p>    
                </div>
            </div>

            <br>

        </div>

    </body>
</html>
