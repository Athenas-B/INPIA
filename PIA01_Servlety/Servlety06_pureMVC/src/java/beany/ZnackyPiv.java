/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beany;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author olda9
 */
public class ZnackyPiv {
     public List<String> getZnacky(String barva) {
        List<String> znacky = new ArrayList();
         switch (barva) {
             case "světlé":
                 znacky.add("Pilsner Urquell");
                 znacky.add("Budwaiser ležák");
                 znacky.add("Svijanovský máz");
                 break;
             case "tmavé":
                 znacky.add("Granát 12 - Černá Hora");
                 znacky.add("Bernard 13");
                 break;
             default:
                 znacky.add("...řízni si to sám...");
                 break;
         }
        return znacky;
    }
}
