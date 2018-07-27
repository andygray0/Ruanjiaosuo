package com.wine.service.impl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wine.dao.PersonWashTaskMapper;
import com.wine.dao3.UrlconMapper;
import com.wine.model.PersonWashCleanResult;
import com.wine.model3.Urlcon;
import com.wine.model3.UrlconCriteria;
import com.wine.model3.UrlconWithBLOBs;
import com.wine.model3.YearCount;
import com.wine.service.UrlconService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class UrlconServiceImpl implements UrlconService{
    @Autowired
    UrlconMapper urlconMapper;
    @Autowired
    PersonWashTaskMapper personWashTaskMapper;

    @Override
    public Map findByQuery(int limit, int page,Date fromdate, Date todate, Date lasttimefrom, Date lasttimeto,String sitename,String channel){
        PageHelper.startPage(page,limit);
        DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        Map map = new HashMap();
        UrlconCriteria urlconCriteria = new UrlconCriteria();
        UrlconCriteria.Criteria criteria = urlconCriteria.createCriteria();
        if(fromdate!=null&&todate!=null){
            criteria.andIrUrldateBetween(fromdate,todate);}
        if(lasttimefrom!=null&&lasttimeto!=null){
            criteria.andIrLasttimeBetween(lasttimefrom,lasttimeto);}
        if(channel!=""){
            criteria.andIrChannelLikeInsensitive('%'+channel+'%');}
        if(sitename!=""){
            criteria.andIrSitenameLikeInsensitive('%'+sitename+'%');}
        List<UrlconWithBLOBs> list = urlconMapper.selectByExampleWithBLOBs(urlconCriteria);
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;
    }
    @Override
    public List<UrlconWithBLOBs> find(Date fromdate, Date todate, Date lasttimefrom, Date lasttimeto,String sitename,String channel){
        UrlconCriteria urlconCriteria = new UrlconCriteria();
        UrlconCriteria.Criteria criteria = urlconCriteria.createCriteria();
        if(fromdate!=null&&todate!=null){
            criteria.andIrUrldateBetween(fromdate,todate);}
        if(lasttimefrom!=null&&lasttimeto!=null){
            criteria.andIrLasttimeBetween(lasttimefrom,lasttimeto);}
        if(channel!=""){
            criteria.andIrChannelLikeInsensitive('%'+channel+'%');}
        if(sitename!=""){
            criteria.andIrSitenameLikeInsensitive('%'+sitename+'%');}
        List<UrlconWithBLOBs> list = urlconMapper.selectByExampleWithBLOBs(urlconCriteria);
        return list;
    }

    @Override
    public Map showQuery(int limit, int page,String fromtable,String sql){
        PageHelper.startPage(page,limit);
//        PageHelper.orderBy("ir_sid desc");
        Map map = new HashMap();
        try{
        List<UrlconWithBLOBs> list = new ArrayList<UrlconWithBLOBs>();
        list = urlconMapper.selectBySql(fromtable,sql);
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;}
        catch(Exception e){
            map.put("total",0);
            map.put("rows", new ArrayList<UrlconWithBLOBs>());
            return map;
        }
    }

    @Override
    public Map getColumns(){
        Map map =new HashMap();
        Urlcon urlcon = new Urlcon();
        Field[] fields=urlcon.getClass().getDeclaredFields();
        map.put("fields",fields);
        return map;
    }

    @Override
    public Urlcon getById(Integer id){
        return urlconMapper.selectByPrimaryKey(id);
    }



    @Override
    public Boolean insertOrUpdate(PersonWashCleanResult data, String tableName) {
        Integer id = data.getIrSid();
        PersonWashCleanResult original = personWashTaskMapper.findByTableNameAndId(tableName, id);
        if (null == original) { // 不存在，插入
            personWashTaskMapper.insertOneCheckData(tableName, data);
        }
        else { // 已存在， 更新
            personWashTaskMapper.updateOneCheckData(tableName, data);
        }
        return true;
    }

    @Override
    public Map getBySql(int limit ,int page,String fromtable,String sql){
        PageHelper.startPage(page,limit);
        Map map = new HashMap();
        try{
        List<UrlconWithBLOBs> list = urlconMapper.selectBySql(fromtable,sql);
        PageInfo pageInfo=new PageInfo(list);
        map.put("total",pageInfo.getTotal());
        map.put("rows",list);
        return map;}
        catch(Exception e){
        map.put("total",0);
        map.put("rows", new ArrayList<UrlconWithBLOBs>());
        return map;
    }
    }

    @Override
    public List<String> showFromTables(){
        return urlconMapper.selectFromTables();
    }

    @Override
    public List<String> showToTables(){
        return urlconMapper.selectToTables();
    }

    @Override
    public List<UrlconWithBLOBs> getAllBySql(String fromtable,String sql){
        return urlconMapper.selectBySql(fromtable,sql);
    }
    @Override
    public List<YearCount> getYearCount(){
        return urlconMapper.getYearCount();
    }

    @Override
    public Integer getTodayCollection(){
        return urlconMapper.getTodayCollection();
    }

    @Override
    public Integer getStartid(){
        return urlconMapper.getStartid();
    }
}

