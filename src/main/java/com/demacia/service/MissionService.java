package com.demacia.service;

import com.demacia.domain.Mission;
import com.demacia.utils.BaseResult;

import java.util.Date;

/**
 * Created by dllo on 18/3/1.
 */
public interface MissionService {
    BaseResult<Mission> showMission(int pageIndex,
                                    int pageSize,
                                    String applyDate,
                                    String stage,
                                    String applicant,
                                    String department,
                                    String print);


}
