package com.wine.web.controller;

import com.wine.model.Strategy;
import com.wine.service.StrategyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
public class StrategyController {
    @Resource
    StrategyService strategyService;

    @RequestMapping(value = "/showStrategy.do")
    @ResponseBody
    public Map showStrategy(int page ,int limit,String name){
        return strategyService.showlist(page,limit,name);
    }
    @RequestMapping(value = "/insertstrategy.do")
    @ResponseBody
    public Boolean insert(String rulename,String description,String rules){
        Strategy strategy = new Strategy();
        strategy.setDescription(description);
        strategy.setName(rulename);
        strategy.setRules(rules);
        return strategyService.insert(strategy);
    }
    @RequestMapping(value = "/deletestrategy.do")
    @ResponseBody
    public Map deletestrategy(int id){
        Map map = new HashMap();
        try{
            strategyService.deleteByID(id);
            map.put("success",true);
            map.put("id",id);
        }catch (Exception e){
            map.put("msg",e.getMessage());
            map.put("success",false);
            map.put("id",id);
        }

        return map;
    }

    @RequestMapping(value = "/strategyedit.do")
    @ResponseBody
    public Boolean strategyedit(Integer id, String name, String description, String rules){
//        String   s = null;
//        for(int i=0;i<rules.length;i++)
//        {
//            if(i<rules.length-1)
//            {
//                s+=rules[i]+",";
//            }
//            else if(i==rules.length-1)
//            {
//                s+=rules[i];
//            }
//        }
        return strategyService.strategyedit(id,name,description,rules);
    }
}
