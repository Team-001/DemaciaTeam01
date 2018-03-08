package com.demacia.service;

import com.demacia.domain.Declare;
import com.demacia.utils.BaseResult;
import com.demacia.utils.StaffAndDepartment;

import java.util.List;

/**
 * Created by dllo on 18/3/5.
 */
public interface DeclareService {

    BaseResult<Declare> selectDeclare(String name,int pageIndex,int pageSize);


}
