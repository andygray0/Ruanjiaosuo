package com.wine.service.impl;

import com.wine.dao.DataStatisticsAnalyzeMapper;
import com.wine.model.DataStatisticsAnalyze;
import com.wine.service.DataStatisticsAnalyzeService;
import com.wine.web.bean.ParamPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DataStatisticsAnalyzeServiceImpl implements DataStatisticsAnalyzeService {

    @Autowired
    private DataStatisticsAnalyzeMapper dataStatisticsAnalyzeMapper;


    @Override
    public int countTotal(DataStatisticsAnalyze analyze) {
        return dataStatisticsAnalyzeMapper.countTotal(analyze);
    }

    @Override
    public List<DataStatisticsAnalyze> findByPage(ParamPage<DataStatisticsAnalyze> page, DataStatisticsAnalyze analyze) {
        return dataStatisticsAnalyzeMapper.findByPage(page, analyze);
    }

    @Override
    public DataStatisticsAnalyze getById(Integer id) {
        return dataStatisticsAnalyzeMapper.getById(id);
    }

    @Override
    public void insertEntity(DataStatisticsAnalyze analyze) {
        dataStatisticsAnalyzeMapper.insertEntity(analyze);
    }

    @Override
    public int countByYearAndSeason(Integer year, String season) {
        return dataStatisticsAnalyzeMapper.countByYearAndSeason(year, season);
    }

    @Override
    public void updateEntityByYearAndSeason(Integer year, String season, String createBy) {
        dataStatisticsAnalyzeMapper.updateEntityByYearAndSeason(year, season, createBy);
    }

}
