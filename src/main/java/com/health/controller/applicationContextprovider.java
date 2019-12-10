package com.health.controller;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

@Component
public class applicationContextprovider implements ApplicationContextAware{
	public static ApplicationContext applicationContext;
	
	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		System.out.println("application ½ÇÇàµÊ!!"); 
		this.applicationContext = applicationContext; 
	}
	
	public static ApplicationContext getApplicationContext() { 
		return applicationContext; 
	} 
}
