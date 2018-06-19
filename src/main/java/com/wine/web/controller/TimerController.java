package com.wine.web.controller;


import com.wine.model.WashLog;
import com.wine.model.WashTimer;
import com.wine.quartz.ScheduleTask;
import com.wine.service.TaskService;
import com.wine.service.WashLogService;
import com.wine.service.WashTimerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class TimerController {
    @Resource
    WashTimerService washTimerService;
    @Resource
    TaskService taskService;
    @Resource
    WashLogService washLogService;

    @RequestMapping("/datawashTimer/washtimer.do")
    public String datawashWashTimer(){ return "timedTasks"; }

    @RequestMapping(value = "showTimedTasks.do")
    @ResponseBody
    public Map showWashTimer(int page , int limit,String name){
        return washTimerService.showlist(page,limit,name);
    }
    @RequestMapping(value = "/insertWashTimer.do")
    @ResponseBody
    public Map insert(String taskname,String simplewashcolumn,String description,String rules,String sourcetable,String goaltable,String starttime,String expression,String querys,int onoff) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        WashTimer WashTimer = new WashTimer();
        WashTimer.setDescription(description);
        WashTimer.setReserved2(simplewashcolumn);//简单清洗列
        WashTimer.setName(taskname);
        WashTimer.setRules(rules);
        WashTimer.setSourcetable(sourcetable);
        WashTimer.setGoaltable(goaltable);
        WashTimer.setQuerys(querys);
        WashTimer.setOnoff(onoff);
        WashTimer.setReserved1(expression);
        if(!starttime.equals("")){
            WashTimer.setStarttime(sdf.parse(starttime));
        }
        washTimerService.insert(WashTimer);
        Map map = new HashMap();
        map.put("success",true);

        map.put("id",WashTimer.getId());
        return map ;
    }
    @RequestMapping(value = "/modifyWashTimer.do")
    @ResponseBody
    public Map update(int taskid,String taskname,String simplewashcolumn,String description,String rules,String sourcetable,String goaltable,String starttime,String stamp,String expression,String querys,int onoff) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        WashTimer WashTimer = new WashTimer();
        WashTimer.setId(taskid);
        WashTimer.setDescription(description);
        WashTimer.setReserved2(simplewashcolumn);//简单清洗列
        WashTimer.setName(taskname);
        WashTimer.setRules(rules);
        WashTimer.setSourcetable(sourcetable);
        WashTimer.setGoaltable(goaltable);
        WashTimer.setQuerys(querys);
        WashTimer.setOnoff(onoff);
        WashTimer.setReserved1(expression);
        if(!starttime.equals("")){
            WashTimer.setStarttime(sdf.parse(starttime));
        }
        if(!stamp.equals("")){
            WashTimer.setStamp(sdf.parse(stamp));
        }else{
            WashTimer.setStamp(null);
        }
        washTimerService.updateTimer(WashTimer);
        Map map = new HashMap();
        map.put("success",true);
        map.put("id",WashTimer.getId());
        return map ;
    }
    @RequestMapping(value = "/deleteWashTimer.do")
    @ResponseBody
    public Map deleteWashTimer(int id){
        Map map = new HashMap();
        try{
            washTimerService.deleteByID(id);
            map.put("success",true);
            map.put("id",id);
            List<ScheduleTask> taskList = taskService.getAllTask();
            for(int i=0;i<taskList.size();i++){
                if(taskList.get(i).getId().equals(String.valueOf(id))){
                    taskService.deleteTask(taskList.get(i));
                }
            }
        }catch (Exception e){
            map.put("msg",e.getMessage());
            map.put("success",false);
            map.put("id",id);
        }

        return map;
    }


    @RequestMapping(value = "/stopWashTimer.do")
    @ResponseBody
    public Map stopWashTimer(int id){
        Map map = new HashMap();
        try{
            washTimerService.stopByID(id);
            map.put("success",true);
            map.put("id",id);
            List<ScheduleTask> taskList = taskService.getAllTask();
            for(int i=0;i<taskList.size();i++){
                if(taskList.get(i).getId().equals(String.valueOf(id))){
                    taskService.deleteTask(taskList.get(i));
                }
            }
        }catch (Exception e){
            map.put("msg",e.getMessage());
            map.put("success",false);
            map.put("id",id);
        }

        return map;
    }

    @RequestMapping(value = "/startWashTimer.do")
    @ResponseBody
    public Map startWashTimer(int id){
        Map map = new HashMap();
        try{
            washTimerService.startByID(id);
            map.put("success",true);
            map.put("id",id);
        }catch (Exception e){
            map.put("msg",e.getMessage());
            map.put("success",false);
            map.put("id",id);}

        return map;
    }


    @RequestMapping(value = "/startTimedTask.do")
    @ResponseBody
    public Map startTimedTask(int id){
        Map map = new HashMap();
        try {
            WashTimer washTimer = washTimerService.getById(id);
            ScheduleTask task = new ScheduleTask();
            task.setExpression(washTimer.getReserved1());
            task.setId(String.valueOf(id));
            task.setGroup("com.wine.quartz.job.MyJob");
            task.setTrigger("dopost");
            task.setName(washTimer.getName() + id);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String starttime = simpleDateFormat.format(washTimer.getStarttime());
            task.setParam(new Object[]{washTimer.getSourcetable(), washTimer.getGoaltable(), washTimer.getRules(), washTimer.getQuerys(), starttime, String.valueOf(id)});
            taskService.addTask(task);
            map.put("success",true);
            map.put("id",id);
        }catch (Exception e){
            e.printStackTrace();
            map.put("msg","定时任务无法启动，参数存在问题！");
            map.put("success",false);
            map.put("id",id);
        }
        return map;
    }

    @RequestMapping(value = "/getAllTasks.do")
    @ResponseBody
    public List getAllTasks(){
       return  taskService.getAllTask();
    }

    @RequestMapping(value = "/pauseAllTimer.do")
    @ResponseBody
    public void pauseAllTimer(){
        washTimerService.pauseAllTimer();
    }

    @RequestMapping(value = "/timerEdit.do")
    @ResponseBody
    public Boolean timerEdit(int id,String name,String description,String sourcetable,String goaltable,String querys,String starttime,String stamp,String rules,String reserved1){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            Date startTime = null;
            Date newstamp = null;
            if (starttime.startsWith("201")) {
                startTime = sdf.parse(starttime);
            }
            else{
                long lt1 = new Long(starttime);
                startTime = new Date(lt1);
            }
            if (stamp.startsWith("201")) {
                newstamp = sdf.parse(stamp);
            }
            else if(stamp==""){

            }
            else{
                long lt2 = new Long(stamp);
                newstamp = new Date(lt2);
            }

//        Date startTime = new Date(starttime);
//            Date newstamp =  new Date(stamp);
            WashTimer washTimer = washTimerService.getById(id);
            washTimer.setId(id);
            washTimer.setQuerys(querys);
            washTimer.setStamp(newstamp);
            washTimer.setStarttime(startTime);
            washTimer.setSourcetable(sourcetable);
            washTimer.setGoaltable(goaltable);
            washTimer.setName(name);
            washTimer.setDescription(description);
            washTimer.setReserved1(reserved1);
            washTimer.setRules(rules);
            washTimerService.updateTimer(washTimer);
        } catch (ParseException e) {
            e.printStackTrace();
            return false;
        }
            return true;
    }

    @RequestMapping(value = "/showlogs.do")
    @ResponseBody
    Map showlogs(int limit ,int page , String name){
        return washLogService.showlogs(limit,page,name);
    }
}
