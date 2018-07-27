package com.wine.dao3;

import com.wine.model3.Urlcon;
import com.wine.model3.UrlconCriteria;
import com.wine.model3.UrlconWithBLOBs;
import java.util.List;

import com.wine.model3.YearCount;
import org.apache.ibatis.annotations.Param;

public interface UrlconMapper {
    int countByExample(UrlconCriteria example);

    int deleteByExample(UrlconCriteria example);

    int deleteByPrimaryKey(Integer irSid);

    int insert(UrlconWithBLOBs record);

    int insertSelective(UrlconWithBLOBs record);

    List<UrlconWithBLOBs> selectByExampleWithBLOBs(UrlconCriteria example);

    List<Urlcon> selectByExample(UrlconCriteria example);

    UrlconWithBLOBs selectByPrimaryKey(Integer irSid);

    int updateByExampleSelective(@Param("record") UrlconWithBLOBs record, @Param("example") UrlconCriteria example);

    int updateByExampleWithBLOBs(@Param("record") UrlconWithBLOBs record, @Param("example") UrlconCriteria example);

    int updateByExample(@Param("record") Urlcon record, @Param("example") UrlconCriteria example);

    int updateByPrimaryKeySelective(UrlconWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(UrlconWithBLOBs record);

    int updateByPrimaryKey(Urlcon record);

    List<UrlconWithBLOBs> selectBySql(@Param("fromtable") String fromtable,@Param("wheresql") String wheresql);

    List<String> selectFromTables();

    List<String> selectToTables();

    List<YearCount> getYearCount();

    Integer getTodayCollection();

    Integer getStartid();
}