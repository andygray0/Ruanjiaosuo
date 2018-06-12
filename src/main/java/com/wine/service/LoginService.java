package com.wine.service;

import com.wine.model.Logint;
import com.wine.model.User;
import com.wine.web.bean.PageResponse;
import com.wine.web.bean.WebCondition;
import com.wine.web.form.LoginForm;

import java.util.List;

public interface LoginService {
	User doLogin(LoginForm loginForm,String ip);
	User getUserById(int id);
    void logout(String userName,String ip);
	int updateUser(User user);
    PageResponse loginlist(WebCondition condition);
	List<User> showworker();
}
