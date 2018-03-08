package com.demacia.service.impl;

import com.demacia.domain.JointDeclare;
import com.demacia.mapper.JointDeclareDao;
import com.demacia.service.JointDeclareService;
import com.demacia.utils.BaseResult;
import com.demacia.utils.StaffAndDepartment;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/3/6.
 */
@Service("jointDeclareService")
public class JointDeclareServiceImpl implements JointDeclareService {
    @Resource
    private JointDeclareDao jointDeclareDao;

    public BaseResult<JointDeclare> selectJointDeclare(String name, int pageIndex, int pageSize) {
        BaseResult<JointDeclare> jointDeclareBaseResult = new BaseResult<JointDeclare>();
        StaffAndDepartment staffAndDepartment = new StaffAndDepartment();
        staffAndDepartment.setName(name);
        staffAndDepartment.setPageIndex(pageIndex);
        staffAndDepartment.setPageSize(pageSize);
        int total = jointDeclareDao.getTotal(staffAndDepartment);
        List<JointDeclare> jointDeclareList = jointDeclareDao.selectJointDeclare(staffAndDepartment);
        jointDeclareBaseResult.setTotal(total);
        jointDeclareBaseResult.setData(jointDeclareList);
        return jointDeclareBaseResult;
    }
}
