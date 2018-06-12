package com.wine.web.bean;

public class JsonResponse {
	private String success;
	
	private Object data;
	
	private String error;

	public JsonResponse() {
		this.success = "true";
	}
	public String getSuccess() {
		return success;
	}

	public void setSuccess(String success) {
		this.success = success;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}
	
}
