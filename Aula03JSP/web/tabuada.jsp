<%-- 
    Document   : tabuada
    Created on : 31 de ago de 2020, 21:39:24
    Author     : feoli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestException = null;
    int n;
    try{
        n = Integer.parseInt(request.getParameter("n"));
    }catch(Exception ex){
        n = 0;
        requestException = ex;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabuada - JSP</title>
    </head>
    <body>
        <h2><a href="index.jsp">Voltar</a></h2>
        <h1>Tabuada</h1>
        <form>
            Número
            <input type="number" name="n"/>
            <input type="submit" value="Calcular"/>
        </form>
        <hr/>
        <table border="2">
            <tr>
                <th>Operação</th>
                <th>Resultado</th>
            </tr>
            <%if(request.getParameter("n")==null){%>
                <tr><td colspan="3">Não Há Parâmetro</td></tr>
            <%}else if(requestException!=null){%>
                <tr><td colspan="3">Parâmetro Inválido</td></tr>
            <%}%>    
            <%for(int i = 1; i<=10; i++){%>
            <tr>
                <th><%= n+"x"+i%></th>
                <td><%= n * i%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
