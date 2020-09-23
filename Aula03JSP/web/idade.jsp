<%-- 
    Document   : idade
    Created on : 31 de ago de 2020, 20:06:03
    Author     : feoli
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int anoAtual = Calendar.getInstance().get(Calendar.YEAR);
    int anoNasc = 2001;
    int idade = anoAtual - anoNasc;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Idade - JSP</title>
    </head>
    <body>
        <h1>Nome</h1>
        <h2>Gabriel Ferreira de Oliveira</h2>
        <h1>Idade</h1>
        <h2><%=idade%></h2>
    </body>
</html>
