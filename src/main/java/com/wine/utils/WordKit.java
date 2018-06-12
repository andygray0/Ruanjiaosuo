package com.wine.utils;

import org.apache.poi.util.Units;
import org.apache.poi.xssf.usermodel.XSSFPictureData;
import org.apache.poi.xwpf.usermodel.*;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WordKit {

    public static void generateDataAnalyzeReportDocx222(InputStream ref, InputStream template, OutputStream out, Map<String, String> configMap){

        XWPFDocument templateDocument = null;

        Map<String, Object> dataMapFromXlsx = new HashMap<String, Object>();

        try {

            dataMapFromXlsx = ImportExcelKit.getDataMapFromXlsx(ref);

            templateDocument = new XWPFDocument(template);

            List<XWPFParagraph> paragraphs = templateDocument.getParagraphs();
            int pIndex = 0;
            for (XWPFParagraph p : paragraphs) {

                // 替换图片
                if (null != p && null != p.getText() && p.getText().trim().startsWith("$${{")
                        && p.getText().trim().endsWith("}}$$")) {
                    String key = p.getText().trim();
                    List<XWPFRun> runs = p.getRuns();
                    for (int i = runs.size() - 1; i >= 0; i--) {
                        runs.get(i).setText("", 0);
                    }
                    String innerKey = key.replaceAll("\\$\\$\\{\\{", "").replaceAll("\\}\\}\\$\\$", "");

                    if(null != dataMapFromXlsx.get(innerKey)){
                        XSSFPictureData picData = (XSSFPictureData) dataMapFromXlsx.get(innerKey);

                        p.createRun().addPicture(new ByteArrayInputStream(picData.getData()), picData.getPictureType(),
                                innerKey + "." + picData.suggestFileExtension(), Units.toEMU(400), Units.toEMU(200));
                    }
                }

                // 替换文本中的数字
                if (null != p && null != p.getText() && p.getText().indexOf("@@{{table") > -1
                        && p.getText().indexOf("}}@@") > -1) {
                    String key = p.getText().trim();
                    pIndex++;
                    List<XWPFRun> runs = p.getRuns();
                    for (int i = runs.size() - 1; i >= 0; i--) {
                        runs.get(i).setText("", 0);
                    }

                    String result = key;
                    for (int i = 0; i < 100; i++) {
                        for (int j = 0; j < 100; j++) {
                            String mapkey = "@@{{table_" + pIndex + "_" + (i + 1) + "_" + j + "}}@@";
                            String mk2 = "table_" + pIndex + "_" + (i + 1) + "_" + j;
                            result = result.replace(mapkey, dataMapFromXlsx.get(mk2) == null ? "" : dataMapFromXlsx.get(mk2).toString());
                        }
                    }

                    p.createRun().setText(result);
                }

                // 替换文本中的其它内容
                if (null != p && null != p.getText() && p.getText().indexOf("%%((") > -1
                        && p.getText().indexOf("))%%") > -1) {
                    String key = p.getText().trim();
                    List<XWPFRun> runs = p.getRuns();
                    for (int i = runs.size() - 1; i >= 0; i--) {
                        runs.get(i).setText("", 0);
                    }
                    String result = key;

                    for (Map.Entry<String, String> kv : configMap.entrySet()) {
                        result = result.replaceAll("%%\\(\\(" + kv.getKey() + "\\)\\)%%", kv.getValue());
                    }

                    p.createRun().setText(result);
                }

            }

            // 替换表格
            List<XWPFTable> templateTables = templateDocument.getTables();
            if(null != templateTables && templateTables.size() > 0){
                for(int i = 0; i < templateTables.size(); i++){ // 表
                    XWPFTable table = templateTables.get(i);
                    for(int j = 0; j < table.getNumberOfRows(); j++){ // 行
                        XWPFTableRow row = table.getRows().get(j);
                        for(int k = 0; k < row.getTableCells().size(); k++){ // 列
                            XWPFTableCell cell = row.getCell(k);
                            if(null != cell){
                                try{
                                    XWPFParagraph xp = cell.getParagraphs().get(0);
                                    List<XWPFRun> runs = xp.getRuns();

                                    if(null != cell.getText() && cell.getText().trim().startsWith("@@[[") && cell.getText().trim().endsWith("]]@@")){

                                        String fullKey = cell.getText().trim();
                                        String simpleKey = fullKey.replaceAll("@", "")
                                                .replaceAll("\\[", "")
                                                .replaceAll("\\]", "");


                                        for (int ii = runs.size() - 1; ii >= 0; ii--) {
                                            runs.get(ii).setText("", 0);
                                        }
                                        XWPFRun run = xp.createRun();
//										run.setColor("D15FEE");
//										run.setBold(true);

                                        Object tmpObj = dataMapFromXlsx.get(simpleKey);
                                        if(null != tmpObj){
                                            run.setFontSize(10);
                                            run.setText(tmpObj.toString());
                                        } else {
                                            run.setText("");
                                        }

                                    }

                                } catch(Exception e){
                                    e.printStackTrace();
                                }
                            }
                        }
                    }
                }
            }


            templateDocument.write(out);


        } catch (Exception e){
            e.printStackTrace();
            throw new RuntimeException(e.getLocalizedMessage());
        } finally{
            if(null != ref){
                try {
                    ref.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(null != template){
                try {
                    template.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(null != out){
                try {
                    out.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(null != templateDocument){
                try {
                    templateDocument.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

    }




}
