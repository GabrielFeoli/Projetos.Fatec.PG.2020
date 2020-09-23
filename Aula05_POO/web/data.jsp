<%@page import="br.edu.fatecpg.poo.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Data hoje = new Data(21,9,2020);
    
    Data nasc = new Data();
    nasc.setDia(21);
    nasc.setMes(4);
    nasc.setAno(2001);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data - JavaOO</title>
    </head>
    <body>
        <h1>JavaOO</h1>
        <h2>Classe Data</h2>
        <h3>Hoje: </h3>
        <div><%= hoje.getData() %></div>
        
        <h3>Nascimento: </h3>
        <div><%= nasc.getDia() %>/<%= nasc.getMes() %>/<%= nasc.getAno() %></div>
        
        <h3><a href="index.jsp">Voltar</a></h3>
    </body>
</html>
