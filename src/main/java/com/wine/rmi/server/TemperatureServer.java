package com.wine.rmi.server;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TemperatureServer {
	public static void main(String[] args) {
		
		 ApplicationContext ctx = new ClassPathXmlApplicationContext("rmi/rmi_server_context.xml");  
		 System.out.println("started");  
	}
}
