package com.wine.service;

import com.wine.model.User;
import com.wine.service.base.BaseService;

import java.util.List;

/**
 * Created by acer on 2018/2/19.
 */
public interface UserService extends BaseService<User> {

    int countTotal(String loginName, Integer roleId);

    List<User> findByPage(Integer limit, Integer page, String id, String asc, String loginName, Integer roleId);
}
