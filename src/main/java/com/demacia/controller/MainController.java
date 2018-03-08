package com.demacia.controller;

import com.demacia.domain.*;
import com.demacia.service.*;
import com.demacia.utils.BaseResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.Date;

/**
 * Created by songshiwen on 18/2/3.
 */
@Controller
public class MainController {


    @Resource
    private StaffService staffService;
    @Resource
    private DepService depService;
    @Resource
    private MissionService missionService;
    @Resource
    private ProjectService projectService;
    @Resource
    private DeclareService declareService;
    @Resource
    private JointDeclareService jointDeclareService;
    @Resource
    private SatelliteService satelliteService;



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
            }else {
                mv.setViewName("index");
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

    @RequestMapping("/declareTable")
    public String declareTable() {
        return "declare_table";
    }
    @RequestMapping("/jointDeclareTable")
    public String jointDeclareTable() {
        return "jointDeclare_table";
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

    @ResponseBody
    @RequestMapping("/splitMission")
    public BaseResult<Mission> splitMission1 (int pageIndex, int pageSize, String applyDate,
                                             String mName, String applicant, String department, String print){
        BaseResult<Mission> missionBaseResult = missionService.showMission(pageIndex*pageSize,pageSize,applyDate,mName
        ,applicant,department,print);
        System.out.println(missionBaseResult);
        return missionBaseResult;
    }

    @ResponseBody
    @RequestMapping("/submitProject")
    public ModelAndView submitProject(Project project){
    int number = projectService.projectSubmit(project);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("success");
        return mv;
    }

    @ResponseBody
    @RequestMapping("/splitDeclare")
    public BaseResult<Declare> splitDeclare(int pageIndex, int pageSize, String name){
        BaseResult<Declare> declareBaseResult = declareService.selectDeclare(name, pageIndex * pageSize, pageSize);
        return declareBaseResult;
    }

    @ResponseBody
    @RequestMapping("/splitJointDeclare")
    public BaseResult<JointDeclare> splitJointDeclare(int pageIndex, int pageSize, String name){
        BaseResult<JointDeclare> jointDeclareBaseResult = jointDeclareService.selectJointDeclare(name, pageIndex * pageSize, pageSize);
        return jointDeclareBaseResult;
    }

    @ResponseBody
    @RequestMapping("/splitSatellite")
    public BaseResult<Satellite> splitSatellite(int pageIndex, int pageSize, String sname, String manager){
        BaseResult<Satellite> satelliteBaseResult = satelliteService.selectSatellite(sname, manager, pageIndex * pageSize, pageSize);
        System.out.println(satelliteBaseResult);
        return satelliteBaseResult;
    }


}
