package com.wine.web.controller;

import com.wine.service.WashLogService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Map;

@Controller
@RequestMapping("/washlog")
public class washLogController {
    @Resource
    WashLogService washLogService;

    @RequestMapping(value = "/showlogs.do")
    @ResponseBody
    Map showlogs(int limit ,int page , String name){
        return washLogService.showlogs(limit,page,name);
    }
}
