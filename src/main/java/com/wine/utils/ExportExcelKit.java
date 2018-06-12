package com.wine.utils;

import org.apache.poi.xssf.usermodel.*;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;

public class ExportExcelKit {

    public static void exportExcel(HttpServletResponse response, String filename, String[] headers, String[] keys, List<Map<String, Object>> mapList, Map<String,Object>  flagMap) {
        try {
            XSSFWorkbook wb = new XSSFWorkbook();
            // 2.在workbook中添加一个sheet，对应Excel中的一个sheet
            XSSFSheet sheet = wb.createSheet("sheet1");
            sheet.setDefaultColumnWidth(20);
            // 3.在sheet中添加表头第0行，老版本poi对excel行数列数有限制short
            XSSFRow row = sheet.createRow((int) 0);
            // 4.创建单元格，设置值表头，设置表头居中
            XSSFCellStyle style = wb.createCellStyle();
            // 居中格式
            style.setAlignment(XSSFCellStyle.ALIGN_LEFT);
            // 设置字体
            XSSFFont font = wb.createFont();
            font.setBoldweight(XSSFFont.BOLDWEIGHT_BOLD);
            style.setFont(font);

            for (int i = 0; i < headers.length; i++) {
                XSSFCell cell = row.createCell(i);
                cell.setCellValue(headers[i]);
                cell.setCellStyle(style);
            }

            for (int i = 0; i < mapList.size(); i++) {
                row = sheet.createRow((int) i + 1);
                Map<String, Object> map = mapList.get(i);
                for(int j = 0; j < keys.length; j++){
                    String key = keys[j];
                    String value = "" + map.get(key);
                    if(key.startsWith("#")){
                        value = "" + map.get(key.replaceAll("#",""));
                        value = "" + flagMap.get(key + value);
                    }
                    if("null".equals(value)){
                        value = "";
                    }
                    row.createCell(j).setCellValue(value);
                }
            }

            ByteArrayOutputStream os = new ByteArrayOutputStream();
            wb.write(os);
            byte[] content = os.toByteArray();
            InputStream is = new ByteArrayInputStream(content);
            // 设置response参数，可以打开下载页面
            response.reset();
            response.setContentType("application/vnd.ms-excel;charset=utf-8");
            response.setHeader("Content-Disposition", "attachment;filename="
                    + new String((filename + ".xlsx").getBytes(), "iso-8859-1"));
            ServletOutputStream out = response.getOutputStream();
            BufferedInputStream bis = null;
            BufferedOutputStream bos = null;

            try {
                bis = new BufferedInputStream(is);
                bos = new BufferedOutputStream(out);
                byte[] buff = new byte[2048];
                int bytesRead;
                while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
                    bos.write(buff, 0, bytesRead);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (bis != null)
                    bis.close();
                if (bos != null)
                    bos.close();
            }

        } catch (Exception e) {
            throw new RuntimeException("导出失败，" + e.getMessage() + e.getLocalizedMessage());
        }
    }

}
