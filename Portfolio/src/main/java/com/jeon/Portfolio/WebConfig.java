package com.jeon.Portfolio;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.jeon.Portfolio.common.CommonSession;

@Configuration
public class WebConfig implements WebMvcConfigurer {
	
	@Resource
	@Qualifier(value = "CommonSession")
	private CommonSession commonSession;
	
	@Override
	public void addInterceptors (InterceptorRegistry registry) {
		registry.addInterceptor(commonSession).addPathPatterns("/index/");

	}
}