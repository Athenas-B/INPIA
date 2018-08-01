<%-- 
    Document   : processForward1
    Created on : 15.3.2017, 11:10:07
    Author     : olda9
--%>

<%@page errorPage="pomError.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Vaše objednávka 1</h2>
        <%
            String pocetTrik = request.getParameter("shirt");
            double mezisoucet1 = Double.parseDouble(pocetTrik) * 200.0;//zdroj chyby
        %>
        <p>
            Počet trik: <%=pocetTrik%><br>
            Mezisoučet: <%=mezisoucet1%><br>
        </p>
    </body>
</html>
