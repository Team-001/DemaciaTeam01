package com.demacia.controller;

import com.demacia.domain.Staff;
import com.demacia.service.StaffService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by songshiwen on 18/2/3.
 */
@Controller
public class MainController {


    @Resource
    private StaffService staffService;



    @RequestMapping(value = {"","/","/index"})
    public String index(){
        return "index";
    }


    @RequestMapping("/selectStaff")
    public String selectStaff(String name,String pwd){
        String pwd1 = staffService.selectStaff(name);
        if (pwd1.equals(pwd)){
            return "home";
        }else {
            return "index";
        }
    }
    @RequestMapping("/sele")
    @ResponseBody
    public String sele(){
        return "xl";
    }

}
