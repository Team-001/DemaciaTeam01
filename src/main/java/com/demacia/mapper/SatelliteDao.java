package com.demacia.mapper;

import com.demacia.domain.Satellite;
import com.demacia.utils.SatelliteUitl;

import java.util.List;

/**
 * Created by dllo on 18/3/7.
 */
public interface SatelliteDao {

    List<Satellite> selectSatellite(SatelliteUitl satelliteUitl);

    Integer getTotal(SatelliteUitl satelliteUitl);

}
