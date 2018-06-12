package com.wine.dao3;

import com.wine.model3.Tobewash;
import com.wine.model3.TobewashCriteria;
import com.wine.model3.TobewashKey;
import com.wine.model3.TobewashWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TobewashMapper {
    int countByExample(TobewashCriteria example);

    int deleteByExample(TobewashCriteria example);

    int deleteByPrimaryKey(TobewashKey key);

    int insert(TobewashWithBLOBs record);

    int insertSelective(TobewashWithBLOBs record);

    List<TobewashWithBLOBs> selectByExampleWithBLOBs(TobewashCriteria example);

    List<Tobewash> selectByExample(TobewashCriteria example);

    TobewashWithBLOBs selectByPrimaryKey(TobewashKey key);

    int updateByExampleSelective(@Param("record") TobewashWithBLOBs record, @Param("example") TobewashCriteria example);

    int updateByExampleWithBLOBs(@Param("record") TobewashWithBLOBs record, @Param("example") TobewashCriteria example);

    int updateByExample(@Param("record") Tobewash record, @Param("example") TobewashCriteria example);

    int updateByPrimaryKeySelective(TobewashWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(TobewashWithBLOBs record);

    int updateByPrimaryKey(Tobewash record);
    List<TobewashWithBLOBs> selectBySqlWithBLOBs(String whereSql);
    List<Tobewash> selectBySql(String whereSql);

    int modify(@Param("sql") String sql ,@Param("column") String column , @Param("modify") String modify);
}