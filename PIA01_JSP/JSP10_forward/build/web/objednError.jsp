<%-- 
    Document   : objednError
    Created on : 15.3.2017, 11:34:06
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
        <%
            String errorType = request.getParameter("errorType");
            if (errorType.equals("badHodn")) {
        %>
        Počet trik: <%=request.getParameter("shirt")%><br>                
        Počet klobouků: <%=request.getParameter("hat")%><br>
        Zadejte prosím číselnou hodnotu do pole.
        <%
            } else if (errorType.equals("badTot")) {
                out.print("Bydlíte v pardubicích?");
            } else {
                out.print("Neplatné zadání.");
            }
        %>
        <p>Návrat na hlavní <a href="index.html"> objednávkový formulář.</a></p>
    </body>
</html>
