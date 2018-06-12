package com.wine.quartz.job;

import com.wine.model.WashTimer;
import com.wine.service.WashTimerService;
import com.wine.utils.SpringInit;
import org.apache.http.*;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.springframework.context.ApplicationContext;

public class MyJob {
    public  void dopost(String fromtable,String totable,String rule,String sql,String starttime,String id) {
        WashTimerService washTimerService = (WashTimerService)SpringInit.getApplicationContext().getBean("washTimerService");
        System.out.println("定时任务执行!"+id);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        WashTimer washTimer = washTimerService.getById(Integer.parseInt(id));
        Date stampdate = washTimer.getStamp();
        Date date = new Date();
        if (stampdate!=null){
            String stamp = sdf.format(stampdate);
            String now = sdf.format(date);
            sql = sql+ " and ir_loadtime between '" +stamp+ "' and '" +now+"'";
        }
        if (stampdate==null){
            String now = sdf.format(date);
            sql = sql+ " and ir_loadtime between '" +starttime+ "' and '"+now+"'";
        }
        List<NameValuePair> formparams = new ArrayList<NameValuePair>();
        formparams.add(new BasicNameValuePair("fromtable", fromtable));
        formparams.add(new BasicNameValuePair("sql", sql));
        formparams.add(new BasicNameValuePair("rule", rule));
        formparams.add(new BasicNameValuePair("totable", totable));
        formparams.add(new BasicNameValuePair("taskname", washTimer.getName()));
        UrlEncodedFormEntity entity = new UrlEncodedFormEntity(formparams, Consts.UTF_8);
        HttpPost httppost = new HttpPost("http://localhost:9999/washAndApprove.do");
        httppost.setEntity(entity);
        System.out.println(httppost.getURI());
        org.apache.http.client.HttpClient httpClient = new DefaultHttpClient();
        HttpResponse response = null;
        try {
            response = httpClient.execute(httppost);
        } catch (IOException e) {
            e.printStackTrace();
        }
        if(1==1){
        washTimer.setStamp(date);
        washTimerService.updateTimer(washTimer);}
        System.out.println(response.getStatusLine());
        System.out.println("====================");
        System.out.println(response.getProtocolVersion());
        System.out.println(response.getStatusLine().getStatusCode());
        System.out.println(response.getStatusLine().getReasonPhrase());
        System.out.println(response.getStatusLine().toString());
        System.out.println("====================");
        Header[] headers = response.getAllHeaders();
        for (int i = 0; i < headers.length; i++) {
            Header header = headers[i];
            System.out.println(header);
        }

        System.out.println("====================");
        HttpEntity httpEntity = response.getEntity();
        if(httpEntity != null){
            try {
                String str = EntityUtils.toString(httpEntity);
                System.out.println(str);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    public void execute() {
        System.out.println("---------执行----MyJob-----");
    }

}