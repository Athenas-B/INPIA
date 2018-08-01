<%-- 
    Document   : output
    Created on : 2.3.2016, 10:25:51
    Author     : olda9
--%>

<%@page import="beany.ModelData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            //request.setCharacterEncoding("utf-8");
            ModelData m =  (ModelData)request.getAttribute("data");
        %>
        <p>Pane/Paní jménem <b><%=m.jmenoBig()%></b>,
            &nbsp;Vaše preferované programovací jazyky jsou:
        </p>
        <ul>
            <%
                
                String[] jazyky = m.getSeznamPrgJazyku();
                if (jazyky != null) {
                    for (int i = 0; i < jazyky.length; i++) {

            %>
            <li>
                <%=jazyky[i]%>
            </li>
            <%
                    }
                }
            %>
            <br>Díky za Váš čas.
        </ul>
    </body>
</html>
