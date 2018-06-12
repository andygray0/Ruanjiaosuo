package com.wine.rmi.server;

import com.wine.web.bean.WeatheInfo;

public interface TemperatureService {
	WeatheInfo getLatestMetaTable(String recordId);
}
