package com.wine.service;

import com.wine.model.CommonTableField;

import java.util.List;
import java.util.Map;

/**
 * 公共服务接口
 */
public interface CommonService {

    int findMaxNumberByToday(String table, String field);

    List<CommonTableField> findTableFieldInfo(String table, List<String> fieldList);

    void updateDatasBy2Map(String table, Map<String, Object> setMap, Map<String, Object> whereMap);

    List<Map<String, Object>> get2MapListFromString(String str);
}
