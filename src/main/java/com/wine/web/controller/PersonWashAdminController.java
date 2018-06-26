package com.wine.web.controller;

import com.wine.model.*;
import com.wine.service.CommonService;
import com.wine.service.PersonWashService;
import com.wine.service.PersonWashTaskService;
import com.wine.service.RoleService;
import com.wine.utils.BeanKit;
import com.wine.utils.StrKit;
import com.wine.web.bean.InternAssignItem;
import com.wine.web.bean.ParamPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/personWashAdmin")
@OperateLogClassLevelAnnotation(module = "待查数据分配，分配者")
public class PersonWashAdminController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private PersonWashService personWashService;

    @Autowired
    private PersonWashTaskService personWashTaskService;

    @Autowired
    private CommonService commonService;

    // 将字符串转换为Date类
    @InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {
        // 转换日期格式
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        // 注册自定义的编辑器
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));

    }


    @RequestMapping("/toIndex")
    public String toIndex(Model model) {
        List<User> internList = roleService.findUsersByRoleName("实习生");
        model.addAttribute("internList", internList);

        int clCount = personWashService.sumTheCLcount(new WaitCheckData());
        model.addAttribute("clCount", clCount);

        return "personwash/admin";
    }


    @RequestMapping("/findByPage")
    @ResponseBody
    public Map<String, Object> findByPage(ParamPage<WaitCheckData> page, WaitCheckData waitCheckData) {

        page.setOrder("IR_SID");

        int total = personWashService.countTotal(waitCheckData);
        List<WaitCheckData> rows = new ArrayList<WaitCheckData>();
        if (total > 0) {
            rows = personWashService.findByPage(page, waitCheckData);
        }

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("total", total);
        map.put("rows", rows);
        return map;
    }


    @RequestMapping("/assignTasks")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "数据分配")
    public Map<String, Object> assignTasks(@RequestBody List<InternAssignItem> userList,
                                           Date feedbackTime,
                                           Integer maxRecord,
                                           WaitCheckData waitCheckData) {
        Map<String, Object> resultMap = new HashMap<String, Object>();

        List<WaitCheckData> checkList = personWashService.findAllWithCondition(waitCheckData, maxRecord);

        Map<String, Map<String, Object>> userToRecordMap = new HashMap<String, Map<String, Object>>();
        for (InternAssignItem assign : userList) {
            for (int i = checkList.size() - 1; i >= 0; i--) {
                WaitCheckData check = checkList.get(i);
                int number = assign.getNumber() - check.getClCount();
                if (number >= 0) {
                    assign.setNumber(number);

                    Map<String, Object> userMap = userToRecordMap.get(assign.getUsername());
                    List<Integer> checkdataList = new ArrayList<Integer>();
                    int itemCount = check.getClCount();
                    if (null == userMap) {
                        userMap = new HashMap<String, Object>();
                    } else {
                        checkdataList = (List<Integer>) userMap.get("checkList");
                        itemCount += (Integer) userMap.get("itemCount");
                    }
                    checkdataList.add(check.getId());
                    userMap.put("checkList", checkdataList);
                    userMap.put("itemCount", itemCount);
                    userMap.put("recordCount", checkdataList.size());
                    userMap.put("intern", assign.getUsername());
                    userToRecordMap.put(assign.getUsername(), userMap);
                    checkList.remove(i);
                }
            }

        }


        // 创建多个任务
        int maxNumber = commonService.findMaxNumberByToday("personwash_tasklist", "TASK_NAME");
        String today = new SimpleDateFormat("yyyyMMdd").format(new Date());
        for (Map.Entry<String, Map<String, Object>> entry : userToRecordMap.entrySet()) {
            String intern = entry.getKey();
            Map<String, Object> valueMap = entry.getValue();
            maxNumber += 1;
            PersonWashTask task = new PersonWashTask();
            task.setTaskName(today + "" + (maxNumber < 10 ? ("0" + maxNumber) : maxNumber))
                    .setVirtualFeedbackTime(feedbackTime)
                    .setCheckIntern(intern)
                    .setItemCount((Integer) valueMap.get("itemCount"))
                    .setRecordCount((Integer) valueMap.get("recordCount"));
            personWashTaskService.insertOne(task);

            List<Integer> checkListOfUser = (List<Integer>) valueMap.get("checkList");
            if (null != checkListOfUser && checkListOfUser.size() > 0) {
                personWashService.insertTheCheckDataRelation(task.getId(), checkListOfUser);
                personWashService.updateTheCheckDataStatus("0", checkListOfUser);
            }
        }


        resultMap.put("assignFlag", userToRecordMap.entrySet().size());
        resultMap.put("flag", true);

        int clCount = personWashService.sumTheCLcount(new WaitCheckData());
        resultMap.put("clCount", clCount);

        return resultMap;
    }



    @RequestMapping("/popLookupCheckDataDialog")
    public String popLookupCheckDataDialog(Model model, Integer id){

        // 1.
        PersonWashWaitCheckData check = personWashService.findCheckDataById(id, "*");
        model.addAttribute("check", check);

        // 2.
        List<String> list = BeanKit.getDynamicFieldsBySuffixIsNotNull(check, "Check");
//        List<CommonTableField> fieldList = commonService.findTableFieldInfo("URLCONTENT_CHECK_2017", list);
        List<CommonTableField> fieldList = commonService.findTableFieldInfo(check.getClTarget(), list);
        Map<String, Map<String,Object>> tableFieldMap = new HashMap<String, Map<String,Object>>();
        for(String lis  : list){
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("value", BeanKit.getValueByField(lis,check));
            map.put("reason", BeanKit.getValueByField(lis + "_check".toUpperCase(),check));
//            map.put("property", StrKit.toCamelName(field.getName().toLowerCase()));
//            map.put("field", field.getName());
            int i = 0;
            for(CommonTableField field  : fieldList){
                if(lis.equals(field.getName())) {
                    map.put("title", field.getTitle());
                    i++;
                }
            }
            if(i == 0 ){
                map.put("title", lis);
            }
            tableFieldMap.put(StrKit.toCamelName(lis.toLowerCase()), map);
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
