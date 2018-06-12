package com.wine.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wine.dao3.TocleanMapper;
import com.wine.model3.Toclean;
import com.wine.model3.TocleanCriteria;
import com.wine.model3.TocleanWithBLOBs;
import com.wine.service.TocleanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zhaoao on 2018/3/2.
 */
@Service
public class TocleanServiceImpl implements TocleanService {
    @Autowired
    TocleanMapper tocleanMapper;

    @Override
    public Map showlist(int page, int limit, Date dt1, Date dt2){
        Map map =new HashMap();
        PageHelper.startPage(page,limit);
        PageHelper.orderBy("ir_sid desc");
        TocleanCriteria tocleanCriteria =new TocleanCriteria();
        TocleanCriteria.Criteria criteria = tocleanCriteria.createCriteria();
        criteria.andIrLoadtimeBetween(dt1,dt2);
        List<TocleanWithBLOBs> list = tocleanMapper.selectByExampleWithBLOBs(tocleanCriteria);
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;
    }

    @Override
    public Map showTaskData(int page , int limit,String taskid){
        Map map =new HashMap();
        PageHelper.startPage(page,limit);
        PageHelper.orderBy("ir_sid desc");
        TocleanCriteria tocleanCriteria =new TocleanCriteria();
        TocleanCriteria.Criteria criteria = tocleanCriteria.createCriteria();
        criteria.andClTaskidEqualTo(taskid);
        List<TocleanWithBLOBs> list = tocleanMapper.selectByExampleWithBLOBs(tocleanCriteria);
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;
    }

}
