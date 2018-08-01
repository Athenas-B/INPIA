<%-- 
    Document   : ahojTagy
    Created on : 5.4.2017, 11:27:51
    Author     : olda9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="mt" uri="/WEB-INF/tlds/mojeTagy" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Stránka s vlastními tagy -- parametry i s tělem + JSTL</h2>
        <% request.setCharacterEncoding("utf-8");%>
        <p>
            <fmt:formatNumber value="${param.cislo}" pattern=".00" />
        </p>
        <i><mt:ahoJm jmeno="${param.jmeno}" /></i>
        <i><mt:ahoTe>${param.text}</mt:ahoTe></i>
    </body>
</html>