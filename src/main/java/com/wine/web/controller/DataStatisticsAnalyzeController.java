package com.wine.web.controller;

import com.wine.constants.Constants;
import com.wine.model.DataStatisticsAnalyze;
import com.wine.service.DataStatisticsAnalyzeService;
import com.wine.utils.WordKit;
import com.wine.web.bean.ParamPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/dataStatisticsAnalyze")
@OperateLogClassLevelAnnotation(module = "数据统计分析")
public class DataStatisticsAnalyzeController {

    @Autowired
    public DataStatisticsAnalyzeService dataStatisticsAnalyzeService;

    @RequestMapping("/toIndex")
    public String toIndex() {
        return "dataSA/index";
    }

    @RequestMapping("/form")
    public String form() {
        return "dataSA/form";
    }


    @RequestMapping("/findByPage")
    @ResponseBody
    public Map<String, Object> findByPage(ParamPage<DataStatisticsAnalyze> page, DataStatisticsAnalyze analyze) {

        int total = dataStatisticsAnalyzeService.countTotal(analyze);
        List<DataStatisticsAnalyze> rows = new ArrayList<DataStatisticsAnalyze>();
        if (total > 0) {
            rows = dataStatisticsAnalyzeService.findByPage(page, analyze);
        }

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("total", total);
        map.put("rows", rows);
        return map;
    }


    @RequestMapping("/uploadExcel")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "生成报告")
    public Map<String, Object> uploadExcel(MultipartFile file, DataStatisticsAnalyze analyze, HttpServletRequest request, HttpServletResponse response) {
        Map<String, Object> resultMap = new HashMap<String, Object>();
        InputStream ref = null;
        InputStream template = null;

        Object user = request.getSession().getAttribute(Constants.CURRENT_USER);
        String username = user == null ? "u" : user.toString();
        try {

            analyze.setCreateBy(user == null ? "" : user.toString())
                    .setCreateTime(new Date());

            int count = dataStatisticsAnalyzeService.countByYearAndSeason(analyze.getYear(), analyze.getSeason());

            if(count == 0){
                dataStatisticsAnalyzeService.insertEntity(analyze);
            } else {
                dataStatisticsAnalyzeService.updateEntityByYearAndSeason(analyze.getYear(), analyze.getSeason(), analyze.getCreateBy());
            }

            ref = file.getInputStream();

            String realPath = request.getSession().getServletContext().getRealPath("/docxfiles");
            File file3 = new File(realPath, analyze.getYear() + "年"+ analyze.getSeason() + ".docx");
            if(!file3.exists()){
                file3.createNewFile();
            }
//            FileUtils.copyInputStreamToFile(ref, file3);

            template = new FileInputStream(new File(realPath, "template.docx"));


            Map<String, String> configMap = new HashMap<String, String>();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
            String strDate = sdf.format(new Date());
            configMap.put("year", analyze.getYear() + "");
            configMap.put("bookYear", strDate);
            configMap.put("hello", "world");
            configMap.put("season", analyze.getSeason());

            WordKit.generateDataAnalyzeReportDocx222(ref, template, new FileOutputStream(file3), configMap);


            resultMap.put("msg",analyze.getYear() + "年"+ analyze.getSeason() + ".docx");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return resultMap;

    }


    @RequestMapping("/download")
    public void download(String filename, HttpServletRequest request, HttpServletResponse response){

        InputStream is = null;
        OutputStream os = null;

        try{
          String endCodeFileName = new String(filename.getBytes("GBK"),"ISO8859-1");
          response.reset();
          response.setHeader("Content-Type",
                  "application/octet-stream;charset=UTF-8");
          response.setHeader("Content-Disposition",
                  "attachment;filename=" + endCodeFileName);
          response.setHeader("Connection", "close");

          String realPath = request.getSession().getServletContext().getRealPath("/docxfiles");
          is = new FileInputStream(realPath + "/" + filename);

          os = response.getOutputStream();

          int size;
          byte[] buffer=new byte[1024];
          while((size = is.read(buffer)) != -1){
              os.write(buffer, 0, size);
          }
          os.flush();

      } catch ( Exception e){
          e.printStackTrace();
          throw new RuntimeException(e.getLocalizedMessage());
      } finally {
          if(null != is){
              try {
                  is.close();
              } catch (IOException e) {
                  e.printStackTrace();
              }
          }
          if(null != os){
              try {
                  os.close();
              } catch (IOException e) {
                  e.printStackTrace();
              }
          }
      }

    }


}
