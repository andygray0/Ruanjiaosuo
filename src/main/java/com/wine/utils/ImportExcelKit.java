package com.wine.utils;

import org.apache.poi.POIXMLDocumentPart;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.PictureData;
import org.apache.poi.xssf.usermodel.*;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.*;

public class ImportExcelKit {

    public static List<Map<String, Object>> getMapListFromExcelXls(InputStream is, String[] fields, Map<String,Object> flagMap){
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        try{
            HSSFWorkbook workbook = new HSSFWorkbook(is);
            HSSFSheet sheet = workbook.getSheetAt(0);

            for(int i = 1; i < sheet.getLastRowNum() + 1; i++){
                HSSFRow row = sheet.getRow(i);
                Map<String,Object> dataMap = new HashMap<String,Object>();
                for(int j = 0; j < fields.length; j++){
                    if(fields[j].startsWith("#")){
                        dataMap.put(fields[j].replaceAll("#",""), flagMap.get(fields[j] + row.getCell(j)));
                    } else {
                        dataMap.put(fields[j], row.getCell(j));
                    }
                }
                mapList.add(dataMap);
            }
        } catch (Exception e){
            throw new RuntimeException("导入失败！" + e.getLocalizedMessage());
        } finally {
            if(null != is){
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return mapList;
    }


    public static List<Map<String, Object>> getMapListFromExcelXlsx(InputStream is, String[] fields, Map<String,Object> flagMap){
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        try{
            XSSFWorkbook workbook = new XSSFWorkbook(is);
            XSSFSheet sheet = workbook.getSheetAt(0);

            for(int i = 1; i < sheet.getLastRowNum() + 1; i++){
                XSSFRow row = sheet.getRow(i);
                Map<String,Object> dataMap = new HashMap<String,Object>();
                for(int j = 0; j < fields.length; j++){
                    if(fields[j].startsWith("#")){
                        dataMap.put(fields[j].replaceAll("#",""), flagMap.get(fields[j] + row.getCell(j)));
                    } else {
                        dataMap.put(fields[j], row.getCell(j));
                    }
                }
                mapList.add(dataMap);
            }
        } catch (Exception e){
            throw new RuntimeException("导入失败！" + e.getLocalizedMessage());
        } finally {
            if(null != is){
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return mapList;
    }



    public static Map<String, Object> getDataMapFromXlsx(InputStream is) {

        Map<String, Object> resultMap = new HashMap<String, Object>();
        XSSFWorkbook workbook = null;

        try{
            workbook = new XSSFWorkbook(is);
            XSSFSheet sheet = workbook.getSheetAt(0);


            List<PictureData> allPictures = new ArrayList<PictureData>();
            Map<String, PictureData> map = getSheetPictrues07(0, (XSSFSheet)workbook.getSheetAt(0), (XSSFWorkbook)workbook);
            for(Map.Entry<String, PictureData> entry : map.entrySet()){
                allPictures.add(entry.getValue());
            }

            int tableIndex = 0;
            int reference = 0;

            for(int i = 0; i < sheet.getLastRowNum() + 1; i++){
                XSSFRow row = sheet.getRow(i);
                if(null != row){
                    for(int j = 0; j < row.getLastCellNum(); j++){
                        XSSFCell cell = row.getCell(j);
                        if(null != cell){
                            String cellValue = "";
                            if(cell.getCellTypeEnum() == CellType.NUMERIC){
                                cellValue =  cell.getNumericCellValue() + "";
                                if(!cellValue.endsWith(".0")){
                                    cellValue = getStringPercent(cell.getNumericCellValue());
                                } else {
                                    cellValue = cellValue.substring(0, cellValue.length() - 2);
                                }
                            } else if(cell.getCellTypeEnum() == CellType.STRING){
                                cellValue = cell.getStringCellValue();
                            } else if(cell.getCellTypeEnum() == CellType.BLANK){
                                cellValue = null;
                            }
                            if(cellValue != null){
                                if(cellValue.trim().startsWith("表" + (tableIndex + 1) + ":")){
                                    tableIndex++;
                                    reference = i;
                                }
                                resultMap.put("table_" + tableIndex + "_" + (i - reference)  + "_" + (j), cellValue);
                            }
                        }
                    }
                }
            }


            for(int i = 0; i < allPictures.size(); i++){
                resultMap.put("pic" + ((i + 1) < 10 ? "0" + (i + 1) : (i + 1)), allPictures.get(i));
            }
        } catch(Exception e){
            e.printStackTrace();
            throw new RuntimeException(e.getLocalizedMessage());
        } finally{
            if(null != workbook){
                try {
                    workbook.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(null != is){
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        return resultMap;

    }

    /**
     * 获取Excel2007图片
     * @param sheetNum 当前sheet编号
     * @param sheet 当前sheet对象
     * @param workbook 工作簿对象
     * @return Map key:图片单元格索引（0_1_1）String，value:图片流PictureData
     */
    public static Map<String, PictureData> getSheetPictrues07(int sheetNum,
                                                              XSSFSheet sheet, XSSFWorkbook workbook) {
        Map<String, PictureData> sheetIndexPicMap = new TreeMap<String, PictureData>(new Comparator<String>() {

            @Override
            public int compare(String o1, String o2) {
                return o1.compareTo(o2);
            }

        });

        for (POIXMLDocumentPart dr : sheet.getRelations()) {
            if (dr instanceof XSSFDrawing) {
                XSSFDrawing drawing = (XSSFDrawing) dr;
                List<XSSFShape> shapes = drawing.getShapes();
                for (XSSFShape shape : shapes) {
                    XSSFPicture pic = (XSSFPicture) shape;
                    XSSFClientAnchor anchor = pic.getPreferredSize();
                    CTMarker ctMarker = anchor.getFrom();
                    String picIndex = String.valueOf(sheetNum) + "_"
                            + getSomeZero(ctMarker.getRow()) + "_"
                            + getSomeZero(ctMarker.getCol());
                    sheetIndexPicMap.put("pic" + picIndex, pic.getPictureData());
                }
            }
        }

        return sheetIndexPicMap;
    }


    public static String getStringPercent(Double d){
        String s = d + "";

        if(d < 0){
            s = -1 * d + "";
        }

        DecimalFormat df = new DecimalFormat("#.0000");
        String s2 = df.format(new BigDecimal(s));
        String result = s2.charAt(1) + "" +
                s2.charAt(2) + "" +
                s2.charAt(0) + "" +
                s2.charAt(3) + "" +
                s2.charAt(4);

        if(Math.abs(d) >= 1){  // 1.2345
            result = s2.charAt(0) + "" +
                    s2.charAt(2) + "" +
                    s2.charAt(3) + "" +
                    s2.charAt(1) + "" +
                    s2.charAt(4) + "" +
                    s2.charAt(5);
        }

        if(d < 0){
            result = "-" + result;
        }

        return result + "%";
    }



    public static String getSomeZero(int n){
        if(n < 10){
            return "00" + n;
        }else if (n < 100){
            return "0" + n;
        } else {
            return "" + n;
        }
    }


}
