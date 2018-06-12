package com.wine.dao;

import com.wine.model.LoginLog;
import com.wine.service.base.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface LoginLogMapper extends BaseMapper<LoginLog> {

    int insertOne(LoginLog log);

    int countTotalWithParams(Map<String, Object> paramsMap);

    List<LoginLog> findByPageWithParams(Map<String, Object> paramsMap);

}