<%-- 
    Document   : inicio
    Created on : 19/02/2019, 19:44:53
    Author     : Amanda Miranda
--%>

<%@page import="br.edu.fafic.dao.PessoaDAO"%>
<%@page import="br.edu.fafic.model.Pessoa"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>Index</title>

    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#">Sistema Acadêmico</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Cadastros <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="CadastroDiretor.jsp" target="_blank">Fazer Cadastro de Usuário</a></li>
                                <li><a href="CadastroDiretor.jsp" target="_blank">Lista de Usuários</a></li>
                                
                            </ul>
                        </li>
                        <li><a href="#">Portal Acadêmico</a></li>
                        <li><a href="#">Fale Conosco</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="index.jsp"><span class="glyphicon glyphicon-user"></span> Login</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sair</a></li>
                    </ul>
                </div>
            </div>
        </nav>

      


    </body>
</html>
