package com.wine.service.impl;

import com.wine.dao.UserMapper;
import com.wine.model.User;
import com.wine.service.UserService;
import com.wine.service.base.BaseServiceImpl;
import com.wine.service.base.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl extends BaseServiceImpl<User,Dao> implements UserService {

    @Autowired
    private UserMapper mapper;

    @Override
    public int countTotal(String loginName, Integer roleId) {
        return mapper.countTotal(loginName, roleId);
    }

    @Override
    public List<User> findByPage(Integer limit, Integer page, String id, String asc, String loginName, Integer roleId) {
        int startNo = (page - 1) * limit;
        return mapper.findByPage(limit, startNo, id, asc,loginName, roleId);
    }
}
