package com.wine.web.controller;
import com.wine.model.*;
import com.wine.model3.*;
import com.wine.service.*;
import com.wine.utils.StrKit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.lang.reflect.Field;
import java.util.*;


@Controller
@RequestMapping("/datamanage")
public class DataManageController {
    @Autowired
    private UrlconService urlconService;
    @Autowired
    private TobewashService tobewashService;

    @RequestMapping(value = "/showQuery.do")
    @ResponseBody
    public Map showQuery(Integer limit, Integer page, String sql,String i) {
        Map map = new HashMap();
        if(i.equals("")){
            return null;
        }
        if (i.equals("urlcontent")) {
            map = tobewashService.showQuery(limit, page, sql);
        } else {
            map = urlconService.showQuery(limit, page,i,sql);
        }
        return map;
    }

    @RequestMapping(value = "/getFromTables.do")
    @ResponseBody
    public List<String> getFromTable(){
        return urlconService.showFromTables();
    }

    @RequestMapping(value = "/getToTables.do")
    @ResponseBody
    public List<String> getToTable(){
        return urlconService.showToTables();
    }

    @RequestMapping(value = "/getFieldList.do")
    @ResponseBody
    public Map getfields(){
        Map map =new HashMap();
        PersonWashCleanResult urlcon = new PersonWashCleanResult();
        Field[] fields=urlcon.getClass().getDeclaredFields();
        List<String> list = new ArrayList<String>();
        for(int i=1; i<fields.length;i++){
            list.add(StrKit.camelToUnderline(fields[i].getName()));
        }
        map.put("fields",list);
        return map;
    }
    @RequestMapping(value = "/getFieldList1.do")
    @ResponseBody
    public Map getfields1(){
        Map map =new HashMap();
        Tobewash tobewash = new Tobewash();
        Field[] fields=tobewash.getClass().getDeclaredFields();
        List<String> list = new ArrayList<String>();
        for(int i=0; i<fields.length-1;i++){
            list.add(StrKit.camelToUnderline(fields[i].getName()));
        }
        map.put("fields",list);
        return map;
    }

    @RequestMapping(value = "/getColumns.do")
    @ResponseBody
    public Map getColumns(String i) {
        Map map = new HashMap();
        if (i.equals("urlcontent")) {
            map = tobewashService.getColumns();
        } else {
            map = urlconService.getColumns();
        }
        return map;
    }

    @RequestMapping(value = "/getColumn.do")
    @ResponseBody
    public Map getColumn() {
        Map map =new HashMap();
        PersonWashWaitCheckData tobewash = new PersonWashWaitCheckData();
        Field[] fields=tobewash.getClass().getDeclaredFields();
        map.put("fields",fields);
        return map;
    }

    @RequestMapping(value = "/getWashColumn.do")
    @ResponseBody
    public Map getWashColumn() {
        Map map =new HashMap();
        PersonWashCleanResult personWashCleanResult = new PersonWashCleanResult();
        Field[] fields=personWashCleanResult.getClass().getDeclaredFields();
        map.put("fields",fields);
        return map;
    }
}
