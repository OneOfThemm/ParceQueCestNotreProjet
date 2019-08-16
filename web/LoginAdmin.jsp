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
    </head>
    <body>
        <br><br><br>
        <div class="container text-center">
            <h1 style ="color: #0099CC">CaribouGénéral <br> </h1>
        </div>
        <div class="container">
            <hr>
        </div>
        <div class="container">
            <h2 class="text-center" style="color: #33b5e5">Connexion Administrateur</h2>
            <br><br>
            <div style="margin: auto; width :40%">
                <form action="connexionadmin" method="POST" >
                    <div class="form-group">
                        <input type="text" value="${param['login']}" name="login" placeholder="Login" <%--required--%> class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="password" name ="mdp" placeholder="Mot de passe" <%--required--%> class="form-control">
                    </div>
                    <div class="text-center">
                        <button type ="submit" class="btn btn-outline-primary btn-lg">Valider</button>                     
                    </div>
                </form>
                <p class="text-danger">${msg}</p>
            </div>
        </div>
</html>
