package com.spring.mvc.controller;

import org.springframework.ui.ModelMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/welcome")
public class WelcomeController {

	@RequestMapping("/hello")
	public String helloWorld(ModelMap mm) {
		mm.addAttribute("name", "World");
		return "hello";
	}

	@RequestMapping(value="/uploadTest", method=RequestMethod.GET)
	public String uploadTest() {
		return "uploadTest";
	}
	
	@RequestMapping(value="/showTest", method=RequestMethod.GET)
	public String showTest() {
		return "showTest";
	}
}