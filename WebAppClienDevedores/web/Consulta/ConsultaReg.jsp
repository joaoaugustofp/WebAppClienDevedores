<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Devedores"%>
<%@page import="model.dao.DevedoresDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Devedor</title>
    </head>
    <body>
        <h1>Consulta de Devedor</h1>

        <%
        // Recebe o parâmetro 'nome' enviado pelo usuário
        String nome = request.getParameter("nome");

        // Verifica se o nome foi informado
        if (nome != null && !nome.trim().isEmpty()) {
            // Instancia o objeto Devedores e atribui o nome
            Devedores dev = new Devedores();
            dev.setNome(nome);

            // Cria a instância do DAO e consulta os dados do devedor
            DevedoresDAO devDAO = new DevedoresDAO();
            Devedores devResultado = devDAO.consDevedorReg(dev);  // Método para buscar os dados

            // Verifica se encontrou o registro
            if (devResultado != null) {
                out.println("<br><b>Dados do Devedor</b><br>");
                out.println("<br><b>Nome:</b> " + devResultado.getNome());
                out.println("<br><b>Telefone:</b> " + devResultado.getTelefone());
                out.println("<br><b>Endereço:</b> " + devResultado.getEndereco());
                out.println("<br><b>Data de Vencimento:</b> " + devResultado.getDt_divida());
                out.println("<br><b>Saldo Devedor:</b> " + devResultado.getSaldoDevedor());
            } else {
                out.println("<br><b>Registro não encontrado!</b>");
            }
        } else {
            out.println("<br><b>Por favor, forneça um nome para a consulta.</b>");
        }
        %>

    </body>
</html>