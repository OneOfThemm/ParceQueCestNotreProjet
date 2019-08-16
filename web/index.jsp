<%-- 
    Document   : index
    Created on : 16 août 2019, 11:00:26
    Author     : ESIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div>Login Client</div>
        
        <div>
            <br>
        <h4>Login</h4>
        <div>
            <form action="connexionClient" method="POST">
                <div>
                    <input type="text" placeholder="Numéro Client" required class="form-control" name="numClient">
                </div>
                <div class="form-group">
                        <input type="password"
                               placeholder="password" required class="form-control" name="mdp">
                    </div>
                    <button type="submit">Connexion</button>
                   
            </form>
            
            
          
        </div>
    </div>
    </body>
</html>
