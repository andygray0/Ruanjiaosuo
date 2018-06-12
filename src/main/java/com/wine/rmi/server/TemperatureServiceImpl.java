package com.wine.rmi.server;

import com.wine.utils.DBUtil;
import com.wine.web.bean.WeatheInfo;

public class TemperatureServiceImpl implements TemperatureService{

	@Override
	public WeatheInfo getLatestMetaTable(String recordId) {
		System.out.println("=================>> " + recordId);
		WeatheInfo mt =  DBUtil.getTemperatureInfo(recordId);
		return mt;
	}

}
