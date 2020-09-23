/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo;

/**
 *
 * @author feoli
 */
public class Pessoa {
    private String nome;
    private Pessoa pai;
    private Pessoa mae;
    private Data nascimento;

    public Pessoa(String nome) {
        this.nome = nome;
    }

    public Pessoa(String nome, Data nascimento) {
        this.nome = nome;
        this.nascimento = nascimento;
    }

    public Pessoa(String nome, Pessoa pai, Pessoa mae, Data nascimento) {
        this.nome = nome;
        this.pai = pai;
        this.mae = mae;
        this.nascimento = nascimento;
    }
    
    public int getIdade(int anoAtual){
        return anoAtual - getNascimento().getAno();
    }

    public Pessoa getAvoPaterno(){
        return getPai().getPai();
    }
    
    public Pessoa getAvoMaterno(){
        return getMae().getPai();
    }

    public Data getNascimento() {
        return nascimento;
    }

    public void setNascimento(Data nascimento) {
        this.nascimento = nascimento;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Pessoa getPai() {
        return pai;
    }

    public void setPai(Pessoa pai) {
        this.pai = pai;
    }

    public Pessoa getMae() {
        return mae;
    }

    public void setMae(Pessoa mae) {
        this.mae = mae;
    }
    
}
