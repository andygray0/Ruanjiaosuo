package com.wine.dao;

import com.wine.model.CommonTableField;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CommonMapper {

    int findMaxNumberByToday(@Param("table") String table, @Param("field") String field);

    List<CommonTableField> findTableFieldInfo(@Param("table") String table, @Param("fieldList") List<String> fieldList);

    void updateDatasBy2Map(@Param("table") String table, @Param("setMap") Map<String, Object> setMap, @Param("whereMap") Map<String, Object> whereMap);

}
