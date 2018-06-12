package com.wine.dao3;

import com.wine.model3.Task;
import com.wine.model3.TaskCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TaskMapper {
    int countByExample(TaskCriteria example);

    int deleteByExample(TaskCriteria example);

    int deleteByPrimaryKey(String id);

    int insert(Task record);

    int insertSelective(Task record);

    List<Task> selectByExample(TaskCriteria example);

    Task selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Task record, @Param("example") TaskCriteria example);

    int updateByExample(@Param("record") Task record, @Param("example") TaskCriteria example);

    int updateByPrimaryKeySelective(Task record);

    int updateByPrimaryKey(Task record);
}