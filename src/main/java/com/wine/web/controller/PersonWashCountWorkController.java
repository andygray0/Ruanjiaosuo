package com.wine.web.controller;

import com.wine.model.PersonWashTask;
import com.wine.model.User;
import com.wine.service.PersonWashTaskService;
import com.wine.service.RoleService;
import com.wine.utils.BeanKit;
import com.wine.utils.ExportExcelKit;
import com.wine.web.bean.ParamPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/personWashCountWork")
public class PersonWashCountWorkController {

    @Autowired
    private PersonWashTaskService personWashTaskService;

    @Autowired
    private RoleService roleService;

    @RequestMapping("/toIndex")
    public String toIndex(Model model) {
        List<User> internList = roleService.findUsersByRoleName("实习生");
        model.addAttribute("internList", internList);
        return "personwash/count_work";
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


    @RequestMapping("/exportExcel")
    public void exportExcel(HttpServletResponse response){
        List<PersonWashTask> list = personWashTaskService.findAllTaskList();

        String filename = "工作量统计";
        String[] headers = {"分配任务","姓名","分配数据量(项)","实际查询数据量(项)","查询次数","实际完成数据量(项)","工作量"};
        String[] keys = {"task_name","check_intern","item_count","real_query_item_count","check_times","real_finished_item_count","work_load"};
        List<Map<String,Object>> mapList = BeanKit.getMapListFromBeanList(list, keys);
        Map<String, Object> flagMap = new HashMap<String, Object>();

        ExportExcelKit.exportExcel(response,filename,headers, keys, mapList, flagMap);

    }

}
