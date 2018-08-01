<%-- 
    Document   : view
    Created on : 29.3.2017, 10:48:19
    Author     : olda9
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head> 

    <body>
        <h2>JSP - Co jste si vybrali:</h2>
        <%
            List<String> vypis = (List) request.getAttribute("vypisAtt");
            for (String s : vypis) {


        %>
        <b> <%=s%> </b><br>
        <%
            }
        %>
    </body>
</html>
