package com.wine.model;

import java.io.Serializable;
import java.util.Date;

public class OperateLog implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id;

	private String userName;

	private Date operateTime;

	private String module;

	private String method;

	private String requestUri;

	private String requestParams;

	private String controller;

	private String methodName;

	public Integer getId(){
		return this.id;
	}

	public OperateLog setId(Integer id){
		this.id = id;
		return this;
	}

	public String getUserName(){
		return this.userName;
	}

	public OperateLog setUserName(String userName){
		this.userName = userName;
		return this;
	}

	public Date getOperateTime(){
		return this.operateTime;
	}

	public OperateLog setOperateTime(Date operateTime){
		this.operateTime = operateTime;
		return this;
	}

	public String getModule(){
		return this.module;
	}

	public OperateLog setModule(String module){
		this.module = module;
		return this;
	}

	public String getMethod(){
		return this.method;
	}

	public OperateLog setMethod(String method){
		this.method = method;
		return this;
	}

	public String getRequestUri() {
		return requestUri;
	}

	public OperateLog setRequestUri(String requestUri) {
		this.requestUri = requestUri;
		return this;
	}

	public String getRequestParams() {
		return requestParams;
	}

	public OperateLog setRequestParams(String requestParams) {
		this.requestParams = requestParams;
		return this;
	}

	public String getController() {
		return controller;
	}

	public OperateLog setController(String controller) {
		this.controller = controller;
		return this;
	}

	public String getMethodName() {
		return methodName;
	}

	public OperateLog setMethodName(String methodName) {
		this.methodName = methodName;
		return this;
	}
}