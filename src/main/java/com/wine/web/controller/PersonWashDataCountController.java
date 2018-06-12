package com.wine.web.controller;

import com.wine.model.DataCountSample;
import com.wine.service.PersonWashService;
import com.wine.web.bean.ParamPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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


}
