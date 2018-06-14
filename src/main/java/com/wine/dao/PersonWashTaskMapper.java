package com.wine.dao;

import com.wine.model.PersonWashCleanResult;
import com.wine.model.PersonWashTask;
import com.wine.model.PersonWashWaitCheckData;
import com.wine.model.WaitCheckData;
import com.wine.web.bean.ParamPage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by wzjer on 2018/4/8.
 */
public interface PersonWashTaskMapper {

    int countTotal(@Param("task") PersonWashTask task);

    List<PersonWashTask> findByPage(@Param("page") ParamPage<PersonWashTask> page, @Param("task") PersonWashTask task);

    PersonWashTask findById(@Param("taskId") Integer id);

    int countTotalCheckDataByTask(@Param("taskId") Integer id, @Param("clWorkStatus") Integer clWorkStatus, @Param("clReviewStatus") Integer clReviewStatus);

    List<WaitCheckData> findByPageCheckDataByTask(@Param("page") ParamPage<WaitCheckData> page, @Param("taskId") Integer id, @Param("clWorkStatus") Integer clWorkStatus, @Param("clReviewStatus") Integer clReviewStatus);

    void insertOne(PersonWashTask task);

    void updateRandomCheckRate(@Param("rate") Integer rate, @Param("taskId") Integer taskId);

    List<String> findTemporarySavedFields(@Param("checkId") Integer irSid);

    void saveTemporaryDatasForIntern(@Param("checkId") Integer irSid, @Param("fieldList")List<String> slist);

    void deleteTemporaryDatasByCheckId(@Param("checkId") Integer irSid);

    void deleteTemporaryDatasByTaskId(@Param("taskId") Integer taskId);

    String countTheRateOfAlreadyValidated(@Param("taskId") Integer taskId);

    void updateCheckDataModifyStatusByTaskId(@Param("taskId") Integer taskId);

    int countTotalNotModifiedRecords(@Param("taskId") Integer taskId);

    List<PersonWashWaitCheckData> findAllCheckDatasByTaskId(@Param("taskId") Integer taskId);

    PersonWashCleanResult findByTableNameAndId(@Param("tableName") String tableName, @Param("irSid") Integer id);

    void insertOneCheckData(@Param("tableName") String tableName, @Param("original") PersonWashCleanResult original);

    void updateOneCheckData(@Param("tableName") String tableName, @Param("record") PersonWashCleanResult original);

    void updateTaskWorkCountByTaskId(PersonWashTask task2);

    List<PersonWashTask> findAllTaskList();

}
