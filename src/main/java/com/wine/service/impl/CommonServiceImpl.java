package com.wine.service.impl;

import com.wine.dao.CommonMapper;
import com.wine.model.CommonTableField;
import com.wine.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CommonServiceImpl implements CommonService {

    @Autowired
    private CommonMapper commonMapper;


    @Override
    public int findMaxNumberByToday(String table, String field) {
        return commonMapper.findMaxNumberByToday(table, field);
    }

    @Override
    public List<CommonTableField> findTableFieldInfo(String table, List<String> fieldList) {
        return commonMapper.findTableFieldInfo(table, fieldList);
    }

    @Override
    public void updateDatasBy2Map(String table, Map<String, Object> setMap, Map<String, Object> whereMap) {
        commonMapper.updateDatasBy2Map(table,setMap,whereMap);
    }

    public List<Map<String, Object>> get2MapListFromString(String str){
        Map<String, Object> setMap = new HashMap<String, Object>();
        Map<String, Object> whereMap = new HashMap<String, Object>();
        List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

        String[] arr = str.split(",");

        for(String s : arr){
            String[] a = s.substring(1).split(":");
            if(s.startsWith("@")){
                setMap.put(a[0], a[1]);
            }
            if(s.startsWith("#")){
                whereMap.put(a[0], a[1]);
            }
            if(s.startsWith("$")){
                setMap.put(a[0], a[1] + ":" + a[2] + ":" + a[3]);
            }
        }

        list.add(setMap);
        list.add(whereMap);

        return list;
    }


}
