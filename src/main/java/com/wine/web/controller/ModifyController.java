package com.wine.web.controller;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.wine.model.PersonWashCleanResult;
import com.wine.model.PersonWashWaitCheckData;
import com.wine.model3.TobewashWithBLOBs;
import com.wine.service.TobewashService;
import com.wine.service.UrlconService;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.lang.reflect.Field;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/modify")
public class ModifyController {
    @Resource
    private TobewashService tobewashService;
    @Resource
    private UrlconService urlconService;


    @RequestMapping(value = "/showQuery.do")
    @ResponseBody
    public Map showQuery(Integer limit, Integer page, String sql,String i) {
        Map map = new HashMap();
        if(i.equals("")){
            return null;
        }
        if (i.equals("urlcontent")) {
            map = tobewashService.showQuery(limit, page, sql);
        } else {
            map = urlconService.showQuery(limit, page,i,sql);
        }
        return map;
    }

    @RequestMapping(value = "/modify.do")
    @ResponseBody
    public Map shownew(String column, String sql, String modify) {
        return tobewashService.modify(sql, column, modify);
    }

    @RequestMapping(value = "/deleterows.do")
    @ResponseBody
    public Map deleterows( String sql) {
        return tobewashService.deleteBySql(sql);
    }

    @RequestMapping(value = "/exportExcel.do")
    @ResponseBody
    public void exportExcel(HttpServletResponse response, String sql, String fields) {
        try{
        sql = URLDecoder.decode(sql, "utf-8");}
        catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        List<TobewashWithBLOBs> list = tobewashService.getListBySqlWithBlob(sql);

        tobewashService.handlerListOnlySelect(list, fields);

        System.out.println(list);

        String fn;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        Date date = new Date();
        fn = simpleDateFormat.format(date);
        String excelPath = "F:\\"+fn+".xlsx";
//        String jsonStr = JSON.toJSONString(list,SerializerFeature.WriteMapNullValue);
        String jsonStr = JSON.toJSONString(list,SerializerFeature.WriteMapNullValue);
        JSONArray jo = JSONArray.parseArray(jsonStr);
        Workbook workbook = null;
        try {
            // XSSFWork used for .xslx (>= 2007), HSSWorkbook for 03 .xsl
            workbook = new XSSFWorkbook();//HSSFWorkbook();//WorkbookFactory.create(inputStream);
        }catch(Exception e) {
            System.out.println("It cause Error on CREATING excel workbook: ");
            e.printStackTrace();
        }
        if(workbook != null) {
            Sheet sheet = workbook.createSheet();
            Row row0 = sheet.createRow(0);
            int bignum = 0;
            for(int i=1;i<jo.size();i++){
                if(jo.getJSONObject(i).size()>jo.getJSONObject(i-1).size()){
                    bignum = i;
                }
            }
            List list1 = new ArrayList();
            for(String str:fields.split(",")){
                list1.add(str);
            }
            JSONObject item = jo.getJSONObject(bignum);
            Iterator<String> iterator = item.keySet().iterator();
            int column = 0;
            while (iterator.hasNext()) {
                String key = iterator.next(); // 得到keypr
                if(list1.contains(key)) {
                    if ("irContentStr".equals(key) || "irUrlcontentStr".equals(key) || "irUrlbodyStr".equals(key)) {
                        key = key.replaceAll("Str", "");
                    }
                    Cell cell = row0.createCell(column++);
                    cell.setCellValue(toupper(key));
                }
            }

            for (int rowNum = 1; rowNum <= jo.size(); rowNum++) {
                Row row = sheet.createRow(rowNum);
                JSONObject item1 = jo.getJSONObject(rowNum-1);
                Iterator<String> iterator1 = item1.keySet().iterator();
                column = 0;// 从第0列开始放
                while (iterator1.hasNext()) {
                    String key = iterator1.next(); // 得到key
                    if(list1.contains(key)){
                    Cell cell = row.createCell(column++);
                    String cellValue = item1.getString(key);
                    if("irContentStr".equals(key) ||  "irUrlcontentStr".equals(key)  || "irUrlbodyStr".equals(key) ){
                        if(cellValue != null && cellValue.length() > 32767){
                            cellValue = cellValue.substring(0, 32767);
                        }
                    }
                    cell.setCellValue(cellValue);}
                }
            }
            try {
                FileOutputStream outputStream = new FileOutputStream(excelPath);
                workbook.write(outputStream);
                outputStream.flush();
                outputStream.close();
            } catch (Exception e) {
                System.out.println("It cause Error on WRITTING excel workbook: ");
                e.printStackTrace();
            }
        }
        try{
        File sss = new File(excelPath);
        InputStream bis = new BufferedInputStream(new FileInputStream(sss));
        response.reset();
        response.setContentType("application/vnd.ms-excel;charset=utf-8");
        response.setHeader("Content-Disposition", "attachment;filename="
                + new String((fn + ".xlsx").getBytes(), "iso-8859-1"));
        int len = 0;
            BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
            while((len = bis.read()) != -1){
                out.write(len);
                out.flush();
            }
            out.close();
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    @RequestMapping(value = "/getmodel.do")
    @ResponseBody
    public void getmodel(HttpServletResponse response, String sql) {

        String excelPath = "F:\\upload\\daorumuban.xlsx";

        try{
            File sss = new File(excelPath);
            InputStream bis = new BufferedInputStream(new FileInputStream(sss));
            response.reset();
            response.setContentType("application/vnd.ms-excel;charset=utf-8");
            response.setHeader("Content-Disposition", "attachment;filename="
                    + new String(("导入模板.xlsx").getBytes(), "iso-8859-1"));
            int len = 0;
            BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
            while((len = bis.read()) != -1){
                out.write(len);
                out.flush();
            }
            out.close();
        }catch (Exception e){
            e.printStackTrace();
        }

    }
    private String toupper(String str){
        char[] chars = str.toCharArray();
        String result = "";
        for(int i=0;i<chars.length;i++){
            if(Character.isUpperCase(str.charAt(i))){
                result= result + "_"+ str.charAt(i);
            }
            else {result = result + ( Character.toString(chars[i])).toUpperCase();}
        }
        return result;
    }

    @RequestMapping(value = "/urlconlist.do")
    @ResponseBody
    public Map shownew(int limit, int page) {
        return tobewashService.showlist(limit, page);
    }




    @RequestMapping(value = "/insertexcel.do")
    @ResponseBody
    public Map insertexcel(String fn,int type){
        Map map = new HashMap();
        try{
            return tobewashService.insertExcel(fn,type);}
        catch (Exception e){
            map.put("success",false);
            map.put("msg",e.getMessage());
            return map;
        }
    }

}
