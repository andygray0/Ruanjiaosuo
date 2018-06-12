package com.wine.web.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


public class WebConfigListener implements ServletContextListener{
	private Log log=LogFactory.getLog(WebConfigListener.class);
	@Override
	public void contextInitialized(ServletContextEvent sce) {
//		org.apache.ibatis.logging.LogFactory.useSlf4jLogging();
		initLog4j();
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}

	private void initLog4j() {
		log.info("will use useLog4JLogging");
		//org.apache.ibatis.logging.LogFactory.useCommonsLogging();
		log.info("will use useLog4JLogging$");
	}
}
