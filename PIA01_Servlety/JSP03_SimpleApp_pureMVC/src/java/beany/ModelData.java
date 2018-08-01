/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beany;

/**
 *
 * @author olda9
 */
public class ModelData {

    private String jmeno;
    private String[] seznamPrgJazyku;

    public String jmenoBig() {
        return jmeno.toUpperCase();
    }

    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public String[] getSeznamPrgJazyku() {
        return seznamPrgJazyku;
    }

    public void setSeznamPrgJazyku(String[] seznamPrgJazyku) {
        this.seznamPrgJazyku = seznamPrgJazyku;
    }
    
}
