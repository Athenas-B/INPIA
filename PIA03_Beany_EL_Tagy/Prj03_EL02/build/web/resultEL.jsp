<%-- 
    Document   : resultEL
    Created on : 5.4.2017, 11:15:57
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
        <p>Řetězec (klasicky "with scripting") = <%=request.getAttribute("str")%></p>
        
        <p>Řetězec (pomocí EL - "scriptless") = ${str}</p>
        <p>${header["user-agent"]}</p>
        <p>${header["host"]}</p>
        
    </body>
</html>
