package com.wine.web.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.wine.exception.BaseException;
import com.wine.exception.BizException;
import com.wine.exception.DataAccessException;

@Controller
public class BaseController {
	@Autowired
	@Qualifier("messageSource")
	private ResourceBundleMessageSource messageSource;
	
	public void setMessageSource(ResourceBundleMessageSource messageSource) {
		this.messageSource = messageSource;
	}

	@ExceptionHandler(Exception.class)
	@ResponseStatus(value=HttpStatus.OK)
	public ModelAndView handleException(Exception ex, HttpServletRequest request) {
		return new ModelAndView().addObject("error", getExceptionMessage(ex, request));
	}
	
	protected String getExceptionMessage(Exception ex, HttpServletRequest request) {
		BaseException be = null;
		String errorCode = null;
		Object[] params = null;
		if(ex instanceof BizException) {
			be = (BizException)ex;
			errorCode = be.getErrorCode();
			params = be.getParams();
		} else if(ex instanceof DataAccessException) {
			be = (DataAccessException)ex;
			errorCode = be.getErrorCode();
			params = be.getParams();
		} else {
			params = new Object[]{ex.getMessage()};
			errorCode = "error.server";
		}
		
		StringBuilder msg = new StringBuilder();

		Locale locale =RequestContextUtils.getLocale(request);
		msg.append(messageSource.getMessage(errorCode,params, ex.getMessage(), locale));

		msg.deleteCharAt(msg.length()-1);

		return msg.toString();

	}
}
