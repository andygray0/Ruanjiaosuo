package com.wine.service;

import java.util.Date;
import java.util.Map;

/**
 * Created by zhaoao on 2018/3/2.
 */
public interface TocleanService {
    Map showlist(int page,int limit,Date dt1,Date dt2);
    Map showTaskData(int page , int limit,String taskid);
}
