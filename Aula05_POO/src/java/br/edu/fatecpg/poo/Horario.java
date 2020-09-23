package br.edu.fatecpg.poo;

public class Horario {
    int hora;
    int minuto;
    int segundo;
    
    public Horario(int hora, int minuto, int segundo){
        this.hora = hora;
        this.minuto = minuto;
        this.segundo = segundo;
    }
    
    public void setHora(int n1, int n2, int n3){
        n1 = hora;
        n2 = minuto;
        n3 = segundo;
    }
    
    public String getHora(){
        return hora+":"+minuto+":"+segundo;
    }
}

