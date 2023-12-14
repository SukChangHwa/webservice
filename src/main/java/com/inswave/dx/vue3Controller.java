package com.inswave.dx;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/vue3")
public class vue3Controller {
	
	private static final Logger logger = LoggerFactory.getLogger(vue3Controller.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {

		
		return "vue3/home";
	}
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/{wildcard:.*}", method = RequestMethod.GET)
	public ModelAndView page(@PathVariable String wildcard) {
		logger.debug("page name: {}", wildcard);
		ModelAndView mv = new ModelAndView("vue3/"+wildcard);
		
		return mv;
	}
	
}
