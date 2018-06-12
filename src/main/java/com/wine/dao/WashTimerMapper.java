package com.wine.dao;

import com.wine.model.WashTimer;
import com.wine.model.WashTimerCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WashTimerMapper {
    int countByExample(WashTimerCriteria example);

    int deleteByExample(WashTimerCriteria example);

    int deleteByPrimaryKey(Integer id);

    int insert(WashTimer record);

    int insertSelective(WashTimer record);

    List<WashTimer> selectByExample(WashTimerCriteria example);

    WashTimer selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WashTimer record, @Param("example") WashTimerCriteria example);

    int updateByExample(@Param("record") WashTimer record, @Param("example") WashTimerCriteria example);

    int updateByPrimaryKeySelective(WashTimer record);

    int updateByPrimaryKey(WashTimer record);
}