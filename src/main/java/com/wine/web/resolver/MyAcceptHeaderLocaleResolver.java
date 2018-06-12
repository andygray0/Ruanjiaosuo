package com.wine.web.resolver;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.i18n.AcceptHeaderLocaleResolver;

public class MyAcceptHeaderLocaleResolver extends AcceptHeaderLocaleResolver {
	private final Logger log = Logger.getLogger(MyAcceptHeaderLocaleResolver.class); 

	private Locale loc;
	
	public Locale resolveLocale(HttpServletRequest request) {
		return loc;
	}

	public void setLocale(HttpServletRequest request, HttpServletResponse response, Locale locale) {
		log.warn("client change locale:" + locale);
		loc = locale;
	}
}
