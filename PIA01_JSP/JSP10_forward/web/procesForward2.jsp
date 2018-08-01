<%-- 
    Document   : procesForward
    Created on : 15.3.2017, 11:22:20
    Author     : olda9
--%>

<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Vaše objednávka 2</h2>
        <%
            String pocetTrik = request.getParameter("shirt");
            String pocetKlob = request.getParameter("hat");
            NumberFormat mena = NumberFormat.getCurrencyInstance();

            double mezisoucet1 = 0.0;
            double mezisoucet2 = 0.0;
            double total = 0.0;

            try {
                mezisoucet1 = Double.parseDouble(pocetTrik) * 200;
                mezisoucet2 = Double.parseDouble(pocetKlob) * 400;
                total = mezisoucet1 + mezisoucet2;
        %>
        <p>
            Počet trik: <%=pocetTrik%><br>
            Mezisoučet: <%=mena.format(mezisoucet1)%><br>                   
        </p>
        <p>
            Počet klobouků: <%=pocetKlob%><br>
            Mezisoučet: <%=mena.format(mezisoucet2)%>
        </p>
         <%
        } catch (NumberFormatException e) {
        %>
        <jsp:forward page="objednError.jsp">
            <jsp:param name="errorType" value="badHodn"/>
        </jsp:forward>
         <%
            }
            try {
                boolean pceObyv = request.getParameter("pce").equals("true");
                double vysl = total - (pceObyv ? 0.0 : (0.1 * total));
        %>
        <b>Celkem: </b> <%=mena.format(vysl)%>
        <%
        } catch (NullPointerException e) {
        %>
        <jsp:forward page="objednError.jsp">
            <jsp:param name="errorType" value="badTot"/>
        </jsp:forward>
        <%
            }
        %>
    </body>
</html>
