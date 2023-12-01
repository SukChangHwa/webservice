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
@RequestMapping("/pilot")
public class PilotController {
	
	private static final Logger logger = LoggerFactory.getLogger(PilotController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {

		
		return "pilot/home";
	}
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/{wildcard:.*}", method = RequestMethod.GET)
	public ModelAndView page(@PathVariable String wildcard) {
		
		ModelAndView mv = new ModelAndView("pilot/"+wildcard);
		
		return mv;
	}
	
}
