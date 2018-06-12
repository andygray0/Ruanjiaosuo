package com.wine.exception;

public class BizException extends BaseException{

	private static final long serialVersionUID = 1L;

	public BizException(String errorCode) {
		super(errorCode);
	}
	public BizException(String errorCode, Object params) {
		super(errorCode,params);
	}
}
