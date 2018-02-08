package com.demacia.service.impl;

import com.demacia.domain.Department;
import com.demacia.mapper.DepDao;
import com.demacia.service.DepService;
import com.demacia.utils.BaseResult;
import com.demacia.utils.StaffAndDepartment;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by songshiwen on 18/2/8.
 */
@Service("depService")
public class DepServiceImpl implements DepService {

    @Resource
    private DepDao depDao;
    public BaseResult<Department> selectDep(String name, int pageIndex, int pageSize) {
        BaseResult<Department> departmentBaseResult = new BaseResult<Department>();
        StaffAndDepartment staffAndDepartment = new StaffAndDepartment();
        staffAndDepartment.setName(name);
        staffAndDepartment.setPageIndex(pageIndex);
        staffAndDepartment.setPageSize(pageSize);
        int totalRecord = depDao.getTotal(staffAndDepartment);
        List<Department> departments = depDao.selectDep(staffAndDepartment);
        departmentBaseResult.setTotal(totalRecord);
        departmentBaseResult.setData(departments);
        return departmentBaseResult;
    }
}
