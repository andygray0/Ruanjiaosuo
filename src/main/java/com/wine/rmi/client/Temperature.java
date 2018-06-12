package com.wine.rmi.client;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.wine.rmi.server.TemperatureService;

public class Temperature {
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("rmi/rmi_client_context.xml");  
		TemperatureService hs = (TemperatureService) ctx.getBean("temperatureService");  
       System.out.println(hs.getLatestMetaTable("61140317").getId());  
	}
}
