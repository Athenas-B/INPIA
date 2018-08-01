<%-- 
    Document   : index
    Created on : 15.3.2017, 10:30:29
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
            String cookieName = "cook1";
            String cookieValue = "hodnota01";
            Cookie c1 = new Cookie(cookieName, cookieValue);
            c1.setMaxAge(1024);
            response.addCookie(c1);
        %>
        Soubor cookie: <%=cookieName%> = <%=cookieValue%> byl nastaven.<br>
        <jsp:include page="vlozSoubor.jsp" flush="false"/>
            <%
                cookieName = "cook2";
                cookieValue = "hodnota_2";
                Cookie c2 = new Cookie(cookieName, cookieValue);
                c2.setMaxAge(Integer.MAX_VALUE);
                response.addCookie(c2);
            %>
            Soubor cookie<%=cookieName%> = <%=cookieValue%> byl nastaven, a nebo ne?<br>
        </body>
    </html>
