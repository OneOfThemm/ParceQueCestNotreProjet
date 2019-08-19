<%-- 
    Document   : LoginAdmin
    Created on : 16 août 2019, 11:44:38
    Author     : esic
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
        <style>
            body, html {
                height: 100%;
            }
            .bg {
                /* The image used */
                background-image: url("https://mdbootstrap.com/img/Photos/Horizontal/Nature/full page/img(20).jpg");

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

        <div class="view" style="background-image: url('https://media2.ledevoir.com/images_galerie/nwd_509728_366024/image.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center; height: 100%">

            <form class="login" action="connexionadmin" method="POST">
                <div class="container text-center">
                    <h1 style ="color: #0099CC; opacity: 1">CaribouGénéral <br> </h1>
                </div>
                <div class="container text-center">
                    <hr>
                    <br>
                    <img src="Image/Logo.png" width="30" alt=""/>
                </div>

                <div class="container">
                    <br>
                    <h2 class="text-center" style="color: #33b5e5">Connexion Administrateur</h2>
                    <br><br>
                    <div style="margin: auto; width :40%">

                        <div class="form-group">
                            <input type="text" value="${param['login']}" name="login" placeholder="Login" <%--required--%> class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="password" name ="mdp" placeholder="Mot de passe" <%--required--%> class="form-control">
                        </div>
                        <div class="text-center">
                            <button type ="submit" class="btn btn-outline-primary btn-block" >Valider</button>                     
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
