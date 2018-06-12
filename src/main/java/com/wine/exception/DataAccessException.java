package com.wine.exception;

public class DataAccessException extends BaseException{

	public DataAccessException(String errorCode) {
		super(errorCode);
	}

	public DataAccessException(String errorCode, Object... params) {
		super(errorCode, params);
	}
	private static final long serialVersionUID = 1L;

}
