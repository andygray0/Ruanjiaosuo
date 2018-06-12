package com.wine.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wine.dao.WashTimerMapper;
import com.wine.model.WashTimer;
import com.wine.model.WashTimerCriteria;
import com.wine.model.WashTimer;
import com.wine.service.WashTimerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class WashTimerServiceImpl implements WashTimerService {
@Autowired
    WashTimerMapper washTimerMapper;
    
    @Override
    public Map showlist(int page, int limit,String name){
        Map map = new HashMap();
        PageHelper.startPage(page,limit);
        PageHelper.orderBy("id desc");
        WashTimerCriteria WashTimerCriteria = new WashTimerCriteria();
        WashTimerCriteria.Criteria criteria = WashTimerCriteria.createCriteria();
        criteria.andNameLike("%"+name+"%");
        List<WashTimer> list = washTimerMapper.selectByExample(WashTimerCriteria);
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total",pageInfo.getTotal());
        map.put("rows",list);
        return map;
    }

    @Override
    public Boolean insert(WashTimer washTimer){
        washTimerMapper.insert(washTimer);
        return true;
    }

    @Override
    public Boolean deleteByID(int id){
       washTimerMapper.deleteByPrimaryKey(id);
       return true;
    }

    @Override
    public WashTimer getById(int id){
        return washTimerMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateTimer(WashTimer washTimer){
        washTimerMapper.updateByPrimaryKey(washTimer);
    }

    @Override
    public void pauseAllTimer(){
        WashTimerCriteria WashTimerCriteria = new WashTimerCriteria();
        List<WashTimer> list = washTimerMapper.selectByExample(WashTimerCriteria);
        for(int i=0;i<list.size();i++){
            list.get(i).setOnoff(0);
            washTimerMapper.updateByPrimaryKey(list.get(i));
        }
    }

    @Override
    public void stopByID(int id){
        WashTimer washTimer = washTimerMapper.selectByPrimaryKey(id);
        washTimer.setOnoff(0);
        washTimerMapper.updateByPrimaryKey(washTimer);
    }

    @Override
    public void startByID(int id){
        WashTimer washTimer = washTimerMapper.selectByPrimaryKey(id);
        washTimer.setOnoff(1);
        washTimerMapper.updateByPrimaryKey(washTimer);
    }
}