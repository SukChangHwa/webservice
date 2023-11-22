package com.inswave.config.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class ApiInterceptor implements HandlerInterceptor {
	
	private static final Logger logger = LoggerFactory.getLogger(ApiInterceptor.class);
	@Value("${version:}") 
	private String version;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		logger.info("########## ApiInterceptor Requert URL : {} ", request.getRequestURL());
		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		logger.debug("Inside ApiInterceptor post handle");
		HttpSession session = request.getSession();
		logger.debug("Inside ApiInterceptor session timeout : " + session.getMaxInactiveInterval());
		if ( session.getAttribute("adminInfo") != null ){
			modelAndView.addObject("adminInfo", session.getAttribute("adminInfo"));
		}
		
		if ( session.getAttribute("frontInfo") != null ){
			modelAndView.addObject("frontInfo", session.getAttribute("frontInfo"));
		}
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception exception) throws Exception {
		logger.debug("Inside ApiInterceptor after completion");
	}
}
