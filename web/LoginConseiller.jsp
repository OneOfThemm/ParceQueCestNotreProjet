<%-- 
    Document   : LoginConseiller
    Created on : 16 août 2019, 10:51:36
    Author     : esic
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
                color: #0099CC;
            }
            .login{
                color: #33b5e5;
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
            
            
            
        <div class="container border border-primary">
            <br>
            <h4 class="text-center login">Bienvenue sur votre site de connexion Conseiller</h4>
            <div class="container">
                <h1 class='text-center'>loginConseiller</h1>
                <div style="margin:auto; width: 50%">
                    <form action ="ConnexionConseillerServlet" method="POST">
                        <div class = "form-group">
                            <input type="text" value="${param['loginConseiller']}" name='loginConseiller'
                            placeholder="login" 
                            class="form-control">
                        </div>
                        <div class = "form-group">
                                <input name="mdp" type="password"
                                placeholder="password" 
                                class="form-control">
                        </div>
                        <div class='text-center'>
                            <button type="submit" class="btn btn-outline-dark"> Connexion</button>                    
                        </div>
                    </form>
                    <p class="text-danger">${msg}</p>
                </div>
            </div>
            
        </div>    
        <br>
        <div class="text-center">            
            <img src="Image/conseillerLogIn.jpg" alt="" height=320px/>
        </div>
    </body>
</html>
