package com.demacia.test;

import com.demacia.domain.Department;
import com.demacia.domain.Staff;
import com.demacia.mapper.DepDao;
import com.demacia.mapper.StaffDao;
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

    @Before
    public void init(){
        c =new ClassPathXmlApplicationContext("classpath*:spring-*.xml");
        dao = c.getBean(StaffDao.class);
        depDao = c.getBean(DepDao.class);
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
}
