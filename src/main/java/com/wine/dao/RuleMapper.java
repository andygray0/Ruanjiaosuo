package com.wine.dao;

import com.wine.model.Rule;
import com.wine.model.RuleCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RuleMapper {
    int countByExample(RuleCriteria example);

    int deleteByExample(RuleCriteria example);

    int deleteByPrimaryKey(Integer id);

    int insert(Rule record);

    int insertSelective(Rule record);

    List<Rule> selectByExample(RuleCriteria example);

    Rule selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Rule record, @Param("example") RuleCriteria example);

    int updateByExample(@Param("record") Rule record, @Param("example") RuleCriteria example);

    int updateByPrimaryKeySelective(Rule record);

    int updateByPrimaryKey(Rule record);
}