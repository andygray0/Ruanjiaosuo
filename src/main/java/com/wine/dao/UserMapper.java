package com.wine.dao;

import com.wine.dao.page.PageQuery;
import com.wine.model.Logint;
import com.wine.model.User;
import com.wine.model.UserCriteria;
import com.wine.service.base.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper extends BaseMapper<User> {
    int countByExample(UserCriteria example);

    List<User> selectByExample(UserCriteria example);

    User selectByPrimaryKey(Integer id);

    User findById(Integer id);
    
    int update(User user);
    int insertLogint(Logint logint);
    int insertLogout(Logint logint);
    List<Logint> getloginlistByPage(PageQuery pageQuery);

    int insertOne(User user);

    void updateUserLittleFields(User user);

    int countTotal(@Param("loginName") String loginName, @Param("roleId") Integer roleId);

    List<User> findByPage(@Param("limit") Integer limit, @Param("startNo") Integer startNo, @Param("sort") String sort, @Param("direction") String direction, @Param("loginName") String loginName, @Param("roleId") Integer roleId);


}