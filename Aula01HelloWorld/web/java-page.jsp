<%-- 
    Document   : java-page
    Created on : 23 de ago de 2020, 20:08:15
    Author     : feoli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Page - Hello World</title>
    </head>
    <body>
        <h1>Fatec PG</h1>
        <h2>Essa é a página Java</h2>
        <div>Data e Hora:<%= new java.util.Date() %></div>
        <a href="index.html">Voltar</a>
    </body>
</html>
