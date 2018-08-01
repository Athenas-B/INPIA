<%-- 
    Document   : index
    Created on : 2.3.2016, 10:07:35
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
        <h1>Vítám Vás na stránce dotazníku!</h1>
        <h2>Označte orogramovací jazyk, který preferujete.</h2>
        <form action="ControllerServlet" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Vaše celé jméno:</td>
                        <td><input type="text" name="jmeno" value=""</td>
                    </tr>
                    <tr>
                        <td>Java</td>
                        <td><input type="checkbox" name="prgJazyk" value="Java"</td>
                    </tr>
                    <tr>
                        <td>C</td>
                        <td><input type="checkbox" name="prgJazyk" value="C"</td>
                    </tr>
                    <tr>
                        <td>C++</td>
                        <td><input type="checkbox" name="prgJazyk" value="C++"</td>
                    </tr>
                    <tr>
                        <td>C#</td>
                        <td><input type="checkbox" name="prgJazyk" value="C#"</td>
                    </tr>
                    <tr>
                        <td>PHP</td>
                        <td><input type="checkbox" name="prgJazyk" value="PHP"</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="submit"</td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
