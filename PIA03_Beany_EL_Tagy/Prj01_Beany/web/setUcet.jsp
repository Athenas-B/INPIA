<%-- 
    Document   : setUcet
    Created on : 5.4.2017, 10:29:22
    Author     : olda9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SET ucet</title>
    </head>
    <body>
        <% request.setCharacterEncoding("utf-8");%>
        <%--1. varianta - nastavení všech hodnot z formuláře najednou --%>
        <jsp:useBean id="ucet" class="beany.Ucet" scope="session"/>
        <jsp:setProperty name="ucet" property="*"/>
        <strong>Nový ůčet byl úspěšně zadán</strong>

        <%--2. varianta - nastavení vybraného prvku z formuláře 
        <jsp:useBean id="ucet" class="beany.Ucet" scope="session"/>
        <jsp:setProperty name="uset" property="hotovost"/>
        <strong>Nový ůčet byl úspěšně zadán</strong>
        --%>

        <%--2. varianta - nastavení vybraného prvku jinou hodnotou 
        <jsp:useBean id="ucet" class="beany.Ucet" scope="session"/>
        <jsp:setProperty name="uset" property="jmeno" value="Alois"/>
        <strong>Nový ůčet byl úspěšně zadán</strong>
        --%>
        
        <% response.sendRedirect("index.html");%>
    </body>
</html>
