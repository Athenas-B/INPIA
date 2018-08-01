package handlers;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.JspWriter;
import static javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE;
import static javax.servlet.jsp.tagext.Tag.EVAL_PAGE;
import javax.servlet.jsp.tagext.TagSupport;

public class AhojJmeno extends TagSupport {

    private String jmeno;

    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public int doStartTag() throws JspTagException {
        return EVAL_BODY_INCLUDE;
    }

    public int doEndTag() throws JspTagException {
        DateFormat df = DateFormat.getDateInstance();
        String datum = df.format(new Date());
        try {
            JspWriter out = pageContext.getOut();
            System.out.print("Jmeno = " + jmeno);
            out.print("Ahoj člověče jménem <b>" + jmeno + "</b>.<br>");
            out.print("Moje jméno třídy-beany je \"" + getClass().getName()
                    + "\" a dnes je " + datum + ".<p/>");
        } catch (IOException ex) {
            throw new JspTagException("Chyba: Muj tag nemůže zapisovat do JSP");
        }
        return EVAL_PAGE;
    }
}
