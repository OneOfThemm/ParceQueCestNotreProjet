<%-- 
    Document   : index
    Created on : 16 août 2019, 11:00:26
    Author     : ESIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
<link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br> <br> <br> <br> <br>
        
        <img src="../src/java/Image/Logo.png"/>
        
        <div class="container border border-primary">
            <br>
        <h4 class="text-center">Login</h4>
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
    </body>
</html>
