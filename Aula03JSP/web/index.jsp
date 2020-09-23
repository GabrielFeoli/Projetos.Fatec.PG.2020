<%-- 
    Document   : index
    Created on : 31 de ago de 2020, 19:41:07
    Author     : feoli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Página inicial</h1>
        <h2><a href="idade.jsp">Calcular idade</a></h2>
        <form action="tabuada.jsp">
            Calcular tabuada
            <input type="number" name="n">
            <input type="submit" value="Calcular">
        </form>
    </body>
</html>
