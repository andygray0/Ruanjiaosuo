package com.wine.dao;

import com.wine.model.DataStatisticsAnalyze;
import com.wine.web.bean.ParamPage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DataStatisticsAnalyzeMapper {

    int countTotal(@Param("analyze") DataStatisticsAnalyze analyze);

    List<DataStatisticsAnalyze> findByPage(@Param("page") ParamPage<DataStatisticsAnalyze> page, @Param("analyze") DataStatisticsAnalyze analyze);

    void insertEntity(DataStatisticsAnalyze analyze);

    int countByYearAndSeason(@Param("year") Integer year, @Param("season") String season);

    void updateEntityByYearAndSeason(@Param("year") Integer year, @Param("season") String season,@Param("createBy") String createBy);

    DataStatisticsAnalyze getById(@Param("id") Integer id);
}
