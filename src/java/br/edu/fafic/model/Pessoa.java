package br.edu.fafic.model;

/**
 *
 * @author Amanda Miranda
 */
public class Pessoa {
    private long id;
    private String nome;
    private String cpf;
    private String perfil;
    private String email;
    private String senha;
    private String telefone;

    public Pessoa() {
    }

    public Pessoa(long id, String nome, String cpf, String perfil, String email, String senha, String telefone) {
        this.id = id;
        this.nome = nome;
        this.cpf = cpf;
        this.perfil = perfil;
        this.email = email;
        this.senha = senha;
        this.telefone = telefone;
    }

    public Pessoa(String nome, String cpf, String perfil, String email, String senha, String telefone) {
        this.nome = nome;
        this.cpf = cpf;
        this.perfil = perfil;
        this.email = email;
        this.senha = senha;
        this.telefone = telefone;
    }

    public Pessoa(long id, String perfil, String email, String senha) {
        this.id = id;
        this.perfil = perfil;
        this.email = email;
        this.senha = senha;
    }
    
    

   
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    

  
    
    

    
    @Override
    public String toString() {
        return "Pessoa{" + "id=" + id + ", nome=" + nome + ", email=" + email + '}';
    }
    
    
    
}
