package com.wine.dao3;

import java.util.List;

import com.wine.model3.Urldirty;
import com.wine.model3.UrldirtyCriteria;
import org.apache.ibatis.annotations.Param;

public interface UrldirtyMapper {
    int countByExample(UrldirtyCriteria example);

    int deleteByExample(UrldirtyCriteria example);

    int insert(Urldirty record);

    int insertSelective(Urldirty record);

    List<Urldirty> selectByExampleWithBLOBs(UrldirtyCriteria example);

    List<Urldirty> selectByExample(UrldirtyCriteria example);

    int updateByExampleSelective(@Param("record") Urldirty record, @Param("example") UrldirtyCriteria example);

    int updateByExampleWithBLOBs(@Param("record") Urldirty record, @Param("example") UrldirtyCriteria example);

    int updateByExample(@Param("record") Urldirty record, @Param("example") UrldirtyCriteria example);
}