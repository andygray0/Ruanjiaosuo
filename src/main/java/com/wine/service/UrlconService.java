package com.wine.service;
import com.wine.model.PersonWashCleanResult;
import com.wine.model3.Urlcon;
import com.wine.model3.UrlconWithBLOBs;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface UrlconService {
    Map findByQuery(int limit, int page, Date fromdate, Date todate, Date lasttimefrom, Date lasttimeto,String sitename,String channel);
    List<UrlconWithBLOBs> find( Date fromdate, Date todate, Date lasttimefrom, Date lasttimeto,String sitename,String channel);
    Map getColumns();
    Map showQuery(int limit, int page,String fromtable,String sql);
    Urlcon getById(Integer id);
    Boolean insertOrUpdate(PersonWashCleanResult data, String tableName);
    Map getBySql(int limit ,int page,String fromtable,String sql);
    List<String> showFromTables();
    List<String> showToTables();
    List<UrlconWithBLOBs> getAllBySql(String fromtable,String sql);
}
