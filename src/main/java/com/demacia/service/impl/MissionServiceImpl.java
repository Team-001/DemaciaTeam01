package com.demacia.service.impl;

import com.demacia.domain.Mission;
import com.demacia.mapper.MissionDao;
import com.demacia.service.MissionService;
import com.demacia.utils.BaseResult;
import com.demacia.utils.MissionUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by dllo on 18/3/1.
 */
@Service("missionService")
public class MissionServiceImpl implements MissionService {

    @Resource
    private MissionDao missionDao;

    public BaseResult<Mission> showMission(int pageIndex, int pageSize, String applyDate, String stage, String applicant, String department, String print) {
        MissionUtil missionUtil = new MissionUtil();
        missionUtil.setApplyDate(applyDate);
        missionUtil.setmName(stage);
        missionUtil.setApplicant(applicant);
        missionUtil.setDepartment(department);
        missionUtil.setPrint(print);
        missionUtil.setPageIndex(pageIndex);
        missionUtil.setPageSize(pageSize);
        int totalRecord = missionDao.getTotal(missionUtil);
        List<Mission> missionList = missionDao.selectMission(missionUtil);
        BaseResult<Mission> missionBaseResult = new BaseResult<Mission>();
        missionBaseResult.setData(missionList);
        missionBaseResult.setTotal(totalRecord);
        return missionBaseResult;
    }
}
