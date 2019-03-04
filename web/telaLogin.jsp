<%-- 
    Document   : telaLogin
    Created on : 01/03/2019, 21:11:15
    Author     : Amanda Miranda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <link rel="stylesheet" type="text/css" href="css/styleLogin.css">

        <script  type="text/javascript">
            function validaForm() {
                if (document.cad.email.value === "") {
                    alert("O campo nome é obrigatório!");
                }
                 if(document.cad.senha.value === ""){
                    alert("O campo senha é obrigatório!");
                }
            }
            

        </script>

    </head>
    <body>

        <div class="modal-dialog text-center">
            <div class="col-sm-9 main-section">
                <div class="modal-content">
                    <div class="col-12 user-img">
                        <img src="imagens/face.png">
                    </div>

                    <div class="cal-12 form-input">
                        <form name="cad" action="log" method="post">
                            <div class="form-group">
                                <input type="email" name="email" class="form-control" placeholder="Digite seu E-mail"> 
                            </div>
                            <div class="form-group">
                                <input type="password" name="senha" class="form-control" placeholder="Digite sua Senha"> 
                            </div>
                            <button type="submit" class="btn btn-success">Entrar</button> 
                        </form>
                    </div>
                    <div class="col-12 forgot">
                        <a href="#"h>Esqueceu a senha?</a>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
