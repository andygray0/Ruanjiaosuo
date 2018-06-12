package com.wine.service.impl;

import com.wine.dao.LoginLogMapper;
import com.wine.model.LoginLog;
import com.wine.service.LoginLogService;

import com.wine.service.base.BaseServiceImpl;
import com.wine.service.base.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class LoginLogServiceImpl extends BaseServiceImpl<LoginLog,Dao> implements LoginLogService {

	@Autowired
	private LoginLogMapper mapper;

	@Override
	public int countTotalWithParams(Map<String, Object> paramsMap) {
		return mapper.countTotalWithParams(paramsMap);
	}

	@Override
	public List<LoginLog> findByPageWithParams(Map<String, Object> paramsMap) {
		return mapper.findByPageWithParams(paramsMap);
	}
}