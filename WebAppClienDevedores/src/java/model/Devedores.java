/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.util.Date;
/**
 *
 * @author Juliene Costa
 */
public class Devedores {
    // Atrib
    private int id;
    private String nome;
    private double telefone;
    private String endereco;
    private String dt_divida;
    private double saldoDevedor;
    
     //Métodos 

    public void setId(int id) {
        this.id = id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setTelefone(double telefone) {
        this.telefone = telefone;
    }

    public void setEndereco(String endereço) {
        this.endereco = endereço;
    }

    public void setDt_divida(String dt_divida) {
        this.dt_divida = dt_divida;
    }

    public void setSaldoDevedor(double saldoDevedor) {
        this.saldoDevedor = saldoDevedor;
    }

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public double getTelefone() {
        return telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public String getDt_divida() {
        return dt_divida;
    }

    public double getSaldoDevedor() {
        return saldoDevedor;
    }
    
}

    