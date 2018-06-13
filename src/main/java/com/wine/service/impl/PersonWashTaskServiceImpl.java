package com.wine.service.impl;

import com.wine.dao.CommonMapper;
import com.wine.dao.PersonWashTaskMapper;
import com.wine.model.*;
import com.wine.service.PersonWashTaskService;
import com.wine.web.bean.ParamPage;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PersonWashTaskServiceImpl implements PersonWashTaskService {

    @Autowired
    private PersonWashTaskMapper personWashTaskMapper;

    @Autowired
    private CommonMapper commonMapper;

    @Override
    public int countTotal(PersonWashTask task) {
        return personWashTaskMapper.countTotal(task);
    }

    @Override
    public List<PersonWashTask> findByPage(ParamPage<PersonWashTask> page, PersonWashTask task) {
        return personWashTaskMapper.findByPage(page, task);
    }

    @Override
    public PersonWashTask findById(Integer id) {
        return personWashTaskMapper.findById(id);
    }

    @Override
    public int countTotalCheckDataByTask(Integer id, Integer clWorkStatus, Integer clReviewStatus) {
        return personWashTaskMapper.countTotalCheckDataByTask(id,clWorkStatus, clReviewStatus);
    }

    @Override
    public List<WaitCheckData> findByPageCheckDataByTask(ParamPage<WaitCheckData> page, Integer id, Integer clWorkStatus, Integer clReviewStatus) {
        return personWashTaskMapper.findByPageCheckDataByTask(page,id, clWorkStatus, clReviewStatus);
    }

    @Override
    public void insertOne(PersonWashTask task) {
        personWashTaskMapper.insertOne(task);
    }

    @Override
    public void updateRandomCheckRate(Integer rate, Integer taskId) {
        personWashTaskMapper.updateRandomCheckRate(rate, taskId);
    }

    @Override
    public List<String> findTemporarySavedFields(Integer irSid) {
        return personWashTaskMapper.findTemporarySavedFields(irSid);
    }

    @Override
    public void saveTemporaryDatasForIntern(Integer irSid, List<String> slist) {
        personWashTaskMapper.saveTemporaryDatasForIntern(irSid, slist);
    }

    @Override
    public void deleteTemporaryDatasByCheckId(Integer irSid) {
        personWashTaskMapper.deleteTemporaryDatasByCheckId(irSid);
    }

    @Override
    public void deleteTemporaryDatasByTaskId(Integer taskId) {
        personWashTaskMapper.deleteTemporaryDatasByTaskId(taskId);
    }

    @Override
    public String countTheRateOfAlreadyValidated(Integer id) {
        return personWashTaskMapper.countTheRateOfAlreadyValidated(id);
    }

    @Override
    public void updateCheckDataModifyStatusByTaskId(Integer taskId) {
        personWashTaskMapper.updateCheckDataModifyStatusByTaskId(taskId);
    }

    @Override
    public int countTotalNotModifiedRecords(Integer taskId) {
        return personWashTaskMapper.countTotalNotModifiedRecords(taskId);
    }

    @Override
    public void insertOrUpdateData2TargetTableByTaskId(Integer taskId) {

        List<PersonWashWaitCheckData> dataList = personWashTaskMapper.findAllCheckDatasByTaskId(taskId);
        if(null != dataList && dataList.size() > 0){
            for(PersonWashWaitCheckData data : dataList){
                String tableName = data.getClTarget();
                Integer id = data.getIrSid();
                PersonWashCleanResult original = personWashTaskMapper.findByTableNameAndId(tableName, id);
                if(null == original){ // 不存在，插入
                    original = new PersonWashCleanResult();
                    BeanUtils.copyProperties(data, original);
                    personWashTaskMapper.insertOneCheckData(tableName, original);
                } else { // 已存在， 更新
                    BeanUtils.copyProperties(data, original);
                    personWashTaskMapper.updateOneCheckData(tableName, original);
                }
            }
        }

    }

    @Override
    public Map<String, Object> handTheGiveUpTaskDatasByTaskId(Integer taskId) {
        Map<String, Object> map = new HashMap<String, Object>();

        try{
            List<PersonWashWaitCheckData> dataList = personWashTaskMapper.findAllCheckDatasByTaskId(taskId);
            //  保存， 审核
            //  放弃任务， 将确认的数据插入新表， 将不确认的数据恢复到初始状态
            List<PersonWashWaitCheckData> okList = new ArrayList<PersonWashWaitCheckData>();    // 已经审核通过的
            List<PersonWashWaitCheckData> failList = new ArrayList<PersonWashWaitCheckData>();   // 未审核的和审核未通过的

            int realQueryCount = 0;
            int realFinishedCount = 0;
            int realQueryRecordCount = 0;
            int realFinishedRecordCount = 0;

            if(null != dataList && dataList.size() > 0){
                for(PersonWashWaitCheckData data: dataList){
                    if("1".equals(data.getClReviewStatus())){
                        okList.add(data);
                        realFinishedCount += Integer.parseInt(data.getClCount());
                        realFinishedRecordCount += 1;
                    } else {
                        failList.add(data);
                    }
                    if("1".equals(data.getClWorkStatus())){
                        realQueryCount += Integer.parseInt(data.getClCount());
                        realQueryRecordCount += 1;
                    }
                }
            }



            // 处理审核通过的
            if(null != okList && okList.size() > 0){

                for(PersonWashWaitCheckData data: okList){
                    String tableName = data.getClTarget();
                    Integer id = data.getIrSid();
                    PersonWashCleanResult original = personWashTaskMapper.findByTableNameAndId(tableName, id);
                    if(null == original){ // 不存在，插入
                        original = new PersonWashCleanResult();
                        BeanUtils.copyProperties(data, original);
                        personWashTaskMapper.insertOneCheckData(tableName, original);
                    } else { // 已存在， 更新
                        BeanUtils.copyProperties(data, original);
                        personWashTaskMapper.updateOneCheckData(tableName, original);
                    }
                }
            }

            // 处理未审核的和未通过审核的
            if(null != failList && failList.size() > 0){
                for(PersonWashWaitCheckData data: failList){
                    Map<String,Object> setMap = new HashMap<String, Object>();
                    setMap.put("CL_REVIEW_STATUS", null);
                    setMap.put("CL_WORK_STATUS", null);
                    setMap.put("CL_WORKER", null);
                    setMap.put("CL_REVIEWER", null);

                    Map<String,Object> whereMap = new HashMap<String, Object>();
                    whereMap.put("IR_SID", data.getIrSid());

                    commonMapper.updateDatasBy2Map(ConstantTableName.URLCONTENT_CHECK_2017, setMap, whereMap);
                }
            }
            map.put("flag", true);


             // 工作量统计
            PersonWashTask task2 = new PersonWashTask();
            task2.setId(taskId)
                    .setRealQueryItemCount(realQueryCount)
                    .setRealFinishedItemCount(realFinishedCount)
                    .setRealQueryRecordCount(realQueryRecordCount)
                    .setRealFinishedRecordCount(realFinishedRecordCount)
                    .setWorkLoad(0.0);
            personWashTaskMapper.updateTaskWorkCountByTaskId(task2);

        } catch (Exception e){
            e.printStackTrace();
            map.put("flag", false);
        }

        return map;
    }

    @Override
    public void updateTaskWorkCountByTaskId(PersonWashTask task2) {
        personWashTaskMapper.updateTaskWorkCountByTaskId(task2);
    }

    @Override
    public List<PersonWashTask> findAllTaskList() {
        return personWashTaskMapper.findAllTaskList();
    }


}
