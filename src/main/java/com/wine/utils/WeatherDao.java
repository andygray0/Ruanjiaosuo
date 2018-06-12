package com.wine.utils;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import com.wine.web.bean.WeatheInfo;

public class WeatherDao {
	@Autowired
	private DataSource dataSource2;

	public void setDataSource2(DataSource dataSource2) {
		this.dataSource2 = dataSource2;
	}
	
	public WeatheInfo getLatestTemp() {
		return DBUtil.getTemperatureInfo(dataSource2);
	}
}
