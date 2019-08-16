<%-- 
    Document   : LoginConseiller
    Created on : 16 août 2019, 10:51:36
    Author     : esic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
   
    </head>
    <body>
            <div class="container">
        <h1 class='text-center' style='color : #FF1493'>Login</h1>
        <div style="margin:auto; width: 50%">
            <form action ="ConnexionConseillerServlet" method="POST">
                <div class = "form-group">
                    <input type="text" value="${param['login']}" name='login'
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
            
            
            <p class='text-danger'>${msg}</p>
        </div>
        </div>
    </body>
</html>
