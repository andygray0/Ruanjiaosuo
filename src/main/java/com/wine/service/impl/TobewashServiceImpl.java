package com.wine.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wine.dao3.TobewashMapper;
import com.wine.model3.Tobewash;
import com.wine.model3.TobewashCriteria;
import com.wine.model3.TobewashKey;
import com.wine.model3.TobewashWithBLOBs;
import com.wine.service.TobewashService;
import com.wine.utils.StrKit;
import org.apache.poi.ss.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class TobewashServiceImpl implements TobewashService{
    @Autowired
    TobewashMapper TobewashMapper;

    /**
     　　* 按月分页显示记录
     　　* @param year 年份，month 月份，limit 每页记录数，page 第几页
         * @author zhaoao
     　　*/
    @Override
    public Map shownew(int year,int month,int limit, int page){
        PageHelper.startPage(page,limit); DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        Date date1 = null;
        Date date2 = null;
        String str = year+"-"+month+"-1";
        String str2 = year+"-"+month+"-31";
        try {
            date1 = format1.parse(str);
            date2 = format1.parse(str2);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        PageHelper.orderBy("ir_sid desc");

        Map map = new HashMap();
        TobewashCriteria TobewashCriteria = new TobewashCriteria();
        TobewashCriteria.Criteria criteria = TobewashCriteria.createCriteria();
        criteria.andIrUrldateBetween(date1,date2);
        List<Tobewash> list = new ArrayList<Tobewash>();
        list =TobewashMapper.selectByExample(TobewashCriteria);
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;
    }
    @Override
    public void save(TobewashWithBLOBs tobewashWithBLOBs){
        if(tobewashWithBLOBs.getIrSid()==null)
        {TobewashMapper.insert(tobewashWithBLOBs);}
        else if(TobewashMapper.selectBySqlWithBLOBs("where ir_sid = "+tobewashWithBLOBs.getIrSid()).size()==0){
            TobewashMapper.insert(tobewashWithBLOBs);
        }
        else{
        TobewashMapper.updateByPrimaryKeySelective(tobewashWithBLOBs);
        }
    }

    @Override
    public void update(TobewashWithBLOBs tobewashWithBLOBs){
        TobewashMapper.insert(tobewashWithBLOBs);
    }

    /**
     　　* 按起始日期分页显示记录
     　　* @param year 年份，month 月份，limit 每页记录数，page 第几页
     * @author zhaoao
    　　*/


    @Override
    public Map showdate(Date fromdate, Date todate, int limit, int page){
        PageHelper.startPage(page,limit);
        PageHelper.orderBy("ir_sid desc");
        Map map = new HashMap();
        TobewashCriteria TobewashCriteria = new TobewashCriteria();
        TobewashCriteria.Criteria criteria = TobewashCriteria.createCriteria();
        criteria.andIrUrldateBetween(fromdate,todate);
        List<Tobewash> list = new ArrayList<Tobewash>();
        list =TobewashMapper.selectByExample(TobewashCriteria);
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;
    }
    /**
     　　* 按日期批量修改数据
     　　* @param year 年份，month 月份，column需要修改的列，modify 修改为此字段
         * @return  true 成功
         * @author zhaoao
    　　*/
    @Override
    public Map modify(String sql,String column,String modify){
        Map map = new HashMap();
        if(getListBySql(sql).size()<1) {
            map.put("success",false);
            map.put("msg","未查到数据！");
            return map;
        }
        try{
        TobewashMapper.modify(sql,column,modify);
        }
        catch (Exception e){
            map.put("success",false);
            map.put("msg","修改过程中遇到SQL错误");
            return map;
        }
        map.put("success",true);
        map.put("msg","修改成功！");
        return map;
    }

    public Map deleteBySql(String sql){
        Map map =new HashMap();
        List<Tobewash> list =TobewashMapper.selectBySql(sql);
        int length = list.size();
        if(length<1){
            map.put("success",false);
            map.put("msg","未查到数据！");
            return map;
        }
        for(int i=0;i<length;i++){
            TobewashKey tobewashKey =new TobewashKey();
            tobewashKey.setIrBbsnum(list.get(i).getIrBbsnum());
            tobewashKey.setIrHkey(list.get(i).getIrHkey());
            TobewashMapper.deleteByPrimaryKey(tobewashKey);
        }
        map.put("success",true);
        map.put("msg","修改成功！");
        return map;
    }
    public List<Tobewash> getListBySql(String sql){
        List<Tobewash> list =TobewashMapper.selectBySql(sql);
        return list;
    }

    private void update(Tobewash tobewash){
        TobewashMapper.updateByPrimaryKey(tobewash);
    }

    /**
     　　* 分页显示所有记录
     　　* @param limit 每页记录数，page 第几页
         * @author zhaoao
    　　*/
    @Override
    public Map showlist(int limit, int page){
        PageHelper.startPage(page,limit);
        PageHelper.orderBy("ir_sid desc");
        Map map = new HashMap();
        TobewashCriteria TobewashCriteria = new TobewashCriteria();
        TobewashCriteria.Criteria criteria = TobewashCriteria.createCriteria();
        criteria.andIrUrldateIsNotNull();
        List<Tobewash> list = TobewashMapper.selectBySql("where ir_sid > 1");
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;
    }
    @Override
    public Map showQuery(int limit, int page,String sql){
        PageHelper.startPage(page,limit);
        PageHelper.orderBy("ir_sid desc");
        Map map = new HashMap();
        TobewashCriteria TobewashCriteria = new TobewashCriteria();
        TobewashCriteria.Criteria criteria = TobewashCriteria.createCriteria();
        criteria.andIrUrldateIsNotNull();
        try{
        List<TobewashWithBLOBs> list =  TobewashMapper.selectBySqlWithBLOBs(sql);
        PageInfo pageInfo  = new PageInfo(list);
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;}
        catch(Exception e){
            map.put("total",0);
            map.put("rows", new ArrayList<TobewashWithBLOBs>());
            return map;
        }

    }

    @Override
    public Map getColumns(){
        Map map =new HashMap();
        Tobewash tobewash = new Tobewash();
        Field[] fields=tobewash.getClass().getDeclaredFields();
        map.put("fields",fields);
        return map;
    }

    @Override
    public List<TobewashWithBLOBs> getListBySqlWithBlob(String sql){
        List<TobewashWithBLOBs> list =TobewashMapper.selectBySqlWithBLOBs(sql);
        return list;
    }

    @Override
    public void handlerListOnlySelect(List<TobewashWithBLOBs> list, String fields) {
        if(null != list && list.size() > 0 && fields != null && !fields.trim().equals("")){

            String[] tmp = fields.split(",");
            List<String> fieldsList = new ArrayList<String>();
            for(String s : tmp){
                String tmp2 = s.trim();
                String tmp3 = (tmp2.charAt(0) + "").toUpperCase() + tmp2.substring(1);
                fieldsList.add(tmp3);
            }

            for(TobewashWithBLOBs tobe : list){
                Method[] methods = tobe.getClass().getMethods();
                for(Method method : methods){
                    if(method.getName().startsWith("set")){
                        String prop = method.getName().substring(3);
                        System.out.println(prop);

                        if(fieldsList.contains(prop)){
                            //  说明是选中的值
                            Class<?> aClass = method.getParameterTypes()[0];
                            String sname  = aClass.getSimpleName();
                            if("byte[]".equals(sname)){
                                System.out.println(method.getName());
                            }
                        } else{
                            // 不需要导出
                            try{
                                method.invoke(tobe, new Object[]{null});
                            } catch (Exception e){
//                                e.printStackTrace();
                            }
                        }

                    }
                }
            }

        }
    }

    @Override
    @Transactional
    public Map insertExcel(String fn,int type) throws Exception{
        Map map =new HashMap();
        if(checkIrSid(fn,type)==0){
            map.put("success",false);
            map.put("msg","无法识别文件，或者文件IR_SID列不符合要求！");
            return map;
        }
        JSONArray jsonArray = getexcel("upload\\"+fn);
        if(jsonArray.size()>0){
            int length = jsonArray.size();
            for(int i=0;i<length;i++){
                TobewashWithBLOBs urlcon = new TobewashWithBLOBs();
                try {
                urlcon.setIrSid(getInt(jsonArray.getJSONObject(i).getString("IR_SID"),"IR_SID"));
                if(jsonArray.getJSONObject(i).getString("IR_CONTENT")!=null&&!jsonArray.getJSONObject(i).getString("IR_CONTENT").equals(""))
                { urlcon.setIrContent(getBlob(jsonArray.getJSONObject(i).getString("IR_CONTENT"),"IR_CONTENT"));}
                else{
                    urlcon.setIrContent(new byte[0]);
                }
                if(jsonArray.getJSONObject(i).getString("IR_URLCONTENT")!=null&&!jsonArray.getJSONObject(i).getString("IR_URLCONTENT").equals(""))
                { urlcon.setIrUrlcontent(getBlob(jsonArray.getJSONObject(i).getString("IR_URLCONTENT"),"IR_URLCONTENT"));}
                else{
                    urlcon.setIrUrlcontent(new byte[0]);
                }
                    urlcon.setIrUrlcontent(getBlob(jsonArray.getJSONObject(i).getString("IR_URLCONTENT"),"IR_URLCONTENT"));
                    urlcon.setIrUrldate(getdate(jsonArray.getJSONObject(i).getString("IR_URLDATE"),"IR_URLDATE"));
                    urlcon.setIrUrltime(gettime(jsonArray.getJSONObject(i).getString("IR_URLTIME"),"IR_URLTIME"));
                    urlcon.setIrHkey(jsonArray.getJSONObject(i).getString("IR_HKEY"));
                    urlcon.setIrStartid(getInt(jsonArray.getJSONObject(i).getString("IR_STARTID"),"IR_STARTID"));
                    urlcon.setIrServiceid(jsonArray.getJSONObject(i).getString("IR_SERVICEID"));
                    urlcon.setIrPkey(jsonArray.getJSONObject(i).getString("IR_PKEY"));
                    urlcon.setIrUrlname(jsonArray.getJSONObject(i).getString("IR_URLNAME"));
                    urlcon.setIrExtname(jsonArray.getJSONObject(i).getString("IR_EXTNAME"));
                    urlcon.setIrSitename(jsonArray.getJSONObject(i).getString("IR_SITENAME"));
                    urlcon.setIrChannel(jsonArray.getJSONObject(i).getString("IR_CHANNEL"));
                    urlcon.setIrGroupname(jsonArray.getJSONObject(i).getString("IR_GROUPNAME"));
                    urlcon.setIrUrltitle(jsonArray.getJSONObject(i).getString("IR_URLTITLE"));
                    urlcon.setIrUrltopic(jsonArray.getJSONObject(i).getString("IR_URLTOPIC"));
                    urlcon.setIrLasttime(gettime(jsonArray.getJSONObject(i).getString("IR_LASTTIME"),"IR_LASTTIME"));
                    urlcon.setIrLoadtime(gettime(jsonArray.getJSONObject(i).getString("IR_LOADTIME"),"IR_LOADTIME"));
                    urlcon.setIrSrcname(jsonArray.getJSONObject(i).getString("IR_SRCNAME"));
                    urlcon.setIrAuthors(jsonArray.getJSONObject(i).getString("IR_AUTHORS"));
                    urlcon.setIrDistrict(jsonArray.getJSONObject(i).getString("IR_DISTRICT"));
                    urlcon.setIrCatalog(jsonArray.getJSONObject(i).getString("IR_CATALOG"));
                    urlcon.setIrCatalog1(jsonArray.getJSONObject(i).getString("IR_CATALOG1"));
                    urlcon.setIrCatalog2(jsonArray.getJSONObject(i).getString("IR_CATALOG2"));
                    urlcon.setIrKeywords(jsonArray.getJSONObject(i).getString("IR_KEYWORDS"));
                    urlcon.setIrAbstract(jsonArray.getJSONObject(i).getString("IR_ABSTRACT"));
                    urlcon.setIrSimflag(jsonArray.getJSONObject(i).getString("IR_SIMFLAG"));
                    urlcon.setIrSimrank(getInt(jsonArray.getJSONObject(i).getString("IR_SIMRANK"),"IR_SIMRANK"));
                    urlcon.setIrImageflag(getInt(jsonArray.getJSONObject(i).getString("IR_IMAGEFLAG"),"IR_IMAGEFLAG"));
                    urlcon.setIrTableflag(getInt(jsonArray.getJSONObject(i).getString("IR_TABLEFLAG"),"IR_TABLEFLAG"));
                    urlcon.setIrDoclength(getInt(jsonArray.getJSONObject(i).getString("IR_DOCLENGTH"),"IR_DOCLENGTH"));
                    if(jsonArray.getJSONObject(i).getString("IR_BBSNUM")==null){
                        urlcon.setIrBbsnum(0);
                    }
                    else{
                    urlcon.setIrBbsnum(getInt(jsonArray.getJSONObject(i).getString("IR_BBSNUM"),"IR_BBSNUM"));}
                    urlcon.setIrBbstopic(getInt(jsonArray.getJSONObject(i).getString("IR_BBSTOPIC"),"IR_BBSTOPIC"));
                    urlcon.setIrBbskey(jsonArray.getJSONObject(i).getString("IR_BBSKEY"));
                    urlcon.setIrPagelevel(getInt(jsonArray.getJSONObject(i).getString("IR_PAGELEVEL"),"IR_PAGELEVEL"));
                    urlcon.setIrPagerank(getInt(jsonArray.getJSONObject(i).getString("IR_PAGERANK"),"IR_PAGERANK"));
                    urlcon.setIrUrllevel(getInt(jsonArray.getJSONObject(i).getString("IR_URLLEVEL"),"IR_URLLEVEL"));
                    urlcon.setIrMimetype(jsonArray.getJSONObject(i).getString("IR_MIMETYPE"));
                    urlcon.setIrFormat(jsonArray.getJSONObject(i).getString("IR_FORMAT"));
                    urlcon.setIrCharset(jsonArray.getJSONObject(i).getString("IR_CHARSET"));
                    urlcon.setIrUrlsize(getInt(jsonArray.getJSONObject(i).getString("IR_URLSIZE"),"IR_URLSIZE"));
                    urlcon.setIrUrlbody(getBlob(jsonArray.getJSONObject(i).getString("IR_URLBODY"),"IR_URLBODY"));
                    urlcon.setIrWcmid(getInt(jsonArray.getJSONObject(i).getString("IR_WCMID"),"IR_WCMID"));
                    urlcon.setIrStatus(getByte(jsonArray.getJSONObject(i).getString("IR_STATUS"),"IR_STATUS"));
                    urlcon.setIrNreserved1(getInt(jsonArray.getJSONObject(i).getString("IR_NRESERVED1"),"IR_NRESERVED1"));
                    urlcon.setIrNreserved2(getInt(jsonArray.getJSONObject(i).getString("IR_NRESERVED2"),"IR_NRESERVED2"));
                    urlcon.setIrNreserved3(getInt(jsonArray.getJSONObject(i).getString("IR_NRESERVED3"),"IR_NRESERVED3"));
                    urlcon.setIrVreserved1(jsonArray.getJSONObject(i).getString("IR_NRESERVED1"));
                    urlcon.setIrVreserved2(jsonArray.getJSONObject(i).getString("IR_NRESERVED2"));
                    urlcon.setIrVreserved3(jsonArray.getJSONObject(i).getString("IR_NRESERVED3"));
                    urlcon.setIrVreserved4(jsonArray.getJSONObject(i).getString("IR_NRESERVED4"));
                    urlcon.setIrSreserved1(jsonArray.getJSONObject(i).getString("IR_SRESERVED1"));
                    urlcon.setIrSreserved2(jsonArray.getJSONObject(i).getString("IR_SRESERVED2"));
                    urlcon.setIrSreserved3(jsonArray.getJSONObject(i).getString("IR_SRESERVED3"));
                    save(urlcon);
                }catch (DataIntegrityViolationException e){
                    e.getCause().getLocalizedMessage();
                    int p = i+2;
                    throw new RuntimeException("第"+p+"行,"+e.getCause().getLocalizedMessage());
                }
                catch (Exception e){
                    int p = i+2;
                    throw new RuntimeException("第"+p+"行,"+e.getMessage());
                }
            }
            map.put("success",true);
            return map;
        }
        else {
            map.put("success",false);
            return map;
        }
    }
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
    public int checkIrSid(String fn,int type){
        File file= new File("F:\\upload\\"+fn);
        int headerIndex = 0,  headType=2;
        List<Map<String, Object>> lists = new ArrayList<Map<String, Object>>();
        try {
            Workbook wb = WorkbookFactory.create(file);
            //读取第一个sheet页
            Sheet sheet = wb.getSheetAt(0);
            //读取表头行
            Row headerRow = getHeaderRow(sheet, 0);
            int count =0;
            for(int h = 0; h<headerRow.getLastCellNum();h++){
                String key = getHeaderCellValue(headerRow,h,headType);
                if(key.equals("IR_SID")){
                    count ++;
                }
            }
            if(type==count){
                return 1;
            }
            else{
                return 0;
            }

        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
    private Date getdate(String dt,String column){
        if(dt==null){
            return null;
        }
        try {
            Date date = new Date(Long.parseLong(dt));
            return date;
        }
        catch (Exception e){
            throw new RuntimeException("\""+column+":"+dt+"\"导入出错,错误信息："+e.getMessage());
        }
    }

    private Integer getInt(String str ,String column) throws RuntimeException{
        if(str==null){
            return null;
        }
        try{
            Integer i = new Integer(str);
            return i;
        }catch (Exception e){
            throw new RuntimeException("\""+column+":"+str+"\"导入出错,错误信息："+e.getMessage());
        }
    }
    private byte[] getBlob(String bl ,String column){
        if(bl==null){
            return null;
        }
        try{
            byte[] bts = bl.getBytes();
            return bts;
        }catch (Exception e){
            throw new RuntimeException("\""+column+":"+bl+"\"导入出错,错误信息："+e.getMessage());
        }
    }

    private Date gettime(String dt,String column) throws RuntimeException{
        if(dt==null){
            return null;
        }
        try {
            Date date = new Date(Long.parseLong(dt));
            return date;
        }
        catch (Exception e){
            throw new RuntimeException("\""+column+":"+dt+"\"导入出错,错误信息："+e.getMessage());
        }
    }
    private Byte getByte(String by,String column) throws RuntimeException{
        if(by==null){
            return null;
        }
        try {
            Byte aByte = Byte.valueOf(by);
            return aByte;
        }
        catch (Exception e){
            throw new RuntimeException("\""+column+":"+by+"\"导入出错,错误信息："+e.getMessage());
        }
    }
    private  boolean  fileNameFileter(File file){
        boolean endsWith = false;
        if(file != null){
            String fileName = file.getName();
            endsWith = fileName.endsWith(".xls") || fileName.endsWith(".xlsx");
        }
        return endsWith;
    }

    private Row getHeaderRow(Sheet sheet, int index){
        Row headerRow = null;
        if(sheet!=null){
            headerRow = sheet.getRow(index);
        }
        return headerRow;
    }

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
    private String getHeaderCellValue(Row headerRow,int cellIndex,int type){
        Cell cell = headerRow.getCell(cellIndex);
        String headerValue = null;
        if(cell != null){
            //第一种模板类型
            if(type == 1){
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
            }else if(type == 2){
                //第二种模板类型
                headerValue = cell.getRichStringCellValue().getString();
            }
        }
        return headerValue;
    }

}


