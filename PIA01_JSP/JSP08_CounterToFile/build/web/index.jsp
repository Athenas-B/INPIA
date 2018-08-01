<%-- 
    Document   : index
    Created on : 15.3.2017, 10:10:29
    Author     : olda9
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.RandomAccessFile"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            int pocet;
            RandomAccessFile randSoubor;

            public void jspInit() {
                try {
                    randSoubor = new RandomAccessFile("C:\\Data\\Dropbox\\UPCE\\INPIA\\PIA01_JSP\\JSP08_CounterToFile\\web\\counter.dta", "rw");
                    pocet = randSoubor.readInt();
                    randSoubor.seek(0L);
                } catch (IOException e) {
                    e.printStackTrace();
                    pocet = 1;
                }
            }

            public void jspDestroy() {
                try {
                    ulozPocet();
                    randSoubor.close();
                    randSoubor = null;
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            private void ulozPocet() throws IOException {
                pocet++;
                randSoubor.writeInt(pocet);
                randSoubor.seek(0L);
            }
        %>

        <h2>Navštěva číslo <%=pocet%> </h2>
    </body>
</html>
