/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cz.upce.spring4_maven_hello.controllers;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author olda9
 */
@Controller

public class HelloController {

    @RequestMapping("/ahoj")//jmeno pro volani jsp stranky
    public String mojeMetoda(ModelMap map, HttpServletRequest request) {

        map.addAttribute("pozdravText", "Hoj Jožine,");
        map.addAttribute("uvitaciText", "...konec semestru se blíží.");

        return "hello";
    }
}
