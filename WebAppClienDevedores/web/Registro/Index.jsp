<%-- 
    Document   : Index
    Created on : 28 de nov. de 2024, 15:54:33
    Author     : Juliene Costa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Registro</h1>
        <form method="post" action="processarRegistro.jsp">
            Nome: <input type="text" name="nome" required> <br><br>
            Telefone: <input type="text" name="telefone" required> <br><br>
            Endereço: <input type="text" name="endereco" required> <br><br>
            Valor da Dívida: <input type="text" name="valorDivida" required> <br><br>
            <input type="submit" value="Registrar!">
        </form> 
    </body> 
</html>