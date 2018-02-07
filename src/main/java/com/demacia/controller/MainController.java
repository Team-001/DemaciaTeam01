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


    @RequestMapping(value = {"", "/", "/index"})
    public String index() {
        return "index";
    }


//    @RequestMapping("/selectStaff")
//    public String selectStaff(String name, String pwd) {
//        if (name != null && pwd != null) {
//
//            String pwd1 = staffService.selectStaff(name);
//            if (pwd1.equals(pwd)) {
//                return "frontPage";
//            } else {
//                return "index";
//            }
//        } else {
//            return "index";
//        }
//    }

    @RequestMapping("/sele")
    public String sele() {
        return "frontPage";
    }

    @RequestMapping("/contract")
    public String contract(){
        return "RightBody_Contract";
    }
    @RequestMapping("/personal")
    public String personal(){
        return "RightBody_Personal";
    }

    @RequestMapping("/science")
    public String science(){
        return "RightBody_Science";
    }


}
