<%-- 
    Document   : index
    Created on : 23.3.2016, 10:49:58
    Author     : olda9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP s fitrem</title>
    </head>
    <body>
        <%
            System.out.println("Jsem v JSP");
            %>
        <p>
            Hello
            <%=request.getAttribute("hello")%>
        </p>
        <p>
            Zkontrolujte vystup na konzoli!
        </p>
    </body>
</html>
