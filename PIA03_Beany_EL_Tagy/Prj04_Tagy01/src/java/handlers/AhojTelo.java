package handlers;

import java.io.IOException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTagSupport;
import static javax.servlet.jsp.tagext.Tag.SKIP_BODY;

public class AhojTelo extends BodyTagSupport {
//... metoda doAfterBody() - voli se vzdy, kdyz je telo znazky nactene!!!

    public int doAfterBody() {
        BodyContent telo = getBodyContent();   //... instance pro obsah tela
        String stelo = telo.getString();       // ziskani obsahu tela (retezec)
        stelo = stelo.toUpperCase();   //... AKCE!!!!
        try {
            JspWriter out = telo.getEnclosingWriter();    //... writer pro JSP
            out.println(stelo);
        } catch (IOException ex) {
            System.err.println("Chyba těla.");
        }
        return SKIP_BODY;
    }
}
