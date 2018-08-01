<%-- 
    Document   : getUcet
    Created on : 5.4.2017, 10:33:10
    Author     : olda9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Výpis účtu</h3>
        <jsp:useBean id="ucet" class="beany.Ucet" scope="session"/>
        <strong>Jméno:</strong> <jsp:getProperty name="ucet" property="jmeno"/><br>
        <strong>Účet:</strong> <jsp:getProperty name="ucet" property="ucet"/><br>
        <strong>Hotovost:</strong> <jsp:getProperty name="ucet" property="hotovost"/><br>
    </body>
</html>
