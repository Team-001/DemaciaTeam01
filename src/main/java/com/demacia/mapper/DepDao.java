package com.demacia.mapper;

import com.demacia.domain.Department;
import com.demacia.utils.StaffAndDepartment;

import java.util.List;

/**
 * Created by songshiwen on 18/2/8.
 */
public interface DepDao {
    Integer getTotal(StaffAndDepartment staffAndDepartment);
    List<Department> selectDep(StaffAndDepartment staffAndDepartment);
}
