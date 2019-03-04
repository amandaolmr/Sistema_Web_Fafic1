/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fafic.servlet;

import br.edu.fafic.dao.PessoaDAO;
import br.edu.fafic.model.Pessoa;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Amanda Miranda
 */
@WebServlet("/cadPessoa")
public class ServletLogin extends HttpServlet {

    

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Pessoa pessoa =  null;
        PessoaDAO dao = new PessoaDAO();
        String nome = req.getParameter("nome");
        String cpf = req.getParameter("cpf");
        String perfil = req.getParameter("perfil");
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        String telefone = req.getParameter("telefone");
        String type = req.getParameter("param");//pegar o tipo de metodo que quero executar;
        
        if (type.equalsIgnoreCase("cadastrar")) {
             pessoa = new Pessoa(nome, cpf, perfil, email, senha, telefone);
            dao.cadastraPessoa(pessoa);

        }else if(type.equalsIgnoreCase("editar")){
            Long id = Long.valueOf(req.getParameter("id"));
            pessoa = new Pessoa(id, nome, cpf, email, perfil,senha, telefone);
            dao.updatePessoa(pessoa);
            
        }else if(type.equalsIgnoreCase("excluir")){
            //fazer o dao de excluir
            Long id = Long.valueOf(req.getParameter("id"));
            dao.excluirPessoa(id);
            
        }
       // RequestDispatcher rs = req.getRequestDispatcher("inicio.jsp");
        //rs.forward(req, resp);
        resp.sendRedirect("diretor/index.jsp");//Redirecionando para a pagina de inicio

    }

}
