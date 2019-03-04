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
        <title>Página do Diretor</title>

        <script type="text/javascript">
            function excluir(id, nome) {
                if (window.confirm("Deseja realmente excluir o usuário " + nome + " ?")) {
                    location.href = "cadLogin?id=" + id + "&param=excluir";

                }
            }

        </script>
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

        <form name="cad" action="cadPessoa" method="post">
            <div class="form-group" style="width:30%;">
                <label for="text">Nome</label>
                <input class="form-control" type="text" name="nome"/>
            </div>
            <div class="form-group" style="width:30%;">
                <label for="text">CPF</label>
                <input class="form-control" type="text" name="cpf"/>
            </div>
            <div class="form-group" style="width:30%;">
                <label for="text">Perfil</label>
                <input class="form-control" type="text" name="perfil"/>
            </div>
            <div class="form-group" style="width:30%;">
                <label for="text">E-mail</label>
                <input class="form-control" type="email" name="email"/>
            </div>
            <div class="form-group" style="width:30%;">
                <label for="text">Senha</label>
                <input class="form-control" type="text" name="senha"/>
            </div>
            <div class="form-group" style="width:30%;">
                <label for="text">Telefone</label>
                <input class="form-control" type="tel" name="telefone"/>
            </div>


            <input type="hidden" value="Cadastrar" name="param"/><br>
            <input type="submit" value="Cadastrar"/><br>

        </form>



        <%
            PessoaDAO dao = new PessoaDAO();
            List<Pessoa> logins = dao.getAll();

        %>
        <b>Lista de Pessoas</b><br><br>
        <table border="1">
            <tr>
                <td style="text-align: center;">Id </td>
                <td style = "text-align: center;">Nome </td>
                <td style = "text-align: center;">Cpf</td>
                <td style = "text-align: center;">Perfil </td>
                <td style = "text-align: center;">E-mail </td>
                <td style = "text-align: center;">Senha </td>
                <td style = "text-align: center;">Telefone </td>


            </tr>
            <%for (Pessoa login : logins) {%>
            <tr>
                <td><%=login.getId()%> </td>
                <td><%=login.getNome()%> </td>
                <td><%=login.getCpf()%> </td>
                <td><%=login.getPerfil()%> </td>
                <td><%=login.getEmail()%> </td>
                <td><%=login.getSenha()%> </td>
                <td><%=login.getTelefone()%> </td>


                <td><a href="edit.jsp?id=<%=login.getId()%>"><img src="../imagens/edit.png"></a> </td>
                <td><a href="javascript://" onclick="excluir(<%=login.getId()%>, '<%=login.getNome()%>')"><img src="../imagens/excluir.png"></a> </td>

            </tr>
            <%}%>
        </table>

    </body>
</html>
