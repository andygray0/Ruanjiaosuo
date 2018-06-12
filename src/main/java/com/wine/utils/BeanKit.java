package com.wine.utils;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by acer on 2018/2/12.
 */
public class BeanKit {

    public static Map<String, Object> getMapFromBeanProperties(Object bean, String... tableFields){
        Map<String, Object> fieldsMap = new HashMap<String,Object>();
        for(String field : tableFields){
            try{
                if(null != field && field.startsWith("#")){
                    field = field.replaceAll("#", "");
                }
                String property = "";
                String[] split = field.toLowerCase().split("_");
                for(String s : split){
                    property += StringKit.firstLetterToUpper(s);
                }
                Method method = bean.getClass().getDeclaredMethod("get" + property);
                Object invoke = method.invoke(bean);
                fieldsMap.put(field,invoke);
            } catch (Exception e){
                e.printStackTrace();
            }
        }
        return fieldsMap;
    }


    public  static  List<Map<String, Object>> getMapListFromBeanList(List list, String... tableFields){
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        if(null != list && list.size() > 0){
            for(Object t : list){
                Map<String, Object> map = getMapFromBeanProperties(t, tableFields);
                mapList.add(map);
            }
        }
        return mapList;
    }

    public static String getExportExcelFilenameSuffix(Object object, String[] keys, String[] headers, Map<String, Object> flagMap) {
        try{
            String filename = "(条件";
            if(null != keys && keys.length > 0){
                for(int i = 0; i < keys.length; i++){
                    if(!"id".equals(keys[i])){
                        Method method = object.getClass().getDeclaredMethod("get" + StringKit.firstLetterToUpper(keys[i].replaceAll("#","")));
                        Object value = method.invoke(object);

                        if(null != value){
                            if(keys[i].startsWith("#")){
                                value = flagMap.get(keys[i] + value);
                            }
                            String typeClass = value.getClass().getSimpleName();
                            if("String".equals(typeClass)){
                                if(!"".equals(value.toString().trim())){
                                    filename += "，"+ headers[i] +"__" + value;
                                }
                            }else {
                                filename += "，"+ headers[i] +"__" + value;
                            }
                        }
                    }
                }
            }
            filename += ")";
            return filename;
        } catch (Exception e){
            e.printStackTrace();
            return "";
        }
    }


    public static  List<String> getDynamicFieldsBySuffixIsNotNull(Object o, String suffix){
        List<String>  list = new ArrayList<String>();
        try {
            Method[] declaredMethods = o.getClass().getDeclaredMethods();
            for(Method m : declaredMethods){
                if(m.getName().startsWith("get") && m.getName().endsWith(suffix)){
                    String methodName = m.getName().substring(0, m.getName().length() - suffix.length());
                    Method real = o.getClass().getMethod(methodName + suffix);
                    Object obj = real.invoke(o);
                    if(null != obj && !obj.toString().trim().equals("")){
                        list.add(StrKit.camelToUnderline(methodName.substring(3)));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return  list;
    }


    public static Object getValueByField(String field, Object o){
        try {
            String methodName = StrKit.toCamelName(field.toLowerCase());
            Method method = o.getClass().getDeclaredMethod("get" + StrKit.uppercaseFirstLetter(methodName));
            return method.invoke(o);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
