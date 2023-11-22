package com.inswave.config.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class FrontLoginInterceptor implements HandlerInterceptor {
	
	private static final Logger logger = LoggerFactory.getLogger(FrontLoginInterceptor.class);
	@Value("${version:}") 
	private String version;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		logger.info("########## FrontLoginInterceptor Requert URL : {} ", request.getRequestURL());
		
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("frontInfo");
		
		if ( obj == null ){
			// 로그인이 안되어 있는 상태임으로 로그인 폼으로 다시 돌려보냄(redirect)
			response.sendRedirect("/ins/"+version+"/front/login");
			return false;
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		logger.debug("Inside FrontLoginInterceptor post handle");
		HttpSession session = request.getSession();
		logger.debug("Inside FrontLoginInterceptor session timeout : " + session.getMaxInactiveInterval());
		if ( session.getAttribute("frontInfo") != null ){
			modelAndView.addObject("frontInfo", session.getAttribute("frontInfo"));
		}
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception exception) throws Exception {
		logger.debug("Inside FrontLoginInterceptor after completion");
	}
}
