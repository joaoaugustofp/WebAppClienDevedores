/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.dao;

import model.Devedores;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;
import util.ConectaDB;
/**
 *
 * @author Juliene Costa
 */
public class DevedoresDAO {
    //Atributos
   //sem atributos
    
    //Metodos
public boolean insDevedores (Devedores p_devedores) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                       //insert INTO  `usuario`(`pkid`,`nome`, `telefone`, `endereço`,`dt_div`,`saldodevedor`) VALUES ('João Silva', '1234567890', 'Rua A, 123', '2024-11-01 10:30:00', 150.75),       
            String sql = "Insert INTO `usuario`(`pkid`,`nome`, `telefone`, `endereço`,`dt_div`,`saldodevedor`) VALUES ('" + p_devedores.getId()+ 
                                                                                   "','" + p_devedores.getNome()+
                                                                                   "', '" + p_devedores.getTelefone() +
                                                                                   "','" + p_devedores.getEndereco() + 
                                                                                    "','" + p_devedores.getDt_divida()+ 
                                                                                    "," + p_devedores.getSaldoDevedor()+ ")";
            stmt.executeUpdate(sql); //GO - Executar - Insert / Delete / Update
            return true;
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return false;
        }
    }
}

    
