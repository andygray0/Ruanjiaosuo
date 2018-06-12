package com.wine.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wine.dao.WashLogMapper;
import com.wine.model.WashLog;
import com.wine.model.WashLogCriteria;
import com.wine.service.WashLogService;
import com.wine.service.base.BaseServiceImpl;
import com.wine.service.base.Dao;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WashLogServiceImpl extends BaseServiceImpl<WashLog,Dao> implements WashLogService {
    @Autowired
    WashLogMapper washLogMapper;
    @Override
    public void insert(WashLog washLog){
        washLogMapper.insert(washLog);
    }

    @Override
    public void update(WashLog washLog){
        washLogMapper.updateByPrimaryKey(washLog);
    }

    @Override
    public WashLog getByID(int id){
        return washLogMapper.selectByPrimaryKey(id);
    }

    @Override
    public int findAllLogs(String date){
        WashLogCriteria washLogCriteria = new WashLogCriteria();
        WashLogCriteria.Criteria criteria = washLogCriteria.createCriteria();
        criteria.andNameLike(date+"%");
        return washLogMapper.selectByExample(washLogCriteria).size();
    }

    @Override
    public Map showlogs(int limit , int page , String name){
        Map map = new HashMap();
        PageHelper.startPage(page,limit);
        PageHelper.orderBy("id desc");
        WashLogCriteria washLogCriteria = new WashLogCriteria();
        WashLogCriteria.Criteria criteria = washLogCriteria.createCriteria();
        criteria.andNameLike("%"+name+"%");
        List<WashLog> list = washLogMapper.selectByExample(washLogCriteria);
        PageInfo pageInfo =new PageInfo(list);
        map.put("total",pageInfo.getTotal());
        map.put("rows",list);
        return map;
    }
}
