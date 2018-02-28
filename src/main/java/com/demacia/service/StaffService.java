package com.demacia.service;

import com.demacia.domain.Staff;
import com.demacia.utils.BaseResult;
import com.demacia.utils.StaffAndDepartment;

import java.util.List;

/**
 * Created by songshiwen on 18/2/5.
 */
public interface StaffService {
    String selectPwd(String username);
    BaseResult<Staff> spiltPageStaff(int pageIndex,int pageSize,String name);
    String selectStaffName(String username);

}
