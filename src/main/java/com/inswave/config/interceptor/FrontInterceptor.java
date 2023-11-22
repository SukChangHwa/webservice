package com.inswave.config.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class FrontInterceptor implements HandlerInterceptor {
	
	private static final Logger logger = LoggerFactory.getLogger(FrontInterceptor.class);
	@Value("${version:}") 
	private String version;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		logger.info("########## FrontInterceptor Requert URL : {} ", request.getRequestURL());
		logger.info("########## FrontInterceptor Version : {} ", version);
		
		if("".equals(version)) {
			response.sendRedirect(request.getContextPath() + "/v1/front");
			version = "v1";
			return false;
		}
		
		if(request.getRequestURL().indexOf(version) < 0) {
			response.sendRedirect(request.getContextPath() + "/"+version+"/front");
			return false;
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		logger.debug("Inside FrontInterceptor post handle");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception exception) throws Exception {
		logger.debug("Inside FrontInterceptor after completion");
	}
}
