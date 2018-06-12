package com.wine.web.controller;

import com.wine.constants.Constants;
import com.wine.model.*;
import com.wine.service.CommonService;
import com.wine.service.PersonWashService;
import com.wine.service.PersonWashTaskService;
import com.wine.utils.BeanKit;
import com.wine.utils.StrKit;
import com.wine.web.bean.ParamPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/personWashIntern")
@OperateLogClassLevelAnnotation(module = "人工清洗，实习生")
public class PersonWashInternController {

    @Autowired
    private PersonWashTaskService personWashTaskService;

    @Autowired
    private PersonWashService personWashService;

    @Autowired
    private CommonService commonService;

    @RequestMapping("/toIndex")
    public String toIndex(){
        return "personwash/intern_task";
    }

    @RequestMapping("/findByPage")
    @ResponseBody
    public Map<String,Object> findByPage(ParamPage<PersonWashTask> page, PersonWashTask task, HttpSession session){

        String username = session.getAttribute(Constants.CURRENT_USER) + "";
        task.setCheckIntern(username);
        int total = personWashTaskService.countTotal(task);
        List<PersonWashTask> rows = new ArrayList<PersonWashTask>();
        if(total > 0){
            rows = personWashTaskService.findByPage(page, task);
        }

        Map<String,Object> map = new HashMap<String,Object>();
        map.put("total", total);
        map.put("rows", rows);
        return map;
    }

    @RequestMapping("/getDetailPage")
    public String getDetailPage(Model model, Integer id, HttpSession session){

        PersonWashTask task = personWashTaskService.findById(id);
        model.addAttribute("task",task);

        return "personwash/intern_detailTask";
    }

    @RequestMapping("/findByPageCheckDataByTask")
    @ResponseBody
    public Map<String,Object> findByPageCheckDataByTask(ParamPage<WaitCheckData> page, Integer taskId, Integer clWorkStatus){

        if(null == taskId){
            taskId = -1;
        }

        int total = personWashTaskService.countTotalCheckDataByTask(taskId, clWorkStatus, null);
        List<WaitCheckData> rows = new ArrayList<WaitCheckData>();
        if(total > 0){
            rows = personWashTaskService.findByPageCheckDataByTask(page, taskId, clWorkStatus, null);
        }

        Map<String,Object> map = new HashMap<String,Object>();
        map.put("total", total);
        map.put("rows", rows);
        return map;
    }

    @RequestMapping("/popUpdateCheckDataDialog")
    public String popUpdateCheckDataDialog(Model model, Integer id, Integer recordIndex, Integer recordTotal, Integer taskId, Integer clWorkStatus){

        model.addAttribute("taskId", taskId);

        // 1.
        PersonWashWaitCheckData check = null;
        if(null == id){
            check = personWashService.findCheckDataByRecordIndex(recordIndex, taskId, clWorkStatus);
        } else {
            check = personWashService.findCheckDataById(id, "*");
        }
        model.addAttribute("check", check);

//        List<String> tempSaveList = Arrays.asList("IR_ANNULMENT_REASON","IR_ANNULMENT_TREATMENT");
        List<String> tempSaveList = personWashTaskService.findTemporarySavedFields(check.getIrSid());

        // 2.
        List<String> list = BeanKit.getDynamicFieldsBySuffixIsNotNull(check, "Check");
        List<CommonTableField> fieldList = commonService.findTableFieldInfo("URLCONTENT_CHECK_2017", list);
        Map<String, Map<String,Object>> tableFieldMap = new HashMap<String, Map<String,Object>>();
        for(CommonTableField field : fieldList){
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("tableField", field);
            map.put("saved", tempSaveList.contains(field.getName()));
            map.put("value", BeanKit.getValueByField(field.getName(),check));
            map.put("reason", BeanKit.getValueByField(field.getName() + "_check".toUpperCase(),check));
            map.put("property", StrKit.toCamelName(field.getName().toLowerCase()));
            map.put("field", field.getName());
            map.put("title", field.getTitle());
            tableFieldMap.put(StrKit.toCamelName(field.getName().toLowerCase()), map);
        }
        model.addAttribute("coreMap", tableFieldMap);

        // 3.
        List<String> coreList = new ArrayList<String>();
        String needUpdateFields = "";
        for(String s : list){
            coreList.add(StrKit.toCamelName(s.toLowerCase()));
            needUpdateFields += "," + s.toUpperCase();
        }
        model.addAttribute("coreList", coreList);
        model.addAttribute("needUpdateFields", needUpdateFields.substring(1));

        model.addAttribute("recordIndex",recordIndex);
        model.addAttribute("recordTotal",recordTotal);

        return "personwash/intern_update_data";
    }


    @RequestMapping("/saveAfterUpdate")
    @ResponseBody
    public Map<String,Object> saveAfterUpdate(PersonWashWaitCheckData checkData, String needUpdateFields, String saved, Integer clWorkStatus){
        Map<String,Object> resultMap = new HashMap<String,Object>();

        Map<String,Object> setMap = new HashMap<String,Object>();
        for(String field : needUpdateFields.split(",")){
            Object o = BeanKit.getValueByField(field, checkData);
            setMap.put(field, o);
        }

        setMap.put("CL_REMARK", checkData.getClRemark());

        Map<String,Object> whereMap = new HashMap<String,Object>();
        whereMap.put("ID", checkData.getId());

        commonService.updateDatasBy2Map("urlcontent_check_2017", setMap, whereMap);

        if(!"".equals(saved)){
            List<String> slist = new ArrayList<String>();
            for(String s : saved.split(",")){
                slist.add(StrKit.camelToUnderline(s).toUpperCase());
            }

            // 保存临时数据
            personWashTaskService.deleteTemporaryDatasByCheckId(checkData.getId());
            personWashTaskService.saveTemporaryDatasForIntern(checkData.getId(), slist);
        }

        // 修改数据的修改状态, 1是保存，2是临时保存
        String usingstr = "@CL_WORK_STATUS:"+ clWorkStatus +",#ID:" + checkData.getId();
        List<Map<String, Object>> mapList = commonService.get2MapListFromString(usingstr);
        commonService.updateDatasBy2Map(ConstantTableName.URLCONTENT_CHECK_2017, mapList.get(0), mapList.get(1));

        resultMap.put("flag", true);
        resultMap.put("msg","保存成功！");
        return resultMap;
    }

    @RequestMapping("/commitTask")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "提交任务")
    public Map<String,Object> commitTask(Integer taskId, Integer checkTimes){
        Map<String,Object> resultMap = new HashMap<String,Object>();

        int count = personWashTaskService.countTotalNotModifiedRecords(taskId);
        if(count == 0){
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String now = sdf.format(new Date());

            List<Map<String, Object>> mapList = commonService.get2MapListFromString("@TASK_STATUS:"+ 1 + ",@CHECK_TIMES:" + (checkTimes + 1) + ",$REAL_FEEDBACK_TIME:" + now +",#ID:" + taskId);
            commonService.updateDatasBy2Map(ConstantTableName.PERSONWASH_TASKLIST, mapList.get(0), mapList.get(1));

            resultMap.put("flag", true);
            resultMap.put("msg","任务已提交！");
        } else {
            resultMap.put("flag", false);
            resultMap.put("msg","全部保存后才能提交任务！");
        }

        return resultMap;
    }


    @RequestMapping("/internGiveupTask")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "放弃任务")
    public Map<String,Object> internGiveupTask(Integer taskId, Integer checkTimes){
        Map<String,Object> resultMap = new HashMap<String,Object>();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String now = sdf.format(new Date());

        List<Map<String, Object>> mapList = commonService.get2MapListFromString("@TASK_STATUS:"+ 4 + ",@CHECK_TIMES:" + (checkTimes + 1) + ",$REAL_FEEDBACK_TIME:" + now +",#ID:" + taskId);
        commonService.updateDatasBy2Map(ConstantTableName.PERSONWASH_TASKLIST, mapList.get(0), mapList.get(1));

        resultMap.put("flag", true);
        resultMap.put("msg","任务已放弃！");

        return resultMap;
    }


    @RequestMapping("/popLookupCheckDataDialog")
    public String popLookupCheckDataDialog(Model model, Integer id){

        // 1.
        PersonWashWaitCheckData check = personWashService.findCheckDataById(id, "*");
        model.addAttribute("check", check);

        // 2.
        List<String> list = BeanKit.getDynamicFieldsBySuffixIsNotNull(check, "Check");
        List<CommonTableField> fieldList = commonService.findTableFieldInfo("URLCONTENT_CHECK_2017", list);
        Map<String, Map<String,Object>> tableFieldMap = new HashMap<String, Map<String,Object>>();
        for(CommonTableField field : fieldList){
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("value", BeanKit.getValueByField(field.getName(),check));
            map.put("reason", BeanKit.getValueByField(field.getName() + "_check".toUpperCase(),check));
            map.put("property", StrKit.toCamelName(field.getName().toLowerCase()));
            map.put("field", field.getName());
            map.put("title", field.getTitle());
            tableFieldMap.put(StrKit.toCamelName(field.getName().toLowerCase()), map);
        }
        model.addAttribute("coreMap", tableFieldMap);

        // 3.
        List<String> coreList = new ArrayList<String>();
        String needUpdateFields = "";
        for(String s : list){
            coreList.add(StrKit.toCamelName(s.toLowerCase()));
            needUpdateFields += "," + s.toUpperCase();
        }
        model.addAttribute("coreList", coreList);
        model.addAttribute("needUpdateFields", needUpdateFields.substring(1));

        return "personwash/admin_lookup_checkdata";
    }


}
