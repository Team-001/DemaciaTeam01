package com.demacia.mapper;

import com.demacia.domain.Staff;
import com.demacia.utils.StaffAndDepartment;

import java.util.List;

/**
 * Created by songshiwen on 18/2/5.
 */
public interface StaffDao {
    String selectPwd(String username);
    List<Staff> selectAllStaff(StaffAndDepartment staffAndDepartment);
    Integer getTotal(StaffAndDepartment staffAndDepartment);
    String selectStaffName(String username);
}
