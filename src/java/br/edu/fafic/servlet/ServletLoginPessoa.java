/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fafic.servlet;

import br.edu.fafic.dao.PessoaDAO;
import br.edu.fafic.model.Pessoa;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Amanda
 */
@WebServlet("/log")
public class ServletLoginPessoa extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PessoaDAO pessoaDAO = new PessoaDAO();
        String nome = req.getParameter("email");
        String email = req.getParameter("senha");
        Pessoa pessoa = pessoaDAO.autenticacao(nome, email);
        if (pessoa != null) {
            if (pessoa.getPerfil().equalsIgnoreCase("diretor")) {
                resp.sendRedirect("diretor/index.jsp");

            }
            else if (pessoa.getPerfil().equalsIgnoreCase("aluno")) {
                resp.sendRedirect("aluno/index.jsp");

            }
            else {
                PrintWriter out = resp.getWriter();
                out.println("<script type=\"text/javascript\">");
                out.println("location='telaLogin.jsp';");
                out.println("alert('Usuário ou senha inválidos!');");
                out.println("</script>");
            }
        }

    }
}