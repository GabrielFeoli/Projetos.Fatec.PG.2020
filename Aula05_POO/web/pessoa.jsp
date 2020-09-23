<%@page import="br.edu.fatecpg.poo.Pessoa"%>
<%@page import="br.edu.fatecpg.poo.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    Pessoa gabriel = new Pessoa("Gabriel", new Data(21, 4, 2001));
    gabriel.setPai(new Pessoa("Armando"));
    gabriel.getPai().setPai(new Pessoa("Jose"));
    gabriel.setMae(new Pessoa("Sonia"));
    gabriel.getMae().setPai(new Pessoa("Anderson"));
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pessoa - JavaOO</title>
    </head>
    <body>
        <h1>JavaOO</h1>
        <h2>Classe Pessoa</h2>
        <div><%= gabriel.getNome() %> nasceu em <%= gabriel.getNascimento().getData() %></div>
        <div><%= gabriel.getNome() %> tem <%= gabriel.getIdade(2020) %> anos</div>
        <div>
            O pai de <%=gabriel.getNome()%> 
            chama-se <%= gabriel.getPai().getNome() %>
        </div>
        <div>
            A mãe de <%=gabriel.getNome()%> 
            chama-se <%= gabriel.getMae().getNome() %>
        </div>
        <div>
            O avô paterno de <%=gabriel.getNome()%> 
            chama-se <%= gabriel.getAvoPaterno().getNome() %>
        </div>
        <div>
            O avô materno de <%=gabriel.getNome()%> 
            chama-se <%= gabriel.getAvoMaterno().getNome() %>
        </div>
        
        <h3><a href="index.jsp">Voltar</a></h3>
    </body>
</html>
