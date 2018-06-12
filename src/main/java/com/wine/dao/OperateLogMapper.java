package com.wine.dao;

import com.wine.model.OperateLog;
import com.wine.service.base.BaseMapper;

public interface OperateLogMapper extends BaseMapper<OperateLog> {

    int insertOne(OperateLog log);

}