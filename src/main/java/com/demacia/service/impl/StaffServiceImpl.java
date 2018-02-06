package com.demacia.service.impl;

import com.demacia.mapper.StaffDao;
import com.demacia.service.StaffService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by songshiwen on 18/2/6.
 */
@Service("staffService")
public class StaffServiceImpl implements StaffService {
    @Resource
    private StaffDao staffDao;


    public String selectStaff(String name) {
        return staffDao.selectStaff(name);
    }
}
