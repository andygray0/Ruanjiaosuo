package com.wine.web.controller;

import com.wine.model.PersonWashTask;
import com.wine.model.User;
import com.wine.service.PersonWashTaskService;
import com.wine.service.RoleService;
import com.wine.web.bean.ParamPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

}
