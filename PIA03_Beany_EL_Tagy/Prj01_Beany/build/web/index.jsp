<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Můj účet</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h3>Můj účet</h3>
        <jsp:useBean id="ucet" class="beany.Ucet" scope="session"/>
        <form action="setUcet.jsp">
            <table cellspacing="2" cellpadding="3" border="1" width="52%">
                <tr>
                    <td width="30%">Jméno:</td>
                    <td width="70%">
                         <input type="text" name="jmeno" size="20" value="<jsp:getProperty name="ucet" property="jmeno"/>"/>
                    </td>
                </tr>
                <tr>
                    <td width="30%">Číslo účtu:</td>
                    <td width="70%">
                        <input type="text" name="ucet" size="10" value="<jsp:getProperty name="ucet" property="ucet"/>"/>
                    </td>
                </tr>
                <tr>
                    <td width="30%">Hotovost:</td>
                    <td width="70%">
                        <input type="text" name="hotovost" value="<jsp:getProperty name="ucet" property="hotovost"/>" size="10"/>
                    </td>
                </tr>
            </table>
            <input type="submit" name="ok" value="potvrdit"/>
            <input type="reset" name="res" value="zpět"/>
            <input type="button" value="Výpis účtu" onclick="window.open('getUcet.jsp')"/>

        </form>
        <form action="getUcet.jsp">
            <input type="submit" value="Výpis"
        </form>
    </body>
</html>
