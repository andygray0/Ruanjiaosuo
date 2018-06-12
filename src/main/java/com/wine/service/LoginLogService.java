package com.wine.service;

import com.wine.model.LoginLog;
import com.wine.service.base.BaseService;

import java.util.List;
import java.util.Map;

public interface LoginLogService extends BaseService<LoginLog> {

    int countTotalWithParams(Map<String, Object> paramsMap);

    List<LoginLog> findByPageWithParams(Map<String, Object> paramsMap);

}
