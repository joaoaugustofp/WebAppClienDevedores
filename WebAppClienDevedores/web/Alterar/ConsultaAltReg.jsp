<%-- 
    Document   : ConsultaAltReg
    Created on : 24 de nov. de 2024, 13:23:56
    Author     : Juliene Costa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Devedores"%>
<%@page import="model.dao.DevedoresDAO"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alterar Registro</title>
    </head>
    <body>
         <h2>Alterar Dados do Devedor</h2>
    <form action="ConsultaAltReg" method="POST">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required><br><br>

        <label for="telefone">Telefone:</label>
        <input type="text" id="telefone" name="telefone" required><br><br>

        <label for="endereco">Endereço:</label>
        <input type="text" id="endereco" name="endereco" required><br><br>

        <label for="dt_div">Data da Dívida:</label>
        <input type="datetime-local" id="dt_div" name="dt_div" required><br><br>

        <label for="saldodevedor">Saldo Devedor:</label>
        <input type="number" id="saldodevedor" name="saldodevedor" required step="0.01"><br><br>

        <button type="submit">Alterar</button>
    </form>
</body>
</html>
