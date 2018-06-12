package com.wine.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wine.dao3.RuleMapper;
import com.wine.model3.RuleCriteria;
import com.wine.model3.Rule;
import com.wine.service.RuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class RuleServiceImpl implements RuleService {
    @Autowired
    RuleMapper ruleMapper;


    @Override
    public int insert(Rule rule){
        ruleMapper.insert(rule);
        return 1;
    }

    /**
     　　* 分页显示记录
     　　* limit 每页记录数，page 第几页
     * @author zhaoao
    　　*/
    @Override
    public Map showlist(int page, int limit,String name){
        Map map = new HashMap();
        PageHelper.startPage(page,limit);
        PageHelper.orderBy("modify desc");
        RuleCriteria  ruleCriteria = new RuleCriteria();
        RuleCriteria.Criteria criteria = ruleCriteria.createCriteria();
        criteria.andNameLike("%"+name+"%");
        List<Rule> list = ruleMapper.selectByExample(ruleCriteria);
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total",pageInfo.getTotal());
        map.put("rows",list);
        return map;
    }

    @Override
    public Boolean deleteByID(int id){
        ruleMapper.deleteByPrimaryKey(id);
        return true;
    }
    @Override
    public Boolean ruleedit(Integer id,String name,String description){
        Rule rule = ruleMapper.selectByPrimaryKey(id);
        rule.setName(name);
        rule.setDescription(description);
        rule.setModify(new Date());
        ruleMapper.updateByPrimaryKeySelective(rule);
        return true;
    }

    @Override
    public Rule getById(Integer id){
       return ruleMapper.selectByPrimaryKey(id);
    }

    @Override
    public Boolean changejar(Rule rule){
        ruleMapper.updateByPrimaryKeySelective(rule);
        return true;
    }

    @Override
    public List<Rule> showall(){
        RuleCriteria  ruleCriteria = new RuleCriteria();
        RuleCriteria.Criteria criteria = ruleCriteria.createCriteria();
        return ruleMapper.selectByExample(ruleCriteria);
    }

    @Override
    public String getNamesByIds(String rule){
        List<String> rules =  Arrays.asList(rule.split(","));
        String result = "";
        for(int i=0;i<rules.size();i++){
            Rule ruleq =ruleMapper.selectByPrimaryKey(Integer.parseInt(rules.get(i)));
            if(result=="") {
                result = ruleq.getName();
            }
            else{
                result = result + "+" + ruleq.getName();
            }
        }
        return result;
    }

}
