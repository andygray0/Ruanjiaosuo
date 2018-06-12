package com.wine.service;

import com.wine.model.PersonWashTask;
import com.wine.model.WaitCheckData;
import com.wine.web.bean.ParamPage;

import java.util.List;
import java.util.Map;

/**
 * Created by wzjer on 2018/4/8.
 */
public interface PersonWashTaskService {

    int countTotal(PersonWashTask task);

    List<PersonWashTask> findByPage(ParamPage<PersonWashTask> page, PersonWashTask task);

    PersonWashTask findById(Integer id);

    int countTotalCheckDataByTask(Integer id, Integer clWorkStatus, Integer clReviewStatus);

    List<WaitCheckData> findByPageCheckDataByTask(ParamPage<WaitCheckData> page, Integer id, Integer clWorkStatus, Integer clReviewStatus);

    void insertOne(PersonWashTask task);

    void updateRandomCheckRate(Integer rate, Integer taskId);

    List<String> findTemporarySavedFields(Integer irSid);

    void saveTemporaryDatasForIntern(Integer irSid, List<String> slist);

    void deleteTemporaryDatasByCheckId(Integer irSid);

    void deleteTemporaryDatasByTaskId(Integer taskId);

    String countTheRateOfAlreadyValidated(Integer id);

    void updateCheckDataModifyStatusByTaskId(Integer taskId);

    int countTotalNotModifiedRecords(Integer taskId);

    void insertOrUpdateData2TargetTableByTaskId(Integer taskId);

    Map<String,Object> handTheGiveUpTaskDatasByTaskId(Integer taskId);

    void updateTaskWorkCountByTaskId(PersonWashTask task2);

}
