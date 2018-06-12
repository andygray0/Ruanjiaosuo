package com.wine.dao;

import com.wine.model.DataCountSample;
import com.wine.model.PersonWashWaitCheckData;
import com.wine.model.WaitCheckData;
import com.wine.web.bean.ParamPage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PersonWashMapper {

    int countTotal(@Param("waitCheckData") WaitCheckData waitCheckData);

    List<WaitCheckData> findByPage(@Param("page") ParamPage<WaitCheckData> page,
                                   @Param("waitCheckData") WaitCheckData waitCheckData);

    int sumTheCLcount(@Param("waitCheckData") WaitCheckData waitCheckData);

    List<WaitCheckData> findAllWithCondition(@Param("waitCheckData") WaitCheckData waitCheckData,
                                             @Param("maxRecord") int maxRecord);

    void insertTheCheckDataRelation(@Param("taskId") Integer id,
                                    @Param("checkIds") List<Integer> checkIds);

    void updateTheCheckDataStatus(@Param("status") String status,
                                  @Param("checkIds") List<Integer> checkListOfUser);

    PersonWashWaitCheckData findCheckDataById(@Param("id") Integer irSid, @Param("dynamaicFields") String dynamaicFields);

    PersonWashWaitCheckData findCheckDataByRecordIndex(@Param("recordIndex") Integer recordIndex, @Param("taskId") Integer taskId, @Param("clWorkStatus") Integer clWorkStatus);

    int insertOneUrlcontentCheck(@Param("original") PersonWashWaitCheckData original);

    List<DataCountSample> countDataCountByPage(@Param("page") ParamPage<DataCountSample> page, @Param("year") Integer year, @Param("month") Integer month);

    int countDataCountTotal(@Param("year") Integer year, @Param("month") Integer month);

}
