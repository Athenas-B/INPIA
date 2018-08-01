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
public class Ucet {

    private String jmeno, ucet;
    private double hotovost;

    public Ucet() {
        this.jmeno = "Nemo";
        this.ucet = "1111119-0100";
        this.hotovost = 1000.0;
    }

    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public String getUcet() {
        return ucet;
    }

    public void setUcet(String ucet) {
        this.ucet = ucet;
    }

    public double getHotovost() {
        return hotovost;
    }

    public void setHotovost(double hotovost) {
        this.hotovost = hotovost;
    }
    
    
}
