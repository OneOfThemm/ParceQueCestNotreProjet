<%-- 
    Document   : index
    Created on : 16 août 2019, 11:00:26
    Author     : ESIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            IMG.logo {
                display: block;
                margin-left: auto;
                margin-right: auto }
            .titre{
                color: white;
            }
            .login{
                color: #33b5e5;
            }
            body
            {
                background-color:lightsteelblue !important;
                height:100%;
                margin:0;
                padding:0;
            }
            .main{
            
                    color: black;
                    margin: auto;
                    min-height:100%;
                    width: 1024px;
                    background-color: #f1f0f0 !important;
                
            }
            </style>


        </head>
        <body>
            <br> <br> <br> 
            <div>
                <img class= "logo" src="Image/Logo Caribou.png" alt=""/>
                <br> <br>
                <h2 class="text-center titre">Caribou Général, la banque de tous vos désirs.</h2>
            <br> <br>
        </div>
        <div class="main container border border-primary">
            <br>
            <h4 class="text-center login">Bienvenue sur votre site de connexion client</h4>
            <div>
                <form action="connexionClient" method="POST">
                    <div class="form-group">
                        <input type="text" placeholder="Numéro Client" required class="form-control" name="numClient">
                    </div>
                    <div class="form-group">
                        <input type="password"
                               placeholder="password" required class="form-control" name="mdp">
                    </div>
                    <button class="btn btn-raised btn-outline-primary btn-active btn-block btn-lg" type="submit">Connexion</button>

                </form>



            </div>
            <p class="text-danger">${msg}</p>
        </div>
        <br>
        <div class="text-center">
            <img src="Image/stockbank1.png" alt="" class="rounded rounded-lg"/>
        </div>
    </body>
</html>
