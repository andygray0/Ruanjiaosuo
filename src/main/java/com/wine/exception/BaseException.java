package com.wine.exception;

public class BaseException extends RuntimeException {
	private static final long serialVersionUID = -1394951127249184916L;
	protected String errorCode;
	protected Object[] params;
	
	public Object[] getParams() {
		return params;
	}

	public void setParams(Object[] params) {
		this.params = params;
	}

	public BaseException(String errorCode) {
		this.errorCode = errorCode;
	}
	
	public BaseException(String errorCode, Object... params) {
		this.errorCode = errorCode;
		this.params = params;
	}
	
	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}
	
}
