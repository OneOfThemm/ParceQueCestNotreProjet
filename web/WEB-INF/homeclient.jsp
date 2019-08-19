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
            body, html {
                height: 100%;
            }
            .txt{
                font-size: 50px; 
            }
            .fond{
                height: 650px;
                width: 1250px;
            }


            #main{

                color: black;
                margin: auto;
                min-height:100%;
                width: 1024px;

                background: rgba(0,0,0,0.27);
            }
            .ui-dialog, .ui-dialog-content {
                border:10px solid orange;   /** change css properties to match your theme*/
                background-color: rgba(125,240,221,0.27) !important;
                color: whitesmoke;
            }
            .buttondial{
                display: inline-block;
                border-radius: 4px;
                background-color:darkcyan ;
                border: none;
                color: whitesmoke;
                text-align: center;
                font-size: 28px;
                padding: 20px;
                width: 200px;
                transition: all 0.5s;
                cursor: pointer;
                margin: 5px;
                width: 100%
            }
            .buttondial span {
                cursor: pointer;
                display: inline-block;
                position: relative;
                transition: 0.5s;
            }
            .buttondial span:after {
                content: '\00bb';
                position: absolute;
                opacity: 0;
                top: 0;
                right: -20px;
                transition: 0.5s;
            }
            .buttondial:hover span {
                padding-right: 25px;
            }

            .buttondial:hover span:after {
                opacity: 1;
                right: 0;
            }
            .buttonmenu{
                display: inline-block;
                border-radius: 4px;
                background-color:#33b5e5 ;
                border: none;
                color: whitesmoke;
                text-align: center;
                font-size: 20px;
                padding: 10px;
                width: 160px;
                transition: all 0.5s;
                cursor: pointer;
                margin: 6px;




            }
            .buttonmenu span {
                cursor: pointer;
                display: inline-block;
                position: relative;
                transition: 0.5s;
            }
            .buttonmenu span:after {
                content: '\00bb';
                position: absolute;
                opacity: 0;
                top: 0;
                right: -20px;
                transition: 0.5s;
            }
            .buttonmenu:hover span {
                padding-right: 25px;
            }

            .buttonmenu:hover span:after {
                opacity: 1;
                right: 0;
            }
            #compteliste.ui-dialog{
                width: 100% !important;
            }
            #compteliste.ui-dialog-content{
                width: 100% !important;
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
                    $("#profil").dialog("close");
                });

                $("#compteclient").dialog({
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

                $("#popupcompte").on("click", function () {
                    $("#compteclient").dialog("open");

                });

            })


        </script>
        <div class="view" style="background-image: url('https://www.rcinet.ca/regard-sur-arctique/wp-content/uploads/sites/31/2018/01/caribou-riviere-george-labrador.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center; height: 100%">
            <div id="main" class="container border" style="border-color: black">


                <div class="row">

                    <div class="col-sm-8">
                        <h1 style="color: aliceblue; ; font-family: system-ui; margin-top: 50px">Bienvenu sur votre espace personnel</h1>
                    </div>
                    <div class="col-sm-4">
                        <div class="text-center" style=" margin-top: 50px"> <img src="Image/Logo.png" width="45" alt=""/></div>
                    </div>
                    <div class="col-sm-5">
                        <h1 style="color: whitesmoke; font-family: system-ui; margin-top:-25px">${client.nom} ${client.prenom}</h1>
                    </div>
                    <div class="col-sm-3">
                        <p style="color: whitesmoke; font-family: system-ui; margin-top:-20px"> Votre dernière connexion était le ${client.dateConnexion}. </p>    
                    </div>
                    <div class="col-sm-4">

                    </div>
                    <div class="col-sm-12 text-center">

                        <button id="popupprofil" class="buttonmenu" style="color: aliceblue"> <span>Profil </button>
                        <button class="buttonmenu" style="color: aliceblue" onclick="location.href = 'MessagesClient'"> <span>Messages </button>
                        <button id="popupcompte" class="buttonmenu" style="color: aliceblue"> <span>Comptes </button>
                        <button id="popupprofil" class="buttonmenu" style="color: aliceblue"> <span>Dépenses </button>
                        <button class="buttonmenu" onclick="location.href = 'deco'"> <span>Deconnexion </button>

                    </div>


                </div>
                <div id="profil" class="modal-fade" title="Votre Profil Client">
                    <p>${client.nom} ${client.prenom}</p>
                    <br>
                    <p>Numéro Client : ${client.numClient}</p>
                    <p>E-mail : ${client.email}</p>
                    <p>Téléphone : ${client.tel}</p>
                    <button id="popupmodifprofil" class="float-left buttondial"><span> Modifier votre profil </button>
                </div>
                <div id="modifprofil" title="Modification de Votre Profil Client">
                    <form action="ModificationProfilClientServlet" method="POST">
                        <h4>N° ${client.numClient}</h4>
                        <p>Nom</p>
                        <p><input type="text" value="${client.nom}"
                                  required class="form-control text-center" name="nom" style="color: whitesmoke"></p>
                        <p>Prénom</p>
                        <p><input type="text" value="${client.prenom}"
                                  required class="form-control text-center" name="prenom" style="color: whitesmoke"> </p>
                        <br>
                        <p>Téléphone</p>
                        <p><input type="text" value="${client.tel}"
                                  required class="form-control text-center" name="tel" style="color: whitesmoke"></p>
                        <p>E-mail</p>
                        <p><input type="text" value="${client.email}"
                                  required class="form-control text-center" name="email" style="color: whitesmoke"></p>
                        <p>Mot de passe</p>
                        <p><input type="text" value="${client.mdp}"
                                  required class="form-control text-center" name="mdp" style="color: whitesmoke"></p>
                        <button id="validermodif" class="buttondial" type="submit" ><span>Valider les modifications</button>
                    </form>
                </div>

                


                <div id="compteclient" class="modal-fade" title="Vos Comptes">                  
                    <table id="tablecompte" class="table ">
                        <thead class="thead thead-dark">
                            <tr>
                                <th scope="row">Numéro de compte</th>
                                <th>Solde</th>
                                <th>Plafond</th>
                                <th>Découvert</th>

                            </tr>

                        </thead>
                        <tbody>

                        <c:forEach items="${comptes}" var="Compte">
                            <tr>
                                <td>${Compte.idCompte}</td>
                                <td>${Compte.solde}</td>
                                <td>${Compte.plafond}</td>
                                <td>${Compte.decouvert}</td>
                            </tr>
                        </c:forEach>

                        </tbody>

                    </table>
                </div>
                <p class="text-success">${msgmodif}</p>
                <br>

            </div>
        </div>
    </body>
</html>
