package com.wine.service;

import com.mysql.jdbc.JDBC4DatabaseMetaData;
import com.wine.model.OperateLog;
import com.wine.service.base.BaseService;

import java.util.List;
import java.util.Map;

public interface OperateLogService extends BaseService<OperateLog> {


    Map<String,Object> findToMapListByParams();

}
