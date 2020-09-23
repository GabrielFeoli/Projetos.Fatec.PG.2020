<%@page import="br.edu.fatecpg.poo.Contato"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.Pessoa"%>
<%@page import="br.edu.fatecpg.poo.Data"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%
     ArrayList<Contato> userList = (ArrayList) application.getAttribute("userList");
     if(userList == null){
         userList = new ArrayList();
         userList.add(new Contato("Exemplo", "34222526" ,"exemplo@email.com"));
         application.setAttribute("userList", userList);
     }
     if(request.getParameter("add")!=null){
         String name = request.getParameter("name");
         String tel = request.getParameter("tel");
         String email = request.getParameter("email");
         userList.add(new Contato(name, tel, email));
         response.sendRedirect(request.getRequestURI());
     }
     if(request.getParameter("remove")!=null){
         int i = Integer.parseInt(request.getParameter("i"));
         userList.remove(i);
         response.sendRedirect(request.getRequestURI());
     }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contato - JavaOO</title>
    </head>
    <body>
        <div><a href="index.jsp">Voltar</a></div>
        <h1>JavaOO</h1>
        <h2>Contatos</h2>
        <form method="post">
            Nome: <input type="text" name="name"/>
            Tel: <input type="text" name="tel"/>
            Email: <input type="text" name="email"/>
            <input type="submit" name="add" value="Adicionar"/>
        </form>
        <hr/>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Tel</th>
                <th>Email</th>
            </tr>
            <% for(int i = 0; i < userList.size(); i++){%>
                <% Contato user = userList.get(i); %>
                <tr>
                    <td><%= i %></td>
                    <td><%= user.getName() %></td>
                    <td><%= user.getTel() %></td>
                    <td><%= user.getEmail() %></td>
                    <td>
                        <form>
                            <input type="submit" name="remove" value="Remover"/>
                            <input type="hidden" name="i" value="<%= i %>"/>
                        </form>
                    </td>
                </tr>
            <%}%>
        </table>
    </body>
</html>