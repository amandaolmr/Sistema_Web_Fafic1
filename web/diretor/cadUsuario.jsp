<%-- 
    Document   : inicio
    Created on : 04/03/2019, 10:05:40
    Author     : Natanael Luiz
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
        
        <!-- LINKs CSS -->
        <link rel="stylesheet" href="../css/cssCadUsuario.css">
        <title>Cadastrar Usuario</title>

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
                                <li><a href="cadUsuario.jsp">Fazer Cadastro de Usuário</a></li>
                                <li><a href="listaUsuario.jsp">Lista de Usuários</a></li>
                                
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

        <div class="form-css">
            
            <h1>CADASTRAR USUARIO</h1>
            
            <form name="cad" action="../cadPessoa" method="post">
                <div class="form-group">
                    <label for="text">Nome</label>
                    <input class="form-control" required="required" type="text" name="nome"/>
                </div>
                <div class="form-group">
                    <label for="text">CPF</label>
                    <input class="form-control" required="required" type="text" name="cpf"/>
                </div>
                <div class="form-group">
                    <label for="text">Perfil</label>
                    <select class="form-control" name="perfil">
                        <option value="diretor">Diretor</option>
                        <option value="professor">Professor</option>
                        <option value="aluno">Aluno</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="text">E-mail</label>
                    <input class="form-control" required="required" type="email" name="email"/>
                </div>
                <div class="form-group">
                    <label for="text">Senha</label>
                    <input class="form-control" required="required" type="password" name="senha"/>
                </div>
                <div class="form-group">
                    <label for="text">Telefone</label>
                    <input class="form-control" required="required" type="tel" name="telefone" pattern="[0-9]+$"/>
                </div>

                <div class="button-cad" >
                    <input type="hidden" value="Cadastrar" name="param"/><br>
                    <input type="submit" value="Cadastrar"/><br>
                </div>
            </form>
        </div>
    </body>
</html>
