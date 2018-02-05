package com.demacia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by songshiwen on 18/2/3.
 */
@Controller
public class MainController {


    @RequestMapping(value = {"","/","/index"})
    public String index(){
        return "index";
    }
}
