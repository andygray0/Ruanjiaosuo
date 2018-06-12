package com.wine.dao;

import com.wine.model.WashLog;
import com.wine.model.WashLogCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WashLogMapper {
    int countByExample(WashLogCriteria example);

    int deleteByExample(WashLogCriteria example);

    int deleteByPrimaryKey(Integer id);

    int insert(WashLog record);

    int insertSelective(WashLog record);

    List<WashLog> selectByExample(WashLogCriteria example);

    WashLog selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WashLog record, @Param("example") WashLogCriteria example);

    int updateByExample(@Param("record") WashLog record, @Param("example") WashLogCriteria example);

    int updateByPrimaryKeySelective(WashLog record);

    int updateByPrimaryKey(WashLog record);
}