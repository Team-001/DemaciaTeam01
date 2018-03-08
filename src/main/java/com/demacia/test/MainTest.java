package com.demacia.test;

import com.demacia.domain.*;
import com.demacia.mapper.*;
import com.demacia.utils.MissionUtil;
import com.demacia.utils.SatelliteUitl;
import com.demacia.utils.StaffAndDepartment;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by songshiwen on 18/2/5.
 */
public class MainTest {

    private StaffDao dao;
    private ApplicationContext c;
    private DepDao depDao;
    private MissionDao missionDao;
    private DeclareDao declareDao;
    private JointDeclareDao jointDeclareDao;
    private SatelliteDao satelliteDao;

    @Before
    public void init(){
        c =new ClassPathXmlApplicationContext("classpath*:spring-*.xml");
        dao = c.getBean(StaffDao.class);
        depDao = c.getBean(DepDao.class);
        missionDao=c.getBean(MissionDao.class);
        declareDao = c.getBean(DeclareDao.class);
        jointDeclareDao = c.getBean(JointDeclareDao.class);
        satelliteDao = c.getBean(SatelliteDao.class);
    }

    @Test
    public void test(){
        StaffAndDepartment staffAndDepartment = new StaffAndDepartment();
        staffAndDepartment.setPageIndex(1);
        staffAndDepartment.setPageSize(3);
        staffAndDepartment.setName("");
        int total = dao.getTotal(staffAndDepartment);
        List<Staff> staffs = dao.selectAllStaff(staffAndDepartment);
        System.out.println(total);
        System.out.println(staffs);
    }

    @Test
    public void test1(){
        StaffAndDepartment staffAndDepartment = new StaffAndDepartment();
        staffAndDepartment.setName("");
        staffAndDepartment.setPageIndex(1);
        staffAndDepartment.setPageSize(3);
        int total = depDao.getTotal(staffAndDepartment);
        List<Department> departments = depDao.selectDep(staffAndDepartment);
        System.out.println(total);
        System.out.println(departments);
    }

    @Test
    public void test2(){
        MissionUtil missionUtil = new MissionUtil();
//        missionUtil.setApplyDate("2018-02-01");
//        missionUtil.setmName("卫星");
//        missionUtil.setApplicant("李四");
//        missionUtil.setDepartment("工程部");
        missionUtil.setPrint("是");
        missionUtil.setPageIndex(0);
        missionUtil.setPageSize(3);
        int total = missionDao.getTotal(missionUtil);
        List<Mission> missionList = missionDao.selectMission(missionUtil);
        System.out.println(total);
        System.out.println(missionList);
    }

    @Test
    public void DeclareTest(){
        StaffAndDepartment staffAndDepartment = new StaffAndDepartment();
        staffAndDepartment.setName("");
        staffAndDepartment.setPageIndex(0);
        staffAndDepartment.setPageSize(3);
        int total = declareDao.getTotal(staffAndDepartment);
        List<Declare> declareList = declareDao.selectDeclare(staffAndDepartment);
        System.out.println(total);
        System.out.println(declareList);
    }

    @Test
    public void JDeclareTest(){
        StaffAndDepartment staffAndDepartment = new StaffAndDepartment();
        staffAndDepartment.setName("");
        staffAndDepartment.setPageIndex(0);
        staffAndDepartment.setPageSize(3);
        int total = jointDeclareDao.getTotal(staffAndDepartment);
        List<JointDeclare> jointDeclareList = jointDeclareDao.selectJointDeclare(staffAndDepartment);
        System.out.println(total);
        System.out.println(jointDeclareList);
    }

    @Test
    public void satellite(){
        SatelliteUitl satelliteUitl = new SatelliteUitl();
        satelliteUitl.setSname("");
        satelliteUitl.setManager("");
        satelliteUitl.setPageIndex(0);
        satelliteUitl.setPageSize(3);
        int total = satelliteDao.getTotal(satelliteUitl);
        List<Satellite> satelliteList = satelliteDao.selectSatellite(satelliteUitl);
        System.out.println(total);
        System.out.println(satelliteList);
    }
}
