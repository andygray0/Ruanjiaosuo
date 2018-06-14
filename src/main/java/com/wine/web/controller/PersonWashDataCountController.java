package com.wine.web.controller;

import com.wine.model.DataCountSample;
import com.wine.model.DetailDataSizeCount;
import com.wine.model.PersonWashWaitCheckData;
import com.wine.service.PersonWashService;
import com.wine.utils.BeanKit;
import com.wine.utils.ExportExcelKit;
import com.wine.web.bean.ParamPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller
@RequestMapping("/personWashDataCount")
public class PersonWashDataCountController {

    @Autowired
    private PersonWashService personWashService;

    @RequestMapping("/toIndex")
    public String toIndex(Model model) {
        return "personwash/data_count";
    }

    @RequestMapping("/findByPage")
    @ResponseBody
    public Map<String, Object> findByPage(ParamPage<DataCountSample> page, Integer year, Integer month) {
        Map<String, Object> map = new HashMap<String, Object>();

        int total = personWashService.countDataCountTotal(year, month);

        List<DataCountSample> dataList = new ArrayList<DataCountSample>();
        if(total > 0){

            List<DataCountSample> result = personWashService.countDataCountByPage(page, year, month);

            Map<String, List<DataCountSample>> dataMap = new TreeMap<String, List<DataCountSample>>(new Comparator<String>() {
                @Override
                public int compare(String o1, String o2) {
                    return o2.compareTo(o1);
                }
            });
            for (DataCountSample data : result) {
                String key = data.getYear() + "-" + (data.getMonth() < 10 ? "0" + data.getMonth() : data.getMonth());
                List<DataCountSample> tmpList = dataMap.get(key);
                if (null == tmpList) {
                    tmpList = new ArrayList<DataCountSample>();
                }
                tmpList.add(data);
                dataMap.put(key, tmpList);
            }

            for (Map.Entry<String, List<DataCountSample>> entry : dataMap.entrySet()) {
                DataCountSample data = new DataCountSample();

                String[] split = entry.getKey().split("-");
                data.setYear(Integer.parseInt(split[0]))
                        .setMonth(Integer.parseInt(split[1]));

                if(null != entry.getValue() && entry.getValue().size() > 0){
                    int itemRecord = 0;
                    int queryRecord = 0;
                    int validRecord = 0;
                    int finishRecord = 0;
                    for(DataCountSample dcs : entry.getValue()){
                        Integer status = dcs.getStatus();
                        itemRecord += dcs.getItemRecord();
                        if(status == 0){ // 查询中
                            queryRecord += dcs.getItemRecord();
                        } else if(status == 1){ // 待验证
                            validRecord += dcs.getItemRecord();
                        } else if(status == 2){ // 验证通过
                            finishRecord += dcs.getFinishRecord();
                        } else if(status == 3) { // 验证退回
                            queryRecord += dcs.getItemRecord();
                        } else if(status == 4){ // 任务被放弃

                        } else if(status == 5){ // 放弃后已处理
                            finishRecord += dcs.getFinishRecord();
                        }


                    }
                    data.setItemRecord(itemRecord)
                        .setQueryRecord(queryRecord)
                        .setValidRecord(validRecord)
                        .setFinishRecord(finishRecord);

                    dataList.add(data);
                }


            }
        }

        List<DataCountSample> finalList = new ArrayList<DataCountSample>();
        for(int i = (page.getPage() - 1 ) * page.getLimit(); i < page.getPage() * page.getLimit(); i++){
            try{
                finalList.add(dataList.get(i));
            } catch (Exception e){}
        }

//        personWashService
        map.put("total", total);
        map.put("rows", finalList);
        return map;
    }


    @RequestMapping("/popDetailDataCountDialog")
    public String popDetailDataCountDialog(Model model, Integer year, Integer month){
        model.addAttribute("year", year);
        model.addAttribute("month", month);
        return "personwash/detail_data_count";
    }


    @RequestMapping("/findByPageForDetailInfo")
    @ResponseBody
    public Map<String, Object> findByPageForDetailInfo(ParamPage<DetailDataSizeCount> page, Integer year, Integer month){
        Map<String, Object> map = new HashMap<String, Object>();

        int total = personWashService.countDetailByYearAndMonth(year, month);

        List<DetailDataSizeCount> countList = new ArrayList<DetailDataSizeCount>();

       if(total > 0){
           countList = personWashService.findByPageOfDetailCount(page, year, month);

           for(DetailDataSizeCount count: countList){
               List<PersonWashWaitCheckData> checkList = personWashService.findCheckDataListByTaskId(count.getId());
               if(null != checkList && checkList.size() > 0){
                   for(PersonWashWaitCheckData check: checkList){
                       List<String> list = BeanKit.getDynamicFieldsBySuffixIsNotNull(check, "Check");
                       switch (list.size()){
                           case 0: break;
                           case 1: count.setItem1(count.getItem1() + 1);break;
                           case 2: count.setItem2(count.getItem2() + 1);break;
                           case 3: count.setItem3(count.getItem3() + 1);break;
                           case 4: count.setItem4(count.getItem4() + 1);break;
                           default: count.setItem5(count.getItem5() + 1);break;
                       }
                   }
               }
           }

       }

        map.put("total", total);
        map.put("rows", countList);
        return map;
    }


    @RequestMapping("/exportExcelDetail")
    public void exportExcelDetail(HttpServletResponse response, Integer year, Integer month){

        List<DetailDataSizeCount> countList = personWashService.findAllOfDetailCount(year, month);

        for(DetailDataSizeCount count: countList){
            List<PersonWashWaitCheckData> checkList = personWashService.findCheckDataListByTaskId(count.getId());
            if(null != checkList && checkList.size() > 0){
                for(PersonWashWaitCheckData check: checkList){
                    List<String> list = BeanKit.getDynamicFieldsBySuffixIsNotNull(check, "Check");
                    switch (list.size()){
                        case 0: break;
                        case 1: count.setItem1(count.getItem1() + 1);break;
                        case 2: count.setItem2(count.getItem2() + 1);break;
                        case 3: count.setItem3(count.getItem3() + 1);break;
                        case 4: count.setItem4(count.getItem4() + 1);break;
                        default: count.setItem5(count.getItem5() + 1);break;
                    }
                }
            }
        }


        String filename = year + "年" + month + "月" + "数据量统计详情";
        String[] headers = {"分配任务","数据量(条)","1项数据量(条)","2项数据量(条)","3项数据量(条)","4项数据量(条)","5项数据量(条)","数据量(项)"};
        String[] keys = {"task_name","record_count","item1","item2","item3","item4","item5","item_count"};
        List<Map<String,Object>> mapList = BeanKit.getMapListFromBeanList(countList, keys);
        Map<String, Object> flagMap = new HashMap<String, Object>();

        ExportExcelKit.exportExcel(response,filename,headers, keys, mapList, flagMap);

    }



    @RequestMapping("/exportExcel")
    public void exportExcel(HttpServletResponse response){


        List<DataCountSample> result = personWashService.countDataCountByPage(null, null, null);

        List<DataCountSample> dataList = new ArrayList<DataCountSample>();

        if(null != result && result.size() > 0){
            Map<String, List<DataCountSample>> dataMap = new TreeMap<String, List<DataCountSample>>(new Comparator<String>() {
                @Override
                public int compare(String o1, String o2) {
                    return o2.compareTo(o1);
                }
            });
            for (DataCountSample data : result) {
                String key = data.getYear() + "-" + (data.getMonth() < 10 ? "0" + data.getMonth() : data.getMonth());
                List<DataCountSample> tmpList = dataMap.get(key);
                if (null == tmpList) {
                    tmpList = new ArrayList<DataCountSample>();
                }
                tmpList.add(data);
                dataMap.put(key, tmpList);
            }

            for (Map.Entry<String, List<DataCountSample>> entry : dataMap.entrySet()) {
                DataCountSample data = new DataCountSample();

                String[] split = entry.getKey().split("-");
                data.setYear(Integer.parseInt(split[0]))
                        .setMonth(Integer.parseInt(split[1]));

                if(null != entry.getValue() && entry.getValue().size() > 0){
                    int itemRecord = 0;
                    int queryRecord = 0;
                    int validRecord = 0;
                    int finishRecord = 0;
                    for(DataCountSample dcs : entry.getValue()){
                        Integer status = dcs.getStatus();
                        itemRecord += dcs.getItemRecord();
                        if(status == 0){ // 查询中
                            queryRecord += dcs.getItemRecord();
                        } else if(status == 1){ // 待验证
                            validRecord += dcs.getItemRecord();
                        } else if(status == 2){ // 验证通过
                            finishRecord += dcs.getFinishRecord();
                        } else if(status == 3) { // 验证退回
                            queryRecord += dcs.getItemRecord();
                        } else if(status == 4){ // 任务被放弃

                        } else if(status == 5){ // 放弃后已处理
                            finishRecord += dcs.getFinishRecord();
                        }


                    }
                    data.setItemRecord(itemRecord)
                            .setQueryRecord(queryRecord)
                            .setValidRecord(validRecord)
                            .setFinishRecord(finishRecord);

                    dataList.add(data);
                }
            }
        }


        String filename = "数据量统计";
        String[] headers = {"年份","月份","总数据量(条数)","查询中(条数)","待验证(条数)","已完结(条数)"};
        String[] keys = {"year","month","item_record","query_record","valid_record","finish_record"};
        List<Map<String,Object>> mapList = BeanKit.getMapListFromBeanList(dataList, keys);
        Map<String, Object> flagMap = new HashMap<String, Object>();

        ExportExcelKit.exportExcel(response,filename,headers, keys, mapList, flagMap);

    }


}
