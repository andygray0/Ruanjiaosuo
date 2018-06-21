package com.wine.web.controller;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.wine.model.*;
import com.wine.model3.*;
import com.wine.quartz.ScheduleTask;
import com.wine.service.*;
import com.wine.utils.StrKit;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.*;

import static java.lang.Integer.parseInt;

@Controller
public class UrlconController {
    @Autowired
    private UrlconService urlconService;
    @Autowired
    private TobewashService tobewashService;
    @Autowired
    private RuleService ruleService;
    @Autowired
    private PersonWashService personWashService;
    @Autowired
    private TaskService taskService;
    @Autowired
    private WashLogService washLogService;

    @RequestMapping(value = "/getUrlconByQuery.do")
    @ResponseBody
    public Map getbymap(int limit, int page,String fromtable, String sql){
        if(fromtable.equals("")){
            return null;
        }
        return urlconService.getBySql(limit, page,fromtable,sql);
    }

    @RequestMapping(value = "/getFromTables.do")
    @ResponseBody
    public List<String> getFromTable(){
        return urlconService.showFromTables();
    }

    @RequestMapping(value = "/getToTables.do")
    @ResponseBody
    public List<String> getToTable(){
        return urlconService.showToTables();
    }

    @RequestMapping(value = "/wash.do")
    @ResponseBody
    public Map createExcelFile(HttpServletResponse response,String columnname,String fromtable, String sql, String rule, String totable) {
        List<UrlconWithBLOBs> list = urlconService.getAllBySql(fromtable,sql);
        List<String> rules =  Arrays.asList(rule.split(","));
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String dateString = formatter.format(currentTime);
        int num = washLogService.findAllLogs(dateString);
        WashLog washlog = new WashLog();
        washlog.setName(dateString+num+1);
        washlog.setGoaltable(totable);
        washlog.setSourcetable(fromtable);
        washlog.setFromtime(new Date());
        String rulenames = ruleService.getNamesByIds(rule);
        washlog.setRules(rulenames);
        washlog.setQuerys("select * from "+fromtable+" "+sql);
        washlog.setCounts(list.size());
        washlog.setExway(0);
        washlog.setSimplewashcolumn(columnname);
        if(list.size()<1){
            Map map = new HashMap();
            map.put("success",false);
            map.put("msg","未查到数据！");
            washlog.setSuccessflag(0);
            washlog.setErrlog("未查到数据！");
            washLogService.insert(washlog);
            return map;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        Date date = new Date();
        String dt;
        dt = simpleDateFormat.format(date);
        String excelPath = "F:\\"+dt+".xlsx";
        String jsonStr = JSON.toJSONString(list,SerializerFeature.WriteMapNullValue);
        JSONArray jo = JSONArray.parseArray(jsonStr);
        Workbook workbook = new XSSFWorkbook();
            Sheet sheet = workbook.createSheet();
            Row row0 = sheet.createRow(0);
            JSONObject item = jo.getJSONObject(0);
            Iterator<String> iterator = item.keySet().iterator();
            int column = 0;
            while (iterator.hasNext()) {
                if (columnname.equals("")){
                String key = iterator.next(); // 得到keypr
                Cell cell = row0.createCell(column++);
                cell.setCellValue(toupper(key));
                }
                else{
                    String key = iterator.next(); // 得到keypr
                    String upperkey =toupper(key);
                    if(upperkey.equals("IR_SID")||upperkey.equals(columnname)||upperkey.equals("IR_URLNAME")||upperkey.equals("IR_URLNAME")||upperkey.equals("IR_URLTITLE")){
                        Cell cell = row0.createCell(column++);
                        cell.setCellValue(upperkey);
                    }
                }
            }

            for (int rowNum = 1; rowNum <= jo.size(); rowNum++) {
                Row row = sheet.createRow(rowNum);
                JSONObject item1 = jo.getJSONObject(rowNum-1);
                Iterator<String> iterator1 = item1.keySet().iterator();
                column = 0;// 从第0列开始放
                while (iterator1.hasNext()) {
                    String key = iterator1.next(); // 得到key
                    if (columnname.equals("")){
                    String value = item1.getString(key); // 得到key对应的value
                    if(value!=null&&value.length()>32767){
                        value = value.substring(0,32767);
                    }
                    Cell cell = row.createCell(column++);
                    cell.setCellValue(value);
                    }
                    else{
                        String upperkey =toupper(key);
                        if(upperkey.equals("IR_SID")||upperkey.equals(columnname)||upperkey.equals("IR_URLNAME")||upperkey.equals("IR_URLTITLE")) {
                            String value = item1.getString(key); // 得到key对应的value
                            if (value != null && value.length() > 32767) {
                                value = value.substring(0, 32767);
                            }
                            Cell cell = row.createCell(column++);
                            cell.setCellValue(value);
                        }
                    }

                }
            }
            try {
                FileOutputStream outputStream = new FileOutputStream(excelPath);
                workbook.write(outputStream);
                outputStream.flush();
                outputStream.close();
            } catch (Exception e) {
                System.out.println("数据导出为Excel过程中失败！");
                Map map = new HashMap();
                map.put("success",false);
                map.put("msg","数据导出为Excel过程中失败！");
                washlog.setSuccessflag(0);
                washlog.setErrlog("数据导出为Excel过程中失败！");
                washLogService.insert(washlog);
                return map;
            }
        File sss = new File(excelPath);
        System.out.println(sss.getAbsolutePath());
        washLogService.insert(washlog);
        Map map = clean(dt,rules,washlog.getId());
        try{
        response.setHeader("Content-Disposition", "attachment;filename="
                + new String((map.get("fn") + ".xlsx").getBytes(), "iso-8859-1"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return map;
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

    private Map clean(String fn,List<String> rules,int id){
        WashLog washLog = washLogService.getByID(id);
        Map<String, Object> map = new HashMap<String, Object>();
        String msg = "";
        String msg1 = "";
        try {
            for (int i = 0;i<rules.size();i++){
                Rule rule = ruleService.getById(parseInt(rules.get(i)));
                String cmd ="";
                if(i==0) {
                    if(rule.getBz().endsWith("jar")){
                    cmd = "cmd /c f: &&cd upload &&java -Xms1024m -Xmx1300m -jar "+rule.getBz()+" "+fn+" "+fn+"result";
                    }
                    else{
                        cmd = "cmd /c f: && cd upload && python "+rule.getBz()+" "+fn+" "+fn+"result";
                    }
                }
                else{
                    if(rule.getBz().endsWith("jar")) {
                        cmd = "cmd /c f: &&cd upload &&java -Xms1024m -Xmx1300m -jar " + rule.getBz() + " " + fn + "result " + fn + "result";
                    }
                    else{
                        cmd = "cmd /c f: &&cd upload &&python "+rule.getBz()+" "+fn+ "result "+fn+"result";
                    }
                }
            Process pro = Runtime.getRuntime().exec(cmd); //添加要进行的命令，"cmd  /c calc"中calc代表要执行打开计算器，如何设置关机请自己查找cmd命令
            //Process pro2 = Runtime.getRuntime().exec("calc");
            pro.waitFor();
            System.out.println("正在清洗："+fn);
            BufferedReader br = new BufferedReader(new InputStreamReader(pro.getInputStream(), Charset.forName("GBK"))); //虽然cmd命令可以直接输出，但是通过IO流技术可以保证对数据进行一个缓冲。
            while ((msg = br.readLine()) != null) {
                System.out.println(msg);

                msg1=msg1 + msg+'\n';
            }
            pro.destroy();
                if(!msg1.contains("清洗成功")){
                    map.put("success",false);
                    map.put("msg",rule.getName()+"清洗执行中失败，错误信息:"+msg1);
                    washLog.setSuccessflag(0);
                    washLog.setErrlog(rule.getName()+"清洗执行中失败，错误信息:"+msg1);
                    washLogService.update(washLog);
                    return map;
                }
            }
            System.out.println("清洗完成："+fn);
            map.put("success",true);
            map.put("msg",msg1);
            map.put("fn",fn+"result");
            map.put("logid",washLog.getId());
            washLog.setTotime(new Date());
            washLog.setSuccessflag(2);//表示清洗成功，但数据未插入表
            washLogService.update(washLog);
            return map;
        } catch (Exception exception) {
            map.put("success",false);
            washLog.setSuccessflag(0);
            washLog.setErrlog("清洗执行中失败，错误信息:"+exception.getMessage());
            washLogService.update(washLog);
            return map;
        }

    }


    /**
     * excel表格转成json
     * @ClassName:  Excel2JSONHelper
     * @Description:TODO(这里用一句话描述这个类的作用)
     * @author LiYonghui
     * @date 2017年1月6日 下午4:42:43
     */

        //常亮，用作第一种模板类型，如下图
        private static final int HEADER_VALUE_TYPE_Z=1;
        //第二种模板类型，如下图
        private static final int HEADER_VALUE_TYPE_S=2;




        /**
         * 文件过滤
         * @Title: fileNameFileter
         * @Description: TODO(这里用一句话描述这个方法的作用)
         * @param:
         * @author LiYonghui
         * @date 2017年1月6日 下午4:45:42
         * @return: void
         * @throws
         */
        private  boolean  fileNameFileter(File file){
            boolean endsWith = false;
            if(file != null){
                String fileName = file.getName();
                endsWith = fileName.endsWith(".xls") || fileName.endsWith(".xlsx");
            }
            return endsWith;
        }

        /**
         * 获取表头行
         * @Title: getHeaderRow
         * @Description: TODO(这里用一句话描述这个方法的作用)
         * @param: @param sheet
         * @param: @param index
         * @param: @return
         * @author LiYonghui
         * @date 2017年1月6日 下午5:05:24
         * @return: Row
         * @throws
         */
        private Row getHeaderRow(Sheet sheet, int index){
            Row headerRow = null;
            if(sheet!=null){
                headerRow = sheet.getRow(index);
            }
            return headerRow;
        }

        /**
         * 获取表格中单元格的value
         * @Title: getCellValue
         * @Description: TODO(这里用一句话描述这个方法的作用)
         * @param: @param row
         * @param: @param cellIndex
         * @param: @param formula
         * @param: @return
         * @author LiYonghui
         * @date 2017年1月6日 下午5:40:28
         * @return: Object
         * @throws
         */
        private Object getCellValue(Row row,int cellIndex,FormulaEvaluator formula){
            Cell cell = row.getCell(cellIndex);
            if(cell != null){
                switch (cell.getCellType()) {
                    //String类型
                    case Cell.CELL_TYPE_STRING:
                        return cell.getRichStringCellValue().getString();

                    //number类型
                    case Cell.CELL_TYPE_NUMERIC:
                        if (DateUtil.isCellDateFormatted(cell)) {
                            return cell.getDateCellValue().getTime();
                        } else {
                            return cell.getNumericCellValue();
                        }
                        //boolean类型
                    case Cell.CELL_TYPE_BOOLEAN:
                        return cell.getBooleanCellValue();
                    //公式
                    case Cell.CELL_TYPE_FORMULA:
                        return formula.evaluate(cell).getNumberValue();
                    default:
                        return null;
                }
            }
            return null;
        }

        /**
         * 获取表头value
         * @Title: getHeaderCellValue
         * @Description: TODO(这里用一句话描述这个方法的作用)
         * @param: @param headerRow
         * @param: @param cellIndex 英文表头所在的行，从0开始计算哦
         * @param: @param type  表头的类型第一种 姓名（name）英文于实体类或者数据库中的变量一致
         * @param: @return
         * @author LiYonghui
         * @date 2017年1月6日 下午6:12:21
         * @return: String
         * @throws
         */
        private String getHeaderCellValue(Row headerRow,int cellIndex,int type){
            Cell cell = headerRow.getCell(cellIndex);
            String headerValue = null;
            if(cell != null){
                //第一种模板类型
                if(type == HEADER_VALUE_TYPE_Z){
                    headerValue = cell.getRichStringCellValue().getString();
                    int l_bracket = headerValue.indexOf("（");
                    int r_bracket = headerValue.indexOf("）");
                    if(l_bracket == -1){
                        l_bracket = headerValue.indexOf("(");
                    }
                    if(r_bracket == -1){
                        r_bracket = headerValue.indexOf(")");
                    }
                    headerValue = headerValue.substring(l_bracket+1, r_bracket);
                }else if(type == HEADER_VALUE_TYPE_S){
                    //第二种模板类型
                    headerValue = cell.getRichStringCellValue().getString();
                }
            }
            return headerValue;
        }

        /**
         * 读取excel表格
         * @Title: readExcle
         * @Description: TODO(这里用一句话描述这个方法的作用)
         * @param: @param file
         * @param: @param headerIndex
         * @param: @param headType  表头的类型第一种 n姓名（name）英文于实体类或者数据库中的变量一致
         * @author LiYonghui
         * @date 2017年1月6日 下午6:13:27
         * @return: void
         * @throws
         */
        @RequestMapping(value = "/getexcel.do")
        @ResponseBody
        public JSONArray getexcel(String fn){
            File file= new File("F:\\"+fn);
            //字母表头为在第1行，第2种模板类型
            JSONArray  jsonArray = readExcle(file, 0, 2);
            return  jsonArray;
        }
        public  JSONArray readExcle(File file,int headerIndex,int headType){
            List<Map<String, Object>> lists = new ArrayList<Map<String, Object>>();
            if(!fileNameFileter(file)){
                return null;
            }else{
                try {
                    //加载excel表格
//                    WorkbookFactory wbFactory = new WorkbookFactory();
//                    Workbook wb = wbFactory.create(file);
                    Workbook wb = WorkbookFactory.create(file);
                    //读取第一个sheet页
                    Sheet sheet = wb.getSheetAt(0);
                    //读取表头行
                    Row headerRow = getHeaderRow(sheet, headerIndex);
                    //读取数据
                    FormulaEvaluator formula = wb.getCreationHelper().createFormulaEvaluator();
                    for(int r = headerIndex+1; r<= sheet.getLastRowNum();r++){
                        Row dataRow = sheet.getRow(r);
                        Map<String, Object> map = new HashMap<String, Object>();
                        for(int h = 0; h<dataRow.getLastCellNum();h++){
                            //表头为key
                            String key = getHeaderCellValue(headerRow,h,headType);
                            //数据为value
                            Object value = getCellValue(dataRow, h, formula);
                            if(!key.equals("") && !key.equals("null") && key != null ){
                                map.put(key, value);
                            }
                        }
                        lists.add(map);
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            JSONArray jsonArray = JSONArray.parseArray(JSON.toJSON(lists).toString());
            return jsonArray;
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

    private Date getdate(String dt){
        try {
            Date date = new Date(Long.parseLong(dt));
            return date;
        }
        catch (Exception e){
            return null;
        }
    }


    private Date gettime(String dt){
        try {
            Date date = new Date(Long.parseLong(dt));
            return date;
        }
        catch (Exception e){
            return null;
        }
    }



    @RequestMapping(value = "/washedit.do")
    @ResponseBody
    public Boolean washedit(String irUrlname,String irBiddingOrg,String irBidOrg,String irBidMoney,String irUrltitle ){
            return urlconService.washedit( irUrlname, irBiddingOrg ,irBidOrg,irBidMoney,irUrltitle);
    }

    @RequestMapping(value = "/cover.do")
    @ResponseBody
    public Boolean cover(String fn){
        JSONArray jsonArray = getexcel("upload\\"+fn);
        if(jsonArray.size()>0){
            int length = jsonArray.size();
            for(int i=0;i<length;i++){
                TobewashWithBLOBs urlcon = new TobewashWithBLOBs();
                urlcon.setIrContent(jsonArray.getJSONObject(i).getString("IR_CONTENT").getBytes());
                urlcon.setIrUrlcontent(jsonArray.getJSONObject(i).getString("IR_URLCONTENT").getBytes());
                urlcon.setIrUrldate(getdate(jsonArray.getJSONObject(i).getString("IR_URLDATE")));
                urlcon.setIrUrltime(gettime(jsonArray.getJSONObject(i).getString("IR_URLTIME")));
                urlcon.setIrHkey(jsonArray.getJSONObject(i).getString("IR_HKEY"));
                tobewashService.save(urlcon);
            }
            return true;
        }
        else {return false;}
    }

    @RequestMapping(value = "/insertresult.do")
    @ResponseBody
    public Map insertresult(String fn,String  totable,int id) throws IllegalAccessException, InvocationTargetException{
        Map map =new HashMap();
        WashLog washLog = washLogService.getByID(id);
        JSONArray jsonArray = getexcelwithcamel(fn+".xlsx");
        Method[] methods = Wait2Check.class.getMethods();
        int p=0;
        int q=0;
        try {
            for (int i = 0; i < jsonArray.size(); i++) {
                Wait2Check aa = JSON.toJavaObject(jsonArray.getJSONObject(i), Wait2Check.class);
                int count = 0;
                for (Method m : methods) {
                    if (m.getName().startsWith("get") && m.getName().endsWith("Check")) {
                        if (m.invoke(aa) != null && !m.invoke(aa).equals("")) {
                            count++;
                        }
                    }
                }
                if (count == 0) {
//                PersonWashCleanResult clean = new PersonWashCleanResult();
                    PersonWashCleanResult clean = new PersonWashCleanResult();
                    BeanUtils.copyProperties(aa, clean);
                    urlconService.insertOrUpdate(clean, totable);
                    p = p + 1;
                } else {
                    PersonWashWaitCheckData wait = new PersonWashWaitCheckData();
                    BeanUtils.copyProperties(aa, wait);
                    wait.setClCount(Integer.toString(count));
                    wait.setClTarget(totable);
                    personWashService.insertOneUrlcontentCheck(wait);
                    q = q + 1;
                }

            }
        }catch (Exception e){
            washLog.setErrlog(e.getMessage().substring(0,200));
            washLog.setSuccessflag(0);
            washLogService.update(washLog);
            map.put("succcess",false);
            map.put("msg","数据导入过程中失败，错误信息："+e.getMessage());
            return map;
        }
        washLog.setSuccessflag(1);
        washLog.setCleancount(p);
        washLog.setCheckcount(q);
        washLogService.update(washLog);
        map.put("success",true);
        int r=p+q;
        map.put("msg","共导入"+r+"条，导入"+totable+":"+p+"条，导入人工清洗待查数据库："+q+"条。");
            return map;
    }

    public JSONArray getexcelwithcamel(String fn){
        File file= new File("F:\\"+fn);
        //字母表头为在第1行，第2种模板类型
        JSONArray  jsonArray = readExcle2(file, 0, 2);
        return  jsonArray;
    }
    public  JSONArray readExcle2(File file,int headerIndex,int headType){
        List<Map<String, Object>> lists = new ArrayList<Map<String, Object>>();
        if(!fileNameFileter(file)){
            return null;
        }else{
            try {
                //加载excel表格
//                    WorkbookFactory wbFactory = new WorkbookFactory();
//                    Workbook wb = wbFactory.create(file);
                Workbook wb = WorkbookFactory.create(file);
                //读取第一个sheet页
                Sheet sheet = wb.getSheetAt(0);
                //读取表头行
                Row headerRow = getHeaderRow(sheet, headerIndex);
                //读取数据
                FormulaEvaluator formula = wb.getCreationHelper().createFormulaEvaluator();
                for(int r = headerIndex+1; r<= sheet.getLastRowNum();r++){
                    Row dataRow = sheet.getRow(r);
                    Map<String, Object> map = new HashMap<String, Object>();
                    for(int h = 0; h<dataRow.getLastCellNum();h++){
                        //表头为key
                        String key = getHeaderCellValue(headerRow,h,headType);
                        //数据为value
                        Object value = getCellValue(dataRow, h, formula);
                        if(!key.equals("") && !key.equals("null") && key != null && !key.equals("IR_URLBODY")&& !key.equals("IR_CONTENT")){
                            map.put(camelName(key), value);
                        }
                    }
                    lists.add(map);
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        JSONArray jsonArray = JSONArray.parseArray(JSON.toJSON(lists).toString());
        return jsonArray;
    }

    public static String camelName(String name) {
        StringBuilder result = new StringBuilder();
        if (name == null || name.isEmpty()) {
            return "";
        }
        else if (!name.contains("_"))
        {
            //不含下划线，仅将首字母小写
            return name.substring(0, 1).toLowerCase() + name.substring(1);
        }//用下划线将原始字符串分割
        String camels[] = name.split("_");
        for (String camel :  camels) {
            //跳过原始字符串中开头、结尾的下换线或双重下划线
            if (camel.isEmpty()) {
                continue;
            }//处理真正的驼峰片段
            if (result.length() == 0)
            {//第一个驼峰片段，全部字母都小写
                result.append(camel.toLowerCase());
            }
            else
            {//其他的驼峰片段，首字母大写
                result.append(camel.substring(0,1).toUpperCase());
                result.append(camel.substring(1).toLowerCase());
            }
        }
        return result.toString();
    }

    @RequestMapping(value = "/getFieldList.do")
    @ResponseBody
    public Map getfields(){
        Map map =new HashMap();
        PersonWashCleanResult urlcon = new PersonWashCleanResult();
        Field[] fields=urlcon.getClass().getDeclaredFields();
        List<String> list = new ArrayList<String>();
        for(int i=1; i<fields.length;i++){
            list.add(StrKit.camelToUnderline(fields[i].getName()));
        }
        map.put("fields",list);
        return map;
    }
    @RequestMapping(value = "/getFieldList1.do")
    @ResponseBody
    public Map getfields1(){
        Map map =new HashMap();
        Tobewash tobewash = new Tobewash();
        Field[] fields=tobewash.getClass().getDeclaredFields();
        List<String> list = new ArrayList<String>();
        for(int i=0; i<fields.length-1;i++){
            list.add(StrKit.camelToUnderline(fields[i].getName()));
        }
        map.put("fields",list);
        return map;
    }

    @RequestMapping(value = "/addTask.do")
    @ResponseBody
    public void addTask(String taskname,String id,String starttime,String expression,String rules,String querys,String sourcetable,String goaltable,Integer onoff) throws InterruptedException{
        System.out.println("----add--------task----------");
        ScheduleTask task=new ScheduleTask();
//        task.setExpression("0/30 * * * * ?");
        task.setExpression(expression);
        task.setId(id);
        task.setGroup("com.wine.quartz.job.MyJob");
        task.setTrigger("dopost");
        task.setName(taskname+id);
        task.setParam(new Object[]{sourcetable,goaltable,rules,querys,starttime,id});
        taskService.addTask(task);
    }

    @RequestMapping(value = "/stopTasks.do")
    @ResponseBody
    public void stopTask(){
        taskService.pauseAllTask();
    }

    @RequestMapping(value = "/deleteTasks.do")
    @ResponseBody
    public void deleteTask(){
        List list=taskService.getAllTask();
        list.size();
        taskService.deleteTasks(list);
    }

    @RequestMapping(value = "/washAndApprove.do")
    @ResponseBody
    public Map createExcelFile2(HttpServletResponse response,String fromtable,String columnname,String sql, String rule, String totable,String taskname) {
        List<UrlconWithBLOBs> list = urlconService.getAllBySql(fromtable,sql);
        List<String> rules =  Arrays.asList(rule.split(","));
        WashLog washlog = new WashLog();
        washlog.setName(taskname);
        washlog.setGoaltable(totable);
        washlog.setSourcetable(fromtable);
        washlog.setFromtime(new Date());
        String rulenames = ruleService.getNamesByIds(rule);
        washlog.setRules(rulenames);
        washlog.setQuerys("select * from "+fromtable+" "+sql);
        washlog.setCounts(list.size());
        washlog.setExway(1);
        washlog.setSimplewashcolumn(columnname);
        if(list.size()<1){
            Map map = new HashMap();
            map.put("success",false);
            map.put("msg","未查到数据！");
            washlog.setSuccessflag(0);
            washlog.setErrlog("未查到数据！");
            washLogService.insert(washlog);
            int id = washlog.getId();
            return map;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        Date date = new Date();
        String dt;
        dt = simpleDateFormat.format(date);
        String excelPath = "F:\\"+dt+".xlsx";
        String jsonStr = JSON.toJSONString(list,SerializerFeature.WriteMapNullValue);
        JSONArray jo = JSONArray.parseArray(jsonStr);
        Workbook workbook = null;
//        try {
        // XSSFWork used for .xslx (>= 2007), HSSWorkbook for 03 .xsl
        workbook = new XSSFWorkbook();//HSSFWorkbook();//WorkbookFactory.create(inputStream);
//        }catch(Exception e) {
//            System.out.println("Excel写入错误");
//            e.printStackTrace();
//        }
        if(workbook != null) {
            Sheet sheet = workbook.createSheet();
            Row row0 = sheet.createRow(0);
            JSONObject item = jo.getJSONObject(0);
            Iterator<String> iterator = item.keySet().iterator();
            int column = 0;
            while (iterator.hasNext()) {
                if (columnname.equals("")||columnname.equals("null")){
                    String key = iterator.next(); // 得到keypr
                    Cell cell = row0.createCell(column++);
                    cell.setCellValue(toupper(key));
                }
                else{
                    String key = iterator.next(); // 得到keypr
                    String upperkey =toupper(key);
                    if(upperkey.equals("IR_SID")||upperkey.equals(columnname)||upperkey.equals("IR_URLNAME")||upperkey.equals("IR_URLNAME")||upperkey.equals("IR_URLTITLE")){
                        Cell cell = row0.createCell(column++);
                        cell.setCellValue(upperkey);
                    }
                }
            }

            for (int rowNum = 1; rowNum <= jo.size(); rowNum++) {
                Row row = sheet.createRow(rowNum);
                JSONObject item1 = jo.getJSONObject(rowNum-1);
                Iterator<String> iterator1 = item1.keySet().iterator();
                column = 0;// 从第0列开始放
                while (iterator1.hasNext()) {
                    String key = iterator1.next(); // 得到key
                    if (columnname.equals("")){
                        String value = item1.getString(key); // 得到key对应的value
                        if(value!=null&&value.length()>32767){
                            value = value.substring(0,32767);
                        }
                        Cell cell = row.createCell(column++);
                        cell.setCellValue(value);
                    }
                    else{
                        String upperkey =toupper(key);
                        if(upperkey.equals("IR_SID")||upperkey.equals(columnname)||upperkey.equals("IR_URLNAME")||upperkey.equals("IR_URLTITLE")) {
                            String value = item1.getString(key); // 得到key对应的value
                            if (value != null && value.length() > 32767) {
                                value = value.substring(0, 32767);
                            }
                            Cell cell = row.createCell(column++);
                            cell.setCellValue(value);
                        }
                    }

                }
            }
            try {
                FileOutputStream outputStream = new FileOutputStream(excelPath);
                workbook.write(outputStream);
                outputStream.flush();
                outputStream.close();
            } catch (Exception e) {
                System.out.println("数据导出为Excel过程中失败！");
                Map map = new HashMap();
                map.put("success",false);
                map.put("msg","数据导出为Excel过程中失败！");
                washlog.setSuccessflag(0);
                washlog.setErrlog("数据导出为Excel过程中失败！");
                washLogService.insert(washlog);
                return map;
            }
        }
        File sss = new File(excelPath);
        System.out.println(sss.getAbsolutePath());
        washLogService.insert(washlog);
        Map map = clean(dt,rules,washlog.getId());

        try{
        insertresult( map.get("fn").toString(),totable,washlog.getId());
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            washlog.setSuccessflag(0);
            washlog.setErrlog(e.getMessage());
            washLogService.update(washlog);
        } catch (InvocationTargetException e) {
            e.printStackTrace();
            washlog.setSuccessflag(0);
            washlog.setErrlog(e.getMessage());
            washLogService.update(washlog);
        }
        return map;
    }
}
