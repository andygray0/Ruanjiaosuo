package com.wine.service.impl;

import com.wine.dao.PersonWashMapper;
import com.wine.model.DataCountSample;
import com.wine.model.DetailDataSizeCount;
import com.wine.model.PersonWashWaitCheckData;
import com.wine.model.WaitCheckData;
import com.wine.service.PersonWashService;
import com.wine.web.bean.ParamPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonWashServiceImpl implements PersonWashService {

    @Autowired
    private PersonWashMapper personWashMapper;


    @Override
    public int countTotal(WaitCheckData waitCheckData) {
        return personWashMapper.countTotal(waitCheckData);
    }

    @Override
    public List<WaitCheckData> findByPage(ParamPage<WaitCheckData> page, WaitCheckData waitCheckData) {
        return personWashMapper.findByPage(page, waitCheckData);
    }

    @Override
    public int sumTheCLcount(WaitCheckData waitCheckData) {
        return personWashMapper.sumTheCLcount(waitCheckData);
    }

    @Override
    public List<WaitCheckData> findAllWithCondition(WaitCheckData waitCheckData, int maxRecord) {
        return personWashMapper.findAllWithCondition(waitCheckData, maxRecord);
    }

    @Override
    public void insertTheCheckDataRelation(Integer id, List<Integer> checkListOfUser) {
        personWashMapper.insertTheCheckDataRelation(id, checkListOfUser);
    }

    @Override
    public void updateTheCheckDataStatus(String status, List<Integer> checkListOfUser) {
        personWashMapper.updateTheCheckDataStatus(status, checkListOfUser);
    }

    @Override
    public PersonWashWaitCheckData findCheckDataById(Integer irSid, String dynamaicFields) {
        return personWashMapper.findCheckDataById(irSid, dynamaicFields);
    }

    @Override
    public PersonWashWaitCheckData findCheckDataByRecordIndex(Integer recordIndex, Integer taskId, Integer clWorkStatus) {
        return personWashMapper.findCheckDataByRecordIndex(recordIndex, taskId, clWorkStatus);
    }

    @Override
    public int insertOneUrlcontentCheck(PersonWashWaitCheckData check) {
        return personWashMapper.insertOneUrlcontentCheck(check);
    }

    @Override
    public List<DataCountSample> countDataCountByPage(ParamPage<DataCountSample> page, Integer year, Integer month) {
        return personWashMapper.countDataCountByPage(page, year, month);
    }

    @Override
    public int countDataCountTotal(Integer year, Integer month) {
        return personWashMapper.countDataCountTotal(year, month);
    }

    @Override
    public int countDetailByYearAndMonth(Integer year, Integer month) {
        return personWashMapper.countDetailByYearAndMonth(year, month);
    }

    @Override
    public List<DetailDataSizeCount> findByPageOfDetailCount(ParamPage<DetailDataSizeCount> page, Integer year, Integer month) {
        return personWashMapper.findByPageOfDetailCount(page, year,month);
    }

    @Override
    public List<PersonWashWaitCheckData> findCheckDataListByTaskId(Integer id) {
        return personWashMapper.findCheckDataListByTaskId(id);
    }

    @Override
    public List<DetailDataSizeCount> findAllOfDetailCount(Integer year, Integer month) {
        return personWashMapper.findAllOfDetailCount(year, month);
    }
}
