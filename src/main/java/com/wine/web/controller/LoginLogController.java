package com.wine.web.controller;

import com.wine.model.LoginLog;
import com.wine.service.LoginLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/loginLog")
@OperateLogClassLevelAnnotation(module = "登陆日志管理")
public class LoginLogController {

    // 自定义类型转换器
    @InitBinder
    public void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {

        binder.registerCustomEditor(Date.class,
                new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd HH:mm"), true));
    }

    @Autowired
    private LoginLogService loginLogService;

    @RequestMapping("/toIndex")
    public String toIndex(){
        return "role22/loginLog";
    }

    @RequestMapping("/getByPage")
    @ResponseBody
    public Map<String,Object> getByPage(Integer limit, Integer page, String userName, String loginTimeStartTime, String loginTimeEndTime){
        Map<String,Object> map = new HashMap<String, Object>();
        Map<String,Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("limit", limit);
        paramsMap.put("page", page);
        paramsMap.put("startNo", (page - 1) * limit);
        paramsMap.put("sort", "id");
        paramsMap.put("direction", "DESC");
        paramsMap.put("userName", userName);
        if(null != loginTimeStartTime && !loginTimeStartTime.trim().equals("")){
            loginTimeStartTime += ":00";
        }
        if(null != loginTimeEndTime && !loginTimeEndTime.trim().equals("")){
            loginTimeEndTime += ":00";
        }
        paramsMap.put("loginTimeStartTime", loginTimeStartTime);
        paramsMap.put("loginTimeEndTime", loginTimeEndTime);

        List<LoginLog> roleList = new ArrayList<LoginLog>();
        int total = loginLogService.countTotalWithParams(paramsMap);
        if(total > 0){
            roleList = loginLogService.findByPageWithParams(paramsMap);
        }

        map.put("rows", roleList);
        map.put("total", total);
        return map;
    }



}
