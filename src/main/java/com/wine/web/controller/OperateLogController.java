package com.wine.web.controller;

import com.wine.model.OperateLog;
import com.wine.service.OperateLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/operateLog")
public class OperateLogController {

    @Autowired
    private OperateLogService operateLogService;

    @RequestMapping("/toIndex")
    public String toIndex(){

        DatabaseMetaData metadata = operateLogService.getMetaData();
        try {
            ResultSet rs = metadata.getColumns(null, "lxty", "t_dynamic_desc_keyword", null);
            while(rs.next()){

                List<String> list = Arrays.asList(
                        "TABLE_CAT",
                        "TABLE_SCHEM",
                        "TABLE_NAME",
                        "COLUMN_NAME",
                        "DATA_TYPE",
                        "TYPE_NAME",
                        "COLUMN_SIZE",
                        "BUFFER_LENGTH",
                        "DECIMAL_DIGITS",
                        "NUM_PREC_RADIX",
                        "NULLABLE",
                        "REMARKS",
                        "COLUMN_DEF",
                        "SQL_DATA_TYPE",
                        "SQL_DATETIME_SUB",
                        "CHAR_OCTET_LENGTH",
                        "ORDINAL_POSITION",
                        "IS_NULLABLE",
                        "SOURCE_DATA_TYPE",
                        "IS_AUTOINCREMENT"
                );

                for(String s : list){
                    System.out.println(s + "  :  " + rs.getString(s));
                }

                System.out.println("############################################################");
                System.out.println("############################################################");

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


//        Map<String,Object> map = operateLogService.findToMapListByParams();
//        if(null != map && map.keySet().size() > 0){
//            for(Map.Entry<String, Object> entry : map.entrySet()){
//                String key = entry.getKey();
//                System.out.println(key + "  :  " + entry.getValue());
//            }
//        }




        return "role22/operateLog";
    }

    @RequestMapping("/getByPage")
    @ResponseBody
    public Map<String,Object> getByPage(Integer limit, Integer page){
        Map<String,Object> map = new HashMap<String, Object>();
        List<OperateLog> roleList = operateLogService.findByPage(limit, page, "id", "ASC" );
        int total = operateLogService.countTotal();
        map.put("rows", roleList);
        map.put("total", total);
        return map;
    }



}
