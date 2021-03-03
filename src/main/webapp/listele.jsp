<%--
  Created by IntelliJ IDEA.
  User: AKARTAL
  Date: 3.3.2021
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.uniyaz.db.*" %>
<%@ page import="com.uniyaz.domian.Rehber" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="favicon.ico"/>
    <link rel="stylesheet" href="style.css"/>
    <title>Listele</title>
</head>
<body>

<table>
<%
        DbOperations dbOperations = new DbOperations();
        List<Rehber> rehberList = dbOperations.rehberiGetir();
        for (Rehber rehber : rehberList) {
%>
        <tr>
            <td><%= rehber.getId() %></td>
            <td><%= rehber.getIsim() %></td>
            <td><%= rehber.getTelefon() %></td>
            <td><a href="guncelle.jsp?id=<%= rehber.getId() %>">Güncelle</a></td>
            <td><a href="sil.jsp?id=<%= rehber.getId() %>">Sil</a></td>
        </tr>
<%
    }
%>
</table>
</body>
</html>
