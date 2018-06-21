package com.wine.web.controller;


import com.wine.model.Strategy;
import com.wine.model.Rule;
import com.wine.service.RuleService;
import com.wine.service.StrategyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class RuleController {
    @Resource
    RuleService ruleService;
    @Resource
    StrategyService strategyService;

    @RequestMapping(value = "/insertrule.do")
    @ResponseBody
    public int insert(String rulename,String description,String path,String bz) {
        Rule rule =new Rule();
        rule.setName(rulename);
        rule.setPath(path);
        rule.setBz(bz);
        rule.setDescription(description);
        return ruleService.insert(rule);
    }
    @RequestMapping(value = "/changejar.do")
    @ResponseBody
    public Boolean changejar(Integer id,String path,String bz2) {
        Rule rule =ruleService.getById(id);
        rule.setPath(path);
        rule.setBz(bz2);
        rule.setModify(new Date());
        return ruleService.changejar(rule);
    }
    @RequestMapping(value = "/showrules.do")
    @ResponseBody
    public Map show(int page ,int limit,String name){
        return ruleService.showlist(page,limit,name);
    }
    @RequestMapping(value = "/deleterule.do")
    @ResponseBody
    public Map delete(int id ){
        Map map = new HashMap();
        try{
            ruleService.deleteByID(id);
            map.put("success",true);
            map.put("id",id);
        }catch (Exception e){
            map.put("msg",e.getMessage());
            map.put("success",false);
            map.put("id",id);
        }

        return map;
    }
    @RequestMapping(value = "/ruleedit.do")
    @ResponseBody
    public Boolean ruleedit(Integer id,String name,String description){
        return ruleService.ruleedit(id,name,description);
    }
    @RequestMapping(value = "/exportjar.do")
    @ResponseBody
    public void exportExcel(HttpServletResponse response, Integer id) {
        Rule rule = ruleService.getById(id);
        String excelPath = "F:\\upload\\"+rule.getBz();
        try{
            File sss = new File(excelPath);
            InputStream bis = new BufferedInputStream(new FileInputStream(sss));
            response.reset();
            response.setContentType("application/vnd.ms-excel;charset=utf-8");
            response.setHeader("Content-Disposition", "attachment;filename="
                    + new String((rule.getBz()).getBytes(), "iso-8859-1"));
            int len = 0;
            BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
            while((len = bis.read()) != -1){
                out.write(len);
                out.flush();
            }
            out.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        }

    @RequestMapping(value = "/rulelist.do")
    @ResponseBody
    public List<Rule> showlist(){
        List list = ruleService.showall();
        return list;
    }

    @RequestMapping(value = "/ruleslist.do")
    @ResponseBody
    public List showlists(){
        List<Rule> list = ruleService.showall();
        List list2 = strategyService.showlist();
        for(int i=0;i<list.size();i++){
            Strategy  strategy = new Strategy();
            strategy.setName(list.get(i).getName());
            strategy.setRules(list.get(i).getId().toString());
            list2.add(strategy);
        }
        return list2;
    }
}
