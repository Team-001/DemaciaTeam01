package com.demacia.service.impl;

import com.demacia.domain.Staff;
import com.demacia.mapper.StaffDao;
import com.demacia.service.StaffService;
import com.demacia.utils.BaseResult;
import com.demacia.utils.StaffAndDepartment;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by songshiwen on 18/2/6.
 */
@Service("staffService")
public class StaffServiceImpl implements StaffService {
    @Resource
    private StaffDao staffDao;


    public String selectPwd(String name) {
        return staffDao.selectPwd(name);
    }

    public BaseResult<Staff> spiltPageStaff(int pageIndex, int pageSize,String name) {
        StaffAndDepartment staffAndDepartment = new StaffAndDepartment();
        staffAndDepartment.setPageIndex(pageIndex);
        staffAndDepartment.setPageSize(pageSize);
        staffAndDepartment.setName(name);
        int totalRecord = staffDao.getTotal(staffAndDepartment);
        List<Staff> staffList = staffDao.selectAllStaff(staffAndDepartment);
        BaseResult<Staff> staffBaseResult = new BaseResult<Staff>();
        staffBaseResult.setTotal(totalRecord);
        staffBaseResult.setData(staffList);
        return staffBaseResult;
    }


}
