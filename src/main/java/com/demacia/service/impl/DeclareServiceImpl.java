package com.demacia.service.impl;

import com.demacia.domain.Declare;
import com.demacia.mapper.DeclareDao;
import com.demacia.service.DeclareService;
import com.demacia.utils.BaseResult;
import com.demacia.utils.StaffAndDepartment;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by dllo on 18/3/5.
 */
@Service("declareService")
public class DeclareServiceImpl implements DeclareService {

    @Resource
    private DeclareDao declareDao;

    public BaseResult<Declare> selectDeclare(String name, int pageIndex, int pageSize) {
        BaseResult<Declare> declareBaseResult = new BaseResult<Declare>();
        StaffAndDepartment staffAndDepartment = new StaffAndDepartment();
        staffAndDepartment.setName(name);
        staffAndDepartment.setPageIndex(pageIndex);
        staffAndDepartment.setPageSize(pageSize);
        int totalRecord = declareDao.getTotal(staffAndDepartment);
        List<Declare> declareList = declareDao.selectDeclare(staffAndDepartment);
        declareBaseResult.setTotal(totalRecord);
        declareBaseResult.setData(declareList);
        return declareBaseResult;
    }
}
