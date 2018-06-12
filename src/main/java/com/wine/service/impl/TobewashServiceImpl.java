package com.wine.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wine.dao3.TobewashMapper;
import com.wine.model3.Tobewash;
import com.wine.model3.TobewashCriteria;
import com.wine.model3.TobewashKey;
import com.wine.model3.TobewashWithBLOBs;
import com.wine.service.TobewashService;
import com.wine.utils.StrKit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class TobewashServiceImpl implements TobewashService{
    @Autowired
    TobewashMapper TobewashMapper;

    /**
     　　* 按月分页显示记录
     　　* @param year 年份，month 月份，limit 每页记录数，page 第几页
         * @author zhaoao
     　　*/
    @Override
    public Map shownew(int year,int month,int limit, int page){
        PageHelper.startPage(page,limit); DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        Date date1 = null;
        Date date2 = null;
        String str = year+"-"+month+"-1";
        String str2 = year+"-"+month+"-31";
        try {
            date1 = format1.parse(str);
            date2 = format1.parse(str2);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        PageHelper.orderBy("ir_sid desc");

        Map map = new HashMap();
        TobewashCriteria TobewashCriteria = new TobewashCriteria();
        TobewashCriteria.Criteria criteria = TobewashCriteria.createCriteria();
        criteria.andIrUrldateBetween(date1,date2);
        List<Tobewash> list = new ArrayList<Tobewash>();
        list =TobewashMapper.selectByExample(TobewashCriteria);
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;
    }
    @Override
    public void save(TobewashWithBLOBs tobewashWithBLOBs){
        if(tobewashWithBLOBs.getIrSid()==null)
        {TobewashMapper.insert(tobewashWithBLOBs);}
        else{
        TobewashMapper.updateByPrimaryKeySelective(tobewashWithBLOBs);}
    }

    @Override
    public void update(TobewashWithBLOBs tobewashWithBLOBs){
        TobewashMapper.insert(tobewashWithBLOBs);
    }

    /**
     　　* 按起始日期分页显示记录
     　　* @param year 年份，month 月份，limit 每页记录数，page 第几页
     * @author zhaoao
    　　*/


    @Override
    public Map showdate(Date fromdate, Date todate, int limit, int page){
        PageHelper.startPage(page,limit);
        PageHelper.orderBy("ir_sid desc");
        Map map = new HashMap();
        TobewashCriteria TobewashCriteria = new TobewashCriteria();
        TobewashCriteria.Criteria criteria = TobewashCriteria.createCriteria();
        criteria.andIrUrldateBetween(fromdate,todate);
        List<Tobewash> list = new ArrayList<Tobewash>();
        list =TobewashMapper.selectByExample(TobewashCriteria);
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;
    }
    /**
     　　* 按日期批量修改数据
     　　* @param year 年份，month 月份，column需要修改的列，modify 修改为此字段
         * @return  true 成功
         * @author zhaoao
    　　*/
    @Override
    public Map modify(String sql,String column,String modify){
        Map map = new HashMap();
        if(getListBySql(sql).size()<1) {
            map.put("success",false);
            map.put("msg","未查到数据！");
            return map;
        }
        try{
        TobewashMapper.modify(sql,column,modify);
        }
        catch (Exception e){
            map.put("success",false);
            map.put("msg","修改过程中遇到SQL错误");
            return map;
        }
        map.put("success",true);
        map.put("msg","修改成功！");
        return map;
    }

    public Map deleteBySql(String sql){
        Map map =new HashMap();
        List<Tobewash> list =TobewashMapper.selectBySql(sql);
        int length = list.size();
        if(length<1){
            map.put("success",false);
            map.put("msg","未查到数据！");
            return map;
        }
        for(int i=0;i<length;i++){
            TobewashKey tobewashKey =new TobewashKey();
            tobewashKey.setIrBbsnum(list.get(i).getIrBbsnum());
            tobewashKey.setIrHkey(list.get(i).getIrHkey());
            TobewashMapper.deleteByPrimaryKey(tobewashKey);
        }
        map.put("success",true);
        map.put("msg","修改成功！");
        return map;
    }
    public List<Tobewash> getListBySql(String sql){
        List<Tobewash> list =TobewashMapper.selectBySql(sql);
        return list;
    }

    private void update(Tobewash tobewash){
        TobewashMapper.updateByPrimaryKey(tobewash);
    }

    /**
     　　* 分页显示所有记录
     　　* @param limit 每页记录数，page 第几页
         * @author zhaoao
    　　*/
    @Override
    public Map showlist(int limit, int page){
        PageHelper.startPage(page,limit);
        PageHelper.orderBy("ir_sid desc");
        Map map = new HashMap();
        TobewashCriteria TobewashCriteria = new TobewashCriteria();
        TobewashCriteria.Criteria criteria = TobewashCriteria.createCriteria();
        criteria.andIrUrldateIsNotNull();
        List<Tobewash> list = TobewashMapper.selectBySql("where ir_sid > 1");
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;
    }
    @Override
    public Map showQuery(int limit, int page,String sql){
        PageHelper.startPage(page,limit);
        PageHelper.orderBy("ir_sid desc");
        Map map = new HashMap();
        TobewashCriteria TobewashCriteria = new TobewashCriteria();
        TobewashCriteria.Criteria criteria = TobewashCriteria.createCriteria();
        criteria.andIrUrldateIsNotNull();
        try{
        List<TobewashWithBLOBs> list =  TobewashMapper.selectBySqlWithBLOBs(sql);
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;}
        catch(Exception e){
            map.put("total",0);
            map.put("rows", new ArrayList<TobewashWithBLOBs>());
            return map;
        }

    }

    @Override
    public Map getColumns(){
        Map map =new HashMap();
        Tobewash tobewash = new Tobewash();
        Field[] fields=tobewash.getClass().getDeclaredFields();
        map.put("fields",fields);
        return map;
    }

    @Override
    public List<TobewashWithBLOBs> getListBySqlWithBlob(String sql){
        List<TobewashWithBLOBs> list =TobewashMapper.selectBySqlWithBLOBs(sql);
        return list;
    }

    @Override
    public void handlerListOnlySelect(List<TobewashWithBLOBs> list, String fields) {
        if(null != list && list.size() > 0 && fields != null && !fields.trim().equals("")){

            String[] tmp = fields.split(",");
            List<String> fieldsList = new ArrayList<String>();
            for(String s : tmp){
                String tmp2 = s.trim();
                String tmp3 = (tmp2.charAt(0) + "").toUpperCase() + tmp2.substring(1);
                fieldsList.add(tmp3);
            }

            for(TobewashWithBLOBs tobe : list){
                Method[] methods = tobe.getClass().getMethods();
                for(Method method : methods){
                    if(method.getName().startsWith("set")){
                        String prop = method.getName().substring(3);
                        System.out.println(prop);

                        if(fieldsList.contains(prop)){
                            //  说明是选中的值
                            Class<?> aClass = method.getParameterTypes()[0];
                            String sname  = aClass.getSimpleName();
                            if("byte[]".equals(sname)){
                                System.out.println(method.getName());
                            }
                        } else{
                            // 不需要导出
                            try{
                                method.invoke(tobe, new Object[]{null});
                            } catch (Exception e){
//                                e.printStackTrace();
                            }
                        }

                    }
                }
            }

        }
    }

}


