<!DOCTYPE html>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="myt" tagdir="/WEB-INF/tags/" %> <%-- tagdir nebo uri --%>
<%@ page import="beany.AdresaBeana" %>

<%
            AdresaBeana addressBean = new AdresaBeana();

            addressBean.setAddressType("home");
            addressBean.setFirstName("Jozífek");
            addressBean.setLastName("Nožka");
            addressBean.setCity("Phoenix");
            addressBean.setState("AZ");
            addressBean.setZip("85001");

            session.setAttribute("addressBean", addressBean);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tagy</title>
    </head>
    <body>
        <form>
            <myt:adresa addressType="home"/>

            <table cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td style="width:78px;"></td>
                    <td>
                        <input type="submit" value="Submit"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
