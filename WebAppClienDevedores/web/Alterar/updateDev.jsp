<%-- 
    Document   : updateDev
    Created on : 24 de nov. de 2024, 13:24:23
    Author     : Juliene Costa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Devedores"%>
<%@page import="model.dao.DevedoresDAO"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar (Consulta)</title>
    </head>
    <body>
        <h1>Clientes - Alteração</h1>
        <%
            //Entrada
            int id = Integer.parseInt( request.getParameter("id") );
            String nome = request.getParameter("nome");            
            String telefone = request.getParameter("telefone");
            String endereço = request.getParameter("endereço");
            String dt_dev = request.getParameter("dt_dev");
            String saldoDevedor = request.getParameter("saldoDevedor");


            // Instância do objeto e atrib. de dados
            Devedores dev = new Devedores();
            dev.setId(id);
            dev.setNome(nome);
            dev.setTelefone(telefone);
            dev.setEndereco(endereco);
            dev.setDt_divida(dt_Dev);
            dev.setSaldoDevedor(saldoDevedor);
            
            DevedoresDAO devDAO = new DevedoresDAO();
            
            // Chamando o método para atualizar os dados do devedor
            boolean sucesso = devDAO.altdev(dev);
            
            if (devDAO.altdev(dev)){    
                //Acesso Permitido
                out.println("Pesquisa Alterada com sucesso!!!");
            }else{
                //Acesso Negado
                out.println("Pesquisa Não Alterada!!!");
            }          
        %>
    </body>
</html>
