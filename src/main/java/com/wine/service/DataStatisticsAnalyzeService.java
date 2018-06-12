package com.wine.service;

import com.wine.model.DataStatisticsAnalyze;
import com.wine.web.bean.ParamPage;

import java.util.List;

public interface DataStatisticsAnalyzeService {

    int countTotal(DataStatisticsAnalyze analyze);

    List<DataStatisticsAnalyze> findByPage(ParamPage<DataStatisticsAnalyze> page, DataStatisticsAnalyze analyze);

    void insertEntity(DataStatisticsAnalyze analyze);

    int countByYearAndSeason(Integer year, String season);

    void updateEntityByYearAndSeason(Integer year, String season, String createBy);
}
