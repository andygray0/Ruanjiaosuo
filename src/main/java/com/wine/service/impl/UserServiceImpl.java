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

    @Override
    public void modifyPassByIds(String ids){
        String[] idlist = ids.split(",");
        for(int i = 0; i<idlist.length;i++){
            int id = Integer.parseInt(idlist[i]);
            User user = mapper.getById(id);
            user.setPassword("e10adc3949ba59abbe56e057f20f883e");
            mapper.update(user);
        }
    }
}
