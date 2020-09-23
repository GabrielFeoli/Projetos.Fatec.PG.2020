package br.edu.fatecpg.poo;

public class Contato {
    private String nome;
    private String tel;
    private String email;

    public Contato(String nome, String tel, String email) {
        this.nome = nome;
        this.tel = tel;
        this.email = email;
    }
    
    public void setName(String name) {
        this.nome = nome;
    }
    
    public String getName() {
        return nome;
    }
    
    public void setTel(String tel) {
        this.tel = tel;
    }
    
    public String getTel() {
        return tel;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }
    
}