package com.wine.web.controller;

import com.wine.model.*;
import com.wine.service.CommonService;
import com.wine.service.PersonWashService;
import com.wine.service.PersonWashTaskService;
import com.wine.service.RoleService;
import com.wine.utils.BeanKit;
import com.wine.utils.StrKit;
import com.wine.utils.WorkloadKit;
import com.wine.web.bean.ParamPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/personWashTask")
@OperateLogClassLevelAnnotation(module = "清洗任务管理，管理员")
public class PersonWashTaskController {

    @Autowired
    private PersonWashTaskService personWashTaskService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private PersonWashService personWashService;

    @Autowired
    private CommonService commonService;

    @RequestMapping("/toIndex")
    public String toIndex(Model model){
        List<User> internList = roleService.findUsersByRoleName("实习生");
        model.addAttribute("internList", internList);
        return "personwash/task";
    }

    @RequestMapping("/findByPage")
    @ResponseBody
    public Map<String,Object> findByPage(ParamPage<PersonWashTask> page, PersonWashTask task){

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
    public String getDetailPage(Model model, Integer id){
        PersonWashTask task = personWashTaskService.findById(id);
        model.addAttribute("task",task);

        String validRate = personWashTaskService.countTheRateOfAlreadyValidated(task.getId());
        model.addAttribute("validRate",validRate);

        return "personwash/detailTask";
    }


    @RequestMapping("/getValidRate")
    @ResponseBody
    public String getValidRate(Integer taskId){
        return personWashTaskService.countTheRateOfAlreadyValidated(taskId);
    }


    @RequestMapping("/findByPageCheckDataByTask")
    @ResponseBody
    public Map<String,Object> findByPageCheckDataByTask(ParamPage<WaitCheckData> page, Integer taskId, Integer clReviewStatus, Integer clWorkStatus){

        if(null == taskId){
            taskId = -1;
        }

        int total = personWashTaskService.countTotalCheckDataByTask(taskId, clWorkStatus, clReviewStatus);
        List<WaitCheckData> rows = new ArrayList<WaitCheckData>();
        if(total > 0){
            rows = personWashTaskService.findByPageCheckDataByTask(page, taskId, clWorkStatus, clReviewStatus);
        }

        Map<String,Object> map = new HashMap<String,Object>();
        map.put("total", total);
        map.put("rows", rows);
        return map;
    }

    @RequestMapping("/updateRandomCheckRate")
    @ResponseBody
    public Integer updateRandomCheckRate(Integer rate, Integer taskId){
        personWashTaskService.updateRandomCheckRate(rate, taskId);
        return 1;
    }


    @RequestMapping("/popUpdateCheckDataDialog")
    public String popUpdateCheckDataDialog(Model model, Integer id){

        // 1.
        PersonWashWaitCheckData check = personWashService.findCheckDataById(id, "*");
        model.addAttribute("check", check);


        // 2.
        List<String> list = BeanKit.getDynamicFieldsBySuffixIsNotNull(check, "Check");
        List<CommonTableField> fieldList = commonService.findTableFieldInfo("URLCONTENT_CHECK_2017", list);
        Map<String, Map<String,Object>> tableFieldMap = new HashMap<String, Map<String,Object>>();
        for(CommonTableField field : fieldList){
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("tableField", field);
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

        return "personwash/admin_audit_data";
    }


    @RequestMapping("/endupTask")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "结束任务")
    public Map<String,Object> endupTask(Integer taskId, Double alreadyValid){

        PersonWashTask task = personWashTaskService.findById(taskId);

        Map<String,Object> resultMap = new HashMap<String,Object>();

        int countOfNotPass = personWashTaskService.countTotalCheckDataByTask(taskId, null, 2);
        if(countOfNotPass > 0){
            resultMap.put("flag", false);
            resultMap.put("msg", "有未通过的记录，不能结束任务！");
            return  resultMap;
        }

        if(alreadyValid > task.getRandomCheckRate()){ // 验证的比率满足要求才结束
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String now = sdf.format(new Date());

            List<Map<String, Object>> mapList = commonService.get2MapListFromString("@TASK_STATUS:"+ 2 + ",$VALIDATE_TIME:" + now +",#ID:" + taskId);
            commonService.updateDatasBy2Map(ConstantTableName.PERSONWASH_TASKLIST, mapList.get(0), mapList.get(1));

            personWashTaskService.deleteTemporaryDatasByTaskId(taskId);


            // 将数据复制到指定的表中去
            personWashTaskService.insertOrUpdateData2TargetTableByTaskId(taskId);

            // 工作量统计
            PersonWashTask task2 = new PersonWashTask();
            task2.setId(taskId)
                    .setRealQueryItemCount(task.getItemCount())
                    .setRealFinishedItemCount(task.getItemCount())
                    .setRealQueryRecordCount(task.getRecordCount())
                    .setRealFinishedRecordCount(task.getRecordCount())
                    .setWorkLoad(WorkloadKit.countWorkload(task.getItemCount(), task.getItemCount(), task.getCheckTimes(), 1.0));
            personWashTaskService.updateTaskWorkCountByTaskId(task2);

            //
            resultMap.put("flag", true);
            resultMap.put("msg", "操作成功！");


        } else {
            resultMap.put("flag", false);
            resultMap.put("msg", "实际验证的比率比设置的抽查验证百分比大时，才能结束！");
        }


        return resultMap;
    }



    @RequestMapping("/sendbackTask")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "退回任务给实习生")
    public Map<String,Object> sendbackTask(Integer taskId){

        Map<String,Object> resultMap = new HashMap<String,Object>();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String now = sdf.format(new Date());

        List<Map<String, Object>> mapList = commonService.get2MapListFromString("@TASK_STATUS:"+ 3 + ",$VALIDATE_TIME:" + now +",#ID:" + taskId);
        commonService.updateDatasBy2Map(ConstantTableName.PERSONWASH_TASKLIST, mapList.get(0), mapList.get(1));

        // 将该任务下的所有数据设置为未修改
        personWashTaskService.updateCheckDataModifyStatusByTaskId(taskId);

        // 删除临时保存状态
        personWashTaskService.deleteTemporaryDatasByTaskId(taskId);

        return resultMap;
    }



    @RequestMapping("/validateOk")
    @ResponseBody
    public Map<String,Object> validateOk(Integer checkId){

        Map<String,Object> resultMap = new HashMap<String,Object>();

        List<Map<String, Object>> mapList = commonService.get2MapListFromString("@CL_REVIEW_STATUS:"+ 1 +",#ID:" + checkId);
        commonService.updateDatasBy2Map(ConstantTableName.URLCONTENT_CHECK_2017, mapList.get(0), mapList.get(1));

        return resultMap;
    }


    @RequestMapping("/validateFail")
    @ResponseBody
    public Map<String,Object> validateFail(Integer checkId){

        Map<String,Object> resultMap = new HashMap<String,Object>();

        List<Map<String, Object>> mapList = commonService.get2MapListFromString("@CL_REVIEW_STATUS:"+ 2 +",#ID:" + checkId);
        commonService.updateDatasBy2Map(ConstantTableName.URLCONTENT_CHECK_2017, mapList.get(0), mapList.get(1));

        return resultMap;
    }


    @RequestMapping("/handTheGiveUpTask")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "处理放弃的任务")
    public Map<String,Object> handTheGiveUpTask(Integer taskId){
        Map<String,Object> resultMap = new HashMap<String,Object>();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String now = sdf.format(new Date());

        List<Map<String, Object>> mapList = commonService.get2MapListFromString("@TASK_STATUS:"+ 5 + ",$VALIDATE_TIME:" + now +",#ID:" + taskId);
        commonService.updateDatasBy2Map(ConstantTableName.PERSONWASH_TASKLIST, mapList.get(0), mapList.get(1));

        // 处理数据
        Map<String,Object> handleMap = personWashTaskService.handTheGiveUpTaskDatasByTaskId(taskId);

        resultMap.put("flag", handleMap.get("flag"));
        resultMap.put("msg","数据已处理完毕！");

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
