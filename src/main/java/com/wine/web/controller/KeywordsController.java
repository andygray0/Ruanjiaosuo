package com.wine.web.controller;

import com.wine.model.ExtendsTableField;
import com.wine.model.KeywordCategory;
import com.wine.model.KeywordData;
import com.wine.service.KeywordCategoryService;
import com.wine.service.KeywordDataService;
import com.wine.utils.BeanKit;
import com.wine.utils.ExportExcelKit;
import com.wine.utils.ImportExcelKit;
import com.wine.utils.StringKit;
import com.wine.web.bean.ParamPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/keywords3")
@OperateLogClassLevelAnnotation(module = "关键字库管理")
public class KeywordsController {

    @Autowired
    private KeywordCategoryService keywordCategoryService;

    @Autowired
    private KeywordDataService keywordDataService;

    @RequestMapping("/toIndex")
    public String toIndex(Model model){
        List<KeywordCategory> categoryList = keywordCategoryService.findAll();
        model.addAttribute("categoryList", categoryList);

        return "role22/keywords3";
    }

    @RequestMapping("/findByPageBelowKeyword")
    @ResponseBody
    public Map<String,Object> findByPageBelowKeyword(ParamPage<KeywordData> pageInfo, KeywordData data){
        Map<String,Object> map = new HashMap<String, Object>();
        List<KeywordData> dataList = new ArrayList<KeywordData>();
        int count = keywordDataService.countTotalWithCondtions(data);
        if(count > 0){

            Integer keywordCategoryId = data.getKeywordCategoryId();
            List<ExtendsTableField> extendFieldsList = keywordDataService.findExtendsTableFieldsList(keywordCategoryId);
            String extendFields = "";
            if(null != extendFieldsList && extendFieldsList.size() > 0){
                for(ExtendsTableField field : extendFieldsList){
                    extendFields += "," + field.getFieldName();
                }
            }
            dataList = keywordDataService.findByPageWithCondtions(pageInfo, data, extendFields);
        }

        map.put("rows", dataList);
        map.put("total", count);
        return map;
    }


    @RequestMapping("/findCategoryColumns")
    @ResponseBody
    public List<ExtendsTableField> findCategoryColumns(Integer keywordCategoryId){
        List<ExtendsTableField> extendFieldsList = keywordDataService.findExtendsTableFieldsList(keywordCategoryId);
        return extendFieldsList;
    }

    @RequestMapping("/findCategoryAllColumns")
    @ResponseBody
    public List<ExtendsTableField> findCategoryAllColumns(Integer keywordCategoryId){
        List<ExtendsTableField> extendFieldsList = keywordDataService.findAllExtendsTableFieldsList(keywordCategoryId);
        return extendFieldsList;
    }


    @RequestMapping("/saveModifiedFields")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "动态字段维护")
    public String saveModifiedFields(@RequestBody List<ExtendsTableField> arr){
        Integer relationId = arr.get(0).getRelationId();
        keywordDataService.removeExtendFieldsByRelationId(relationId);
        keywordDataService.saveExtendFieldsRelation(arr);
        return "ok";
    }


    @RequestMapping("/deleteBatchByIds")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "删除选中的关键字数据")
    public String deleteBatchByIds(String ids){
        keywordDataService.deleteBatchByIds(ids);
        return "ok";
    }

    @RequestMapping("/saveKeywordData")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "保存关键字数据")
    public String saveKeywordData(KeywordData keywordData){
        keywordDataService.insertOne(keywordData);
        return "ok";
    }



    @RequestMapping("/deleteByIdOfKeywordCategory")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "删除关键字分类")
    public String deleteByIdOfKeywordCategory(Integer id){
        keywordDataService.deleteExtendFieldsByKeywordCategoryId(id);
        keywordDataService.deleteByKeywordCategoryId(id);
        keywordCategoryService.deleteById(id);
        return "ok";
    }

    @RequestMapping("/saveKeywordCategory")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "保存关键字分类")
    public KeywordCategory saveKeywordCategory(KeywordCategory keywordCategory){
        keywordCategoryService.insertOne(keywordCategory);
        return keywordCategory;
    }

    @RequestMapping("/updateKeywordCategoryById")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "修改关键字分类")
    public KeywordCategory updateKeywordCategoryById(KeywordCategory keywordCategory){
        keywordCategoryService.updateById(keywordCategory);
        return keywordCategory;
    }


    @RequestMapping("/exportExcel")
    @OperateLogMethodLevelAnnotation(method = "关键字库导出excel")
    public void exportExcel(HttpServletResponse response, KeywordData keywordData, String currentCategoryName){

        List<Map<String, Object>> resultMapList = new ArrayList<Map<String, Object>>();
        String[] headers = { "关键字"};
        String[] keys = {"keyword"};

        List<String> hl = new ArrayList<String>();
        for(String h : headers){
            hl.add(h);
        }

        List<String> keyList = new ArrayList<String>();
        for(String key : keys){
            keyList.add(key);
        }

        Map<String, Object> flagMap = new HashMap<String, Object>();

        int count = keywordDataService.countTotalWithCondtions(keywordData);
        if(count > 0){
            String extendColumns = "";
            List<ExtendsTableField> extendsTableFieldsList = keywordDataService.findExtendsTableFieldsList(keywordData.getKeywordCategoryId());
            if(null != extendsTableFieldsList && extendsTableFieldsList.size() > 0){
                for(ExtendsTableField field : extendsTableFieldsList){
                    hl.add(field.getFieldTitle());
                    keyList.add(field.getFieldName());
                    extendColumns += "," + field.getFieldName();
                }
                headers = hl.toArray(new String[]{});
                keys = keyList.toArray(new String[]{});
            }
            Map<String, Object> paramsMap = new HashMap<String,Object>();
            paramsMap.put("extendFields",extendColumns);
            List<KeywordData> resultList = keywordDataService.findByCategoryIdWithCondtions(paramsMap, keywordData);
            resultMapList = BeanKit.getMapListFromBeanList(resultList, keys);
        }

        String filename = currentCategoryName;
        ExportExcelKit.exportExcel(response, filename, headers, keys, resultMapList, flagMap);

    }


    @RequestMapping("/importExcelDiv")
    public String getimportExcelDivPage(){
        return "role22/importExcelDiv";
    }

    @RequestMapping("/uploadfilePlupload")
    public String getUploadfilePlupload(){
        return "role22/uploadfilePlupload";
    }


    @RequestMapping("/uploadExcel")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "关键字库导入Excel")
    public Map<String, Object> uploadExcel(MultipartFile file, Integer keywordCategoryId){

        String[] fields = {"keyword"};
        String[] titles = {"关键字"};

        Map<String,Object> flagMap = new HashMap<String, Object>();
        Map<String, Object> datas = new HashMap<String, Object>();
        try {

            List<String> fieldsList = new ArrayList<String>();
            for(String s : fields){
                fieldsList.add(s);
            }
            List<String> titleList = new ArrayList<String>();
            for(String s : titles){
                titleList.add(s);
            }

            List<ExtendsTableField> extendsTableFieldsList = keywordDataService.findExtendsTableFieldsList(keywordCategoryId);
            if(null != extendsTableFieldsList && extendsTableFieldsList.size() > 0){
                for(ExtendsTableField field : extendsTableFieldsList){
                    fieldsList.add(field.getFieldName());
                    titleList.add(field.getFieldTitle());
                }
                fields = fieldsList.toArray(new String[]{});
                titles = titleList.toArray(new String[]{});
            }

            datas = keywordDataService.validateExcelFile(file.getInputStream(),titles,file.getOriginalFilename());
            if(datas.get("color").toString().equals("red")){
                return datas;
            }

            List<Map<String,Object>> mapList = new ArrayList<Map<String, Object>>();
            if(file.getOriginalFilename().endsWith(".xlsx")){
                mapList = ImportExcelKit.getMapListFromExcelXlsx(file.getInputStream(),fields,flagMap );
            } else if(file.getOriginalFilename().endsWith(".xls")){
                mapList = ImportExcelKit.getMapListFromExcelXls(file.getInputStream(),fields,flagMap );
            }

            if(mapList.size() > 0){
                List<KeywordData> resultList = new ArrayList<KeywordData>();
                for(Map<String,Object> map : mapList){
                    KeywordData keyword = new KeywordData();
                    keyword.setKeyword(map.get("keyword") + "")
                            .setKeywordCategoryId(keywordCategoryId)
                            .setCategory0(map.get("category0") + "")
                            .setCategory1(map.get("category1") + "")
                            .setCategory2(map.get("category2") + "")
                            .setCategory3(map.get("category3") + "")
                            .setCategory4(map.get("category4") + "")
                            .setCategory5(map.get("category5") + "")
                            .setCategory6(map.get("category6") + "")
                            .setCategory7(map.get("category7") + "")
                            .setCategory8(map.get("category8") + "")
                            .setCategory9(map.get("category9") + "");
                    resultList.add(keyword);
                }
                int batchSize = 500;
                if(resultList.size() <= batchSize){
                    int c = keywordDataService.insertBatch(resultList);
                } else { // 每次向数据库插入batchSize条数据
                    int c2 = keywordDataService.insertRecordsOfPartition(resultList, batchSize);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("导入失败！" + e.getLocalizedMessage());
        }
        return datas;
    }


    @RequestMapping("/updateByOneField")
    @ResponseBody
    @OperateLogMethodLevelAnnotation(method = "修改一个字段的值")
    public String updateByOneField(Integer id, String field, String value){
        String tableField = StringKit.camelToUnderline(field);
        keywordDataService.updateByOneField(id,tableField,value);
        return "ok";
    }


    @RequestMapping("/validUniqueField")
    @ResponseBody
    public Map<String,Object> validUniqueField(String field, String value){
        int count = keywordCategoryService.findCountUniqueField(field, value);
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("valid", count == 0);
        return map;
    }

    @RequestMapping("/validByOneField")
    @ResponseBody
    public Map<String,Object> validByOneField(Integer id, String field, String value){
        int count = keywordCategoryService.findCountByOneField(id, field, value);
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("valid", count == 0);
        return map;
    }

}
