<%-- 
    Document   : homeclientjsp
    Created on : 16 août 2019, 10:58:00
    Author     : ESIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
        integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
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
        <script>
            $(function () {
                $("#profil").dialog({
                    autoOpen: false,
                    show: {
                        effect: "fade",
                        duration: 1000
                    },
                    hide: {
                        effect: "fade",
                        duration: 1000
                    }
                });

                $("#popupprofil").on("click", function () {
                    $("#profil").dialog("open");
                });
                
                $("#modifprofil").dialog({
                    autoOpen: false,
                    show: {
                        effect: "fade",
                        duration: 1000
                    },
                    hide: {
                        effect: "fade",
                        duration: 1000
                    }
                });

                $("#popupmodifprofil").on("click", function () {
                    $("#modifprofil").dialog("open");
                });
            });
        </script>

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
                    <button class="float-left" onclick="location.href = 'deco'"> Deconnexion </button>
                    <button class="float-left" onclick="location.href = 'MessagesClient'"> Messages </button>
                    <button id="popupprofil" class="float-left"> Profil </button>
                </div>
                <div class="col-sm-9">

                </div>
                <div class="col-sm-3">

                    <p> votre dernière connexion était le ${client.dateConnexion} </p>    
                </div>
            </div>
                <div id="profil" class="modal-fade" title="Votre Profil Client">
                <p>${client.nom} ${client.prenom}</p>
                <br>
                <p>Numéro Client : ${client.numClient}</p>
                <p>E-mail : ${client.email}</p>
                <p>Téléphone : ${client.tel}</p>
                <button id="popupmodifprofil" class="float-left"> Modifier votre profil </button>
            </div>
            <div id="modifprofil" title="Modification de Votre Profil Client">
                <h4>N° ${client.numClient}</h4>
                <p><input type="text" value="${param['nom']}"
                           placeholder="${client.nom}" required class="form-control text-center" name="nom"></p>
                <p><input type="text" value="${param['prenom']}"
                           placeholder="${client.prenom}" required class="form-control text-center" name="prenom"> </p>
                <br>
               <p><input type="text" value="${param['tel']}"
                           placeholder="${client.tel}" required class="form-control text-center" name="tel"></p>
                <p><input type="text" value="${param['email']}"
                           placeholder="${client.email}" required class="form-control text-center" name="email"></p>
                 <p><input type="password" value="${param['mdp']}"
                           placeholder="${client.mdp}" required class="form-control text-center" name="mdp"></p>
                <button id="validermodif" class="float-left"> Valider les modifications</button>
            </div>
            <br>

        </div>

    </body>
</html>
