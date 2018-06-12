package com.wine.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Controller
public class FileUploadController {


    @RequestMapping(value="uploadFile.do" ,method=RequestMethod.POST)
    @ResponseBody
    public String uploadFile(HttpServletRequest request, HttpServletResponse response) throws IllegalStateException, IOException {
        //初始化通用multipart解析器
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        String resultStr = "";

        //判断请求中是否有文件上传
        if (!multipartResolver.isMultipart(request)) {
            //请求为空，直接返回
            return null;
        }

        //解析请求，将文件信息放到迭代器里
        MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
        Iterator<String> iter = multiRequest.getFileNames();

        //迭代文件，存放到某一路径里
        while (iter.hasNext()) {
            //取得上传文件
            MultipartFile file = multiRequest.getFile(iter.next());

            if (null != file) {
                //取得当前上传文件的文件名称
                String myFileName = file.getOriginalFilename();
                //判断文件是否存在，文件名为空，则说明文件不
                if (myFileName.trim() != "") {
                    //重命名上传后的文件名
                    String fileName =this.getName(myFileName);
                    //定义上传路径
                    resultStr = fileName;
                    String path = "F://upload//" + fileName;
                    File localFile = new File(path);
                    file.transferTo(localFile);
                    //往数据库里插一条附件信息
                }
            }
        }
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("result", resultStr);
        ObjectMapper mapper = new ObjectMapper();
//        resultStr = mapper.writeValueAsString(map);

//        response.getWriter().write(resultStr);
        return resultStr;
    }

    public String getName(String myFileName){
        //获取一个50以内的随机值
        Random ra =new Random();
        int raNum = ra.nextInt(100);
        //获取当前系统时间
        Long nowTime =System.currentTimeMillis();
        String resultName = nowTime + "" + raNum + myFileName;
        return resultName;

    }
}