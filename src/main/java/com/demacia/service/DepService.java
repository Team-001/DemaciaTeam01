package com.demacia.service;

import com.demacia.domain.Department;
import com.demacia.utils.BaseResult;

/**
 * Created by songshiwen on 18/2/8.
 */
public interface DepService {
    BaseResult<Department> selectDep(String name,int pageIndex,int pageSize);
}
