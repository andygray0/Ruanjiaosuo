package com.wine.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.wine.dao.LogMapper;
import com.wine.model.Log;
import com.wine.service.LogService;

public class LogServiceImpl implements LogService {
	@Autowired
	private LogMapper logMapper;
	
	public LogMapper getLogMapper() {
		return logMapper;
	}

	public void setLogMapper(LogMapper logMapper) {
		this.logMapper = logMapper;
	}

	@Override
	public int insert(Log log) {
		return logMapper.insert(log);
	}

}
