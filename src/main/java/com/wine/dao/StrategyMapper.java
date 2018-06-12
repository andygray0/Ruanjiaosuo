package com.wine.dao;

import com.wine.model.Strategy;
import com.wine.model.StrategyCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface StrategyMapper {
    int countByExample(StrategyCriteria example);

    int deleteByExample(StrategyCriteria example);

    int deleteByPrimaryKey(Integer id);

    int insert(Strategy record);

    int insertSelective(Strategy record);

    List<Strategy> selectByExample(StrategyCriteria example);

    Strategy selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Strategy record, @Param("example") StrategyCriteria example);

    int updateByExample(@Param("record") Strategy record, @Param("example") StrategyCriteria example);

    int updateByPrimaryKeySelective(Strategy record);

    int updateByPrimaryKey(Strategy record);
}