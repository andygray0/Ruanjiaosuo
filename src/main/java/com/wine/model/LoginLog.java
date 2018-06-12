package com.wine.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class LoginLog implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id;

	private String userName;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date loginTime;

	private String ip;

	private Date logoutTime;

	public Integer getId(){
		return this.id;
	}

	public LoginLog setId(Integer id){
		this.id = id;
		return this;
	}

	public String getUserName(){
		return this.userName;
	}

	public LoginLog setUserName(String userName){
		this.userName = userName;
		return this;
	}

	public Date getLoginTime(){
		return this.loginTime;
	}

	public LoginLog setLoginTime(Date loginTime){
		this.loginTime = loginTime;
		return this;
	}

	public String getIp(){
		return this.ip;
	}

	public LoginLog setIp(String ip){
		this.ip = ip;
		return this;
	}

	public Date getLogoutTime(){
		return this.logoutTime;
	}

	public LoginLog setLogoutTime(Date logoutTime){
		this.logoutTime = logoutTime;
		return this;
	}


 
}