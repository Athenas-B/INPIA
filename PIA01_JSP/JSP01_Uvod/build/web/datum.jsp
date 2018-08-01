<%-- 
    Document   : datum
    Created on : 22.2.2017, 10:59:48
    Author     : olda9
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP datum</title>
    </head>
    <body>
        <h2>Datum anglicky</h2>
        <strong>Dnes je:</strong>
        <%=new java.util.Date()%>
        <br/>
        <%
            Date d = new Date();
            Locale loc = new Locale("cs", "CZ");
            SimpleDateFormat f = new SimpleDateFormat("dd.MMMM.YYYY", loc);
            out.print(f.format(d));
        %>
    </body>
</html>
