package com.jeon.Portfolio.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class CommonSession extends HandlerInterceptorAdapter {

	private static final Logger log = LoggerFactory.getLogger(CommonSession.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception { 

		log.info("session체크");

		HttpSession session  =  request.getSession();

		String user_id = (String)session.getAttribute("id");

		log.info("현재 로그인하려는 user_id = " + user_id);

		if (user_id == null) {		//session check

			response.sendRedirect("loginPage");

			return false;

		}

		else {

			return true;

		}
	}
}