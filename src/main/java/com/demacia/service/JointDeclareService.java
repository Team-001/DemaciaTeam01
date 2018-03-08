package com.demacia.service;

import com.demacia.domain.JointDeclare;
import com.demacia.utils.BaseResult;

/**
 * Created by dllo on 18/3/6.
 */
public interface JointDeclareService {

    BaseResult<JointDeclare> selectJointDeclare(String name, int pageIndex, int pageSize);


}
