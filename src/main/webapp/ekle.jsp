<%--
  Created by IntelliJ IDEA.
  User: AKARTAL
  Date: 3.3.2021
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.uniyaz.db.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="favicon.ico"/>
    <link rel="stylesheet" href="style.css"/>
    <title>Ekle</title>
</head>
<body>

    <form action="ekle.jsp" method="post">

        <div>
            <div style="width: 300px;">
                <div style="float: left;">
                    <label for="isim">İsim</label>
                    <input type="text" name="isim">
                </div>

                <div style="clear: both">
                    Telefon<input type="text" name="telefon">
                </div>
                <input type="submit" value="Kaydet">
            </div>
        </div>
    </form>

<%
    String isim = request.getParameter("isim");
    String telefon = request.getParameter("telefon");
    if (isim == null) return;

    DbOperations dbOperations = new DbOperations();
    dbOperations.rehbbereEkle(isim, telefon);
%>
</body>
</html>
