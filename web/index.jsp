<%-- 
    Document   : index
    Created on : 16 août 2019, 11:00:26
    Author     : ESIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">

        <style>
            body, html {
                height: 100%;
            }
            .bg {
                /* The image used */
                background-image: url("https://mdbootstrap.com/img/Photos/Horizontal/Nature/fullpage/img(20).jpg");

                /* Full height */
                height: 100%;

                /* Center and scale the image nicely */
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }
            .card {
                margin: 0 auto; /* Added */
                float: none; /* Added */
                margin-bottom: 10px; /* Added */
            }
            form.login {
                transform: translateY(6rem);
                border-radius: 3px;
                width: 700px;
                height: 650px;
                padding-top: 5rem !important;
                padding: 0 2rem;
                background: rgba(0,0,0,0.75);
                margin: auto;
                position: center;
            }


        </style>
    </head>
    <body>

        <div class="view" style="background-image: url('https://davidsuzuki.org/wp-content/uploads/2018/05/caribou-winter.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center; height: 100%">

            <form class="login" action="connexionClient" method="POST">
                <div class="container text-center">
                    <h1 style ="color: #33b5e5; opacity: 1">Caribou Général, la banque de tous vos désirs. <br> </h1>
                </div>
                <div class="container text-center">
                    <hr>
                    <br>
                    <img src="Image/Logo.png" width="30" alt=""/>
                </div>

                <div class="container">
                    <br>
                    <h2 class="text-center" style="color: #33b5e5">Bienvenue sur votre site de connexion client.</h2>
                    <br><br>
                    <div style="margin: auto; width :40%">

                        <div class="form-group">
                            <input type="text" value="${param['numClient']}" name="numClient" placeholder="Numéro Client" <%--required--%> class="form-control" style="color: whitesmoke">
                        </div>
                        <div class="form-group">
                            <input type="password" name ="mdp" placeholder="Mot de passe" <%--required--%> class="form-control" style="color: whitesmoke">
                        </div>
                        <div class="text-center">
                            <button type ="submit" class="btn btn-primary btn-lg" style="color: #33b5e5">Valider</button>                     
                        </div>

                        <br><br>
                        <div class ="text-center">
                            <p class="text-danger">${msg}</p>
                        </div>
                    </div>            
                </div>
            </form>




        </div>      

</html>

<!-- <html>
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
</html> -->
