package com.wine.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wine.dao.StrategyMapper;
import com.wine.model.Strategy;
import com.wine.model.StrategyCriteria;
import com.wine.service.StrategyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StrategyServiceImpl implements StrategyService {
@Autowired
    StrategyMapper strategyMapper;
    public Map showlist(int page, int limit,String name){
        Map map = new HashMap();
        PageHelper.startPage(page,limit);
        PageHelper.orderBy("id desc");
        StrategyCriteria strategyCriteria = new StrategyCriteria();
        StrategyCriteria.Criteria criteria = strategyCriteria.createCriteria();
        criteria.andNameLike("%"+name+"%");
        List<Strategy> list = strategyMapper.selectByExample(strategyCriteria);
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total",pageInfo.getTotal());
        map.put("rows",list);
        return map;
    }

    @Override
    public Boolean insert(Strategy strategy){
       strategyMapper.insert(strategy);
       return true;
    }

    @Override
    public List showlist(){
        StrategyCriteria strategyCriteria = new StrategyCriteria();
        StrategyCriteria.Criteria criteria = strategyCriteria.createCriteria();
        return strategyMapper.selectByExample(strategyCriteria);
    }

    @Override
    public Boolean deleteByID(int id){
       strategyMapper.deleteByPrimaryKey(id);
       return true;
    }

    @Override
    public Boolean strategyedit(int id,String name,String description,String rules){
        Strategy strategy = strategyMapper.selectByPrimaryKey(id);
        strategy.setName(name);
        strategy.setDescription(description);
        strategy.setRules(rules);
        strategyMapper.updateByPrimaryKeySelective(strategy);
        return true;
    }



}
