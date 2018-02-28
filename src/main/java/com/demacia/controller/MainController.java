package com.demacia.controller;

import com.demacia.domain.Department;
import com.demacia.domain.Staff;
import com.demacia.service.DepService;
import com.demacia.service.StaffService;
import com.demacia.utils.BaseResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Created by songshiwen on 18/2/3.
 */
@Controller
public class MainController {


    @Resource
    private StaffService staffService;
    @Resource
    private DepService depService;


    @RequestMapping(value = {"", "/", "/index"})
    public String index() {
        return "index";
    }


    @RequestMapping("/selectStaff")
    public ModelAndView selectStaff(String username, String pwd) {
        ModelAndView mv = new ModelAndView();
        if ((username != null) && (pwd != null)) {
            String pwd1 = staffService.selectPwd(username);
            String staffName = staffService.selectStaffName(username);
            if (pwd1 ==null){
                mv.setViewName("index");
            }
            if (pwd1.equals(pwd)){
                mv.addObject("name",staffName);
                mv.setViewName("frontPage");
            }
        }
        return mv;
    }

    @RequestMapping("/frontPage")
    public String frontPage(){
        return "frontPage";
    }


    @RequestMapping("/contract")
    public String contract() {
        return "RightBody_Contract";
    }

    @RequestMapping("/personal")
    public String personal() {
        return "RightBody_Personal";
    }

    @RequestMapping("/science")
    public String science() {
        return "RightBody_Science";
    }

    @RequestMapping("/staffTable")
    public String staffTable() {
        return "staff_table";
    }

    @RequestMapping("/depTable")
    public String depTable() {
        return "department_table";
    }

    @RequestMapping("/manage")
    public String manage(){
        return "RightBody_Manage";
    }

    @RequestMapping("/satelliteManage")
    public String satelliteManage(){
        return "satelliteManage";
    }

    @RequestMapping("/rayInspection")
    public String rayInspection(){
        return "rayInspection";
    }

    @RequestMapping("/factoryManage")
    public String factoryManage(){
        return "factoryManage";
    }

    @RequestMapping("/workTeamManage")
    public String workTeamManage(){
        return "workTeamManage";
    }
    @ResponseBody
    @RequestMapping("/spiltPageStaff")
    public BaseResult<Staff> spiltPageStaff(int pageIndex, int pageSize, String name) {
        BaseResult<Staff> staffBaseResult = staffService.spiltPageStaff(pageIndex * pageSize, pageSize, name);
        return staffBaseResult;
    }

    @ResponseBody
    @RequestMapping("/spiltPageDep")
    public BaseResult<Department> spiltPageDep(int pageIndex, int pageSize, String name) {
        BaseResult<Department> departmentBaseResult = depService.selectDep(name, pageIndex * pageSize, pageSize);
        return departmentBaseResult;
    }


}
