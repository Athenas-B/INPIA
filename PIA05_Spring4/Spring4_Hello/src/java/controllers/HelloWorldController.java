/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author olda9
 */
@Controller
@RequestMapping("/ahoj.htm")
public class HelloWorldController {

    @RequestMapping(method = RequestMethod.GET)
    public String mojeMetoda(ModelMap modelMap) {
        System.out.println("Moje kontrola metody - do KONZOLE");
        modelMap.put("tiskniMe", "Ahojky SVĚTE!!!");
        return "index";
    }
}
