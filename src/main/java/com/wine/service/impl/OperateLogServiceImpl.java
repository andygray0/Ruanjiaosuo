package com.wine.service.impl;

import com.mysql.jdbc.JDBC4DatabaseMetaData;
import com.wine.dao.OperateLogMapper;
import com.wine.model.OperateLog;
import com.wine.service.OperateLogService;

import com.wine.service.base.BaseServiceImpl;
import com.wine.service.base.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class OperateLogServiceImpl extends BaseServiceImpl<OperateLog,Dao> implements OperateLogService {

	@Autowired
	private OperateLogMapper mapper;

	@Override
	public Map<String, Object> findToMapListByParams() {
		return mapper.findToMapListByParams();
	}

}