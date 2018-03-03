package com.demacia.mapper;

import com.demacia.domain.Mission;
import com.demacia.utils.MissionUtil;


import java.util.List;

/**
 * Created by dllo on 18/2/28.
 */
public interface MissionDao {

    List<Mission> selectMission(MissionUtil missionUtil);
    Integer getTotal(MissionUtil missionUtil);
}
