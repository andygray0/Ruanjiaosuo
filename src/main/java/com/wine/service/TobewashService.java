package com.wine.service;

import com.wine.model3.Tobewash;
import com.wine.model3.TobewashWithBLOBs;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface TobewashService {
    Map shownew(int year,int month,int limit, int page);
    void save(TobewashWithBLOBs tobewashWithBLOBs);
    void update(TobewashWithBLOBs tobewashWithBLOBs);
    Map showdate(Date fromdate, Date todate, int limit, int page);
    Map modify(String sql,String column,String modify);
    Map deleteBySql(String sql);
    Map showlist(int limit, int page);
    Map showQuery(int limit, int page,String sql);
    Map getColumns();
    List<Tobewash> getListBySql(String sql);
    List<TobewashWithBLOBs> getListBySqlWithBlob(String sql);

    void handlerListOnlySelect(List<TobewashWithBLOBs> list, String fields);
}
