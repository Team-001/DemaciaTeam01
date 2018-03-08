package com.demacia.mapper;

import com.demacia.domain.Declare;
import com.demacia.utils.StaffAndDepartment;

import java.util.List;

/**
 * Created by dllo on 18/3/5.
 */
public interface DeclareDao {

    List<Declare> selectDeclare(StaffAndDepartment staffAndDepartment);

    Integer getTotal(StaffAndDepartment staffAndDepartment);

}
