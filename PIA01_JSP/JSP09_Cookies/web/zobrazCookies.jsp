<%-- 
    Document   : zobrazCookies
    Created on : 15.3.2017, 10:43:15
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
        <h3>Soubory Cookie:</h3>
        <%
            Cookie cooks[] = request.getCookies();
            for (int i = 0; i < cooks.length; i++) {
                out.print(cooks[i].getName());
                out.print(" = ");
                out.print(cooks[i].getValue());
                out.print(" MaxAge: ");
                out.print(cooks[i].getMaxAge());
                out.print("<br>");
            }
        %>
    </body>
</html>
