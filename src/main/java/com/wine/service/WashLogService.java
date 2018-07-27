package com.wine.service;

import com.wine.model.WashLog;
import com.wine.service.base.BaseService;

import java.util.List;
import java.util.Map;

public interface WashLogService extends BaseService<WashLog> {
    void insert(WashLog washLog);
    void update(WashLog washLog);
    WashLog getByID(int id);
    int findAllLogs(String date);
    Map showlogs(int limit , int page , String name);
    Integer getTodayWash();
}
