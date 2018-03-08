package com.demacia.service;

import com.demacia.domain.Satellite;
import com.demacia.utils.BaseResult;

/**
 * Created by dllo on 18/3/7.
 */
public interface SatelliteService {
    BaseResult<Satellite> selectSatellite(String sname, String manager, int pageIndex, int pageSize);

}
