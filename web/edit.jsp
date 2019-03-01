<%-- 
    Document   : edit
    Created on : 22/02/2019, 21:37:47
    Author     : Amanda Miranda
--%>

<%@page import="br.edu.fafic.model.Login"%>
<%@page import="br.edu.fafic.dao.LoginDAO"%>
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
            LoginDAO dao  = new LoginDAO();
            Login login = dao.getLoginById(id);
        %>
         <form name="cad" action="cadLogin" method="post">
            Nome: <input type="text" name="nome" value="<%=login.getNome()%>"/><br>
            E-mail: <input type="email" name="email" value="<%=login.getEmail()%>"/><br>
            <input type="hidden" value="editar" name="param"/><br>
            <input type="hidden" value="<%=login.getId()%>" name="id"/><br>
            <input type="submit" value="Atualizar"/><br>
            
        </form>
    </body>
</html>
