package br.edu.fafic.dao;

import br.edu.fafic.connection.ConnectionFactory;
import br.edu.fafic.model.Pessoa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Amanda Miranda
 */
public class PessoaDAO {

    private Connection con = ConnectionFactory.getConnectionFactory().getConnection();

    public void cadastraPessoa(Pessoa pessoa) {
        String sql = "INSERT INTO PESSOA  VALUES(default, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, pessoa.getNome());
            ps.setString(2, pessoa.getCpf());
            ps.setString(3, pessoa.getPerfil());
            ps.setString(4, pessoa.getEmail());
            ps.setString(5, pessoa.getSenha());
            ps.setString(6, pessoa.getTelefone());
            ps.executeUpdate();
            ps.close();
            con.close();

        } catch (SQLException ex) {
            Logger.getLogger(PessoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public List<Pessoa> getAll() {
        List<Pessoa> pessoas = new ArrayList();
        String sql = "SELECT *FROM PESSOA";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
           
              pessoas.add(new Pessoa(rs.getLong("id"), rs.getString("nome"), rs.getString("cpf"), rs.getString("perfil"), rs.getString("email"), rs.getString("senha"), rs.getString("telefone")));
            }
            ps.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(PessoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pessoas;

    }
    
    public Pessoa getPessoaById(Long id){
        Pessoa pessoa = new Pessoa();
        String sql = "SELECT *FROM PESSOA WHERE id=?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ps.setLong(1, id);
            ps.executeQuery();
            ResultSet rs = ps.getResultSet();
        
        while(rs.next()){
            pessoa.setId(rs.getLong("id"));
            pessoa.setNome(rs.getString("nome"));
            pessoa.setCpf(rs.getString("cpf"));
            pessoa.setPerfil(rs.getString("perfil"));
            pessoa.setEmail(rs.getString("email"));
            pessoa.setSenha(rs.getString("senha"));
            pessoa.setTelefone(rs.getString("telefone"));
        }
        ps.close();
        con.close();
         } catch (SQLException ex) {
             System.out.println("Erro no metodo getPessoaById");
            Logger.getLogger(PessoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pessoa;
        
    }
    
    public void updatePessoa(Pessoa pessoa){
        String sql = "UPDATE PESSOA SET nome=?, cpf=?, perfil=?, email=?, senha=?, telefone=?  where id=?";
        PreparedStatement ps ;
        try {
        ps = con.prepareStatement(sql);
        ps.setString(1, pessoa.getNome());
        ps.setString(2, pessoa.getCpf());
        ps.setString(3, pessoa.getPerfil());
        ps.setString(4, pessoa.getEmail());
        ps.setString(5, pessoa.getSenha());
        ps.setString(6, pessoa.getTelefone());
        ps.setLong(7, pessoa.getId());
        ps.executeUpdate();
        ps.close();;
        con.close();
        } catch (SQLException ex) {
            System.out.println("Erro ao Editar!");
            Logger.getLogger(PessoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void excluirPessoa(Long id){
       
        String sql = "DELETE FROM PESSOA WHERE id=?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ps.setLong(1, id);
            ps.execute();
            
            ps.close();
            con.close();
         } catch (SQLException ex) {
             System.out.println("Erro ao Excluir!");
            Logger.getLogger(PessoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        
    }

}
