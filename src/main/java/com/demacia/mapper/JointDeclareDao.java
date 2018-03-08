package com.demacia.mapper;

import com.demacia.domain.JointDeclare;
import com.demacia.utils.StaffAndDepartment;

import java.util.List;

/**
 * Created by dllo on 18/3/6.
 */
public interface JointDeclareDao {

    List<JointDeclare> selectJointDeclare(StaffAndDepartment staffAndDepartment);

    Integer getTotal(StaffAndDepartment staffAndDepartment);

}
