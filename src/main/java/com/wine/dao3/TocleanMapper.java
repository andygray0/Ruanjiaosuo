package com.wine.dao3;

import com.wine.model3.Toclean;
import com.wine.model3.TocleanCriteria;
import com.wine.model3.TocleanWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TocleanMapper {
    int countByExample(TocleanCriteria example);

    int deleteByExample(TocleanCriteria example);

    int deleteByPrimaryKey(String irHkey);

    int insert(TocleanWithBLOBs record);

    int insertSelective(TocleanWithBLOBs record);

    List<TocleanWithBLOBs> selectByExampleWithBLOBs(TocleanCriteria example);

    List<Toclean> selectByExample(TocleanCriteria example);

    TocleanWithBLOBs selectByPrimaryKey(String irHkey);

    int updateByExampleSelective(@Param("record") TocleanWithBLOBs record, @Param("example") TocleanCriteria example);

    int updateByExampleWithBLOBs(@Param("record") TocleanWithBLOBs record, @Param("example") TocleanCriteria example);

    int updateByExample(@Param("record") Toclean record, @Param("example") TocleanCriteria example);

    int updateByPrimaryKeySelective(TocleanWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(TocleanWithBLOBs record);

    int updateByPrimaryKey(Toclean record);
}