<%-- 
    Document   : edit
    Created on : 22/02/2019, 21:37:47
    Author     : Amanda Miranda
--%>

<%@page import="br.edu.fafic.model.Pessoa"%>
<%@page import="br.edu.fafic.dao.PessoaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Atualizar Cadastro de Usuário</h1>
        <%
            Long id = Long.valueOf(request.getParameter("id"));
            PessoaDAO dao  = new PessoaDAO();
            Pessoa pessoa = dao.getPessoaById(id);
        %>
         <form name="cad" action="cadLogin" method="post">
            Nome: <input type="text" name="nome" value="<%=pessoa.getNome()%>"/><br>
            E-mail: <input type="email" name="email" value="<%=pessoa.getEmail()%>"/><br>
            <input type="hidden" value="editar" name="param"/><br>
            <input type="hidden" value="<%=pessoa.getId()%>" name="id"/><br>
            <input type="submit" value="Atualizar"/><br>
            
        </form>
    </body>
</html>
