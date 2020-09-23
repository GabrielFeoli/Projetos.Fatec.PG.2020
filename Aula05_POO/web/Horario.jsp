<%@page import="br.edu.fatecpg.poo.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Horario atual = new Horario(20, 45, 10);
    Horario intervalo = new Horario(21, 15, 26);
%>    

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Horário</title>
    </head>
    <body>
        <h1>Hora atual:</h1>
        <div><%=atual.getHora()%></div>
        
        <h1>Hora do intervalo:</h1>
        <div><%=intervalo.getHora()%></div>
        
        <h3><a href="index.jsp">Index</a></h3>
        
    </body>
</html>
