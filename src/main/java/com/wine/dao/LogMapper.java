package com.wine.dao;

import java.util.List;

import com.wine.model.Log;
import com.wine.model.LogCriteria;

public interface LogMapper {
    int countByExample(LogCriteria example);

    List<Log> selectByExample(LogCriteria example);

    Log selectByPrimaryKey(Integer id);
    
    int insert(Log log);
}