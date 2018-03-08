package com.demacia.service.impl;

import com.demacia.domain.Satellite;
import com.demacia.mapper.SatelliteDao;
import com.demacia.service.SatelliteService;
import com.demacia.utils.BaseResult;
import com.demacia.utils.SatelliteUitl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/3/7.
 */
@Service("satelliteService")
public class SatelliteServiceImpl implements SatelliteService {
    @Resource
    private SatelliteDao satelliteDao;

    public BaseResult<Satellite> selectSatellite(String sname, String manager, int pageIndex, int pageSize) {
        BaseResult<Satellite> satelliteBaseResult = new BaseResult<Satellite>();
        SatelliteUitl satelliteUitl = new SatelliteUitl();
        satelliteUitl.setSname(sname);
        satelliteUitl.setManager(manager);
        int total = satelliteDao.getTotal(satelliteUitl);
        List<Satellite> satelliteList = satelliteDao.selectSatellite(satelliteUitl);
        satelliteBaseResult.setTotal(total);
        satelliteBaseResult.setData(satelliteList);
        return satelliteBaseResult;
    }
}
