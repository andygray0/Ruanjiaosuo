package com.wine.service;

import com.wine.model.DataCountSample;
import com.wine.model.DetailDataSizeCount;
import com.wine.model.PersonWashWaitCheckData;
import com.wine.model.WaitCheckData;
import com.wine.web.bean.ParamPage;

import java.util.List;

public interface PersonWashService {

    int countTotal(WaitCheckData waitCheckData);

    List<WaitCheckData> findByPage(ParamPage<WaitCheckData> page, WaitCheckData waitCheckData);

    int sumTheCLcount(WaitCheckData waitCheckData);

    List<WaitCheckData> findAllWithCondition(WaitCheckData waitCheckData, int maxRecord);

    void insertTheCheckDataRelation(Integer id, List<Integer> checkListOfUser);

    void updateTheCheckDataStatus(String status, List<Integer> checkListOfUser);

    PersonWashWaitCheckData findCheckDataById(Integer irSid, String dynamaicFields);

    PersonWashWaitCheckData findCheckDataByRecordIndex(Integer recordIndex, Integer taskId, Integer clWorkStatus);

    int insertOneUrlcontentCheck(PersonWashWaitCheckData check);

    List<DataCountSample> countDataCountByPage(ParamPage<DataCountSample> page, Integer year, Integer month);

    int countDataCountTotal(Integer year, Integer month);

    int countDetailByYearAndMonth(Integer year, Integer month);

    List<DetailDataSizeCount> findByPageOfDetailCount(ParamPage<DetailDataSizeCount> page, Integer year, Integer month);

    List<PersonWashWaitCheckData> findCheckDataListByTaskId(Integer id);

    List<DetailDataSizeCount> findAllOfDetailCount(Integer year, Integer month);

    Integer getToAllot();
}
