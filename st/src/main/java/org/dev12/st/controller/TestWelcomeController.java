package org.dev12.st.controller;

import org.springframework.ui.ModelMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/test/welcome")
public class TestWelcomeController {

	@RequestMapping("/hello")
	public String helloWorld(ModelMap mm) {
		mm.addAttribute("name", "World");
		return "Test/hello";
	}

	@RequestMapping(value="/uploadTest", method=RequestMethod.GET)
	public String uploadTest() {
		return "Test/uploadTest";
	}
	
	@RequestMapping(value="/uploadTest2", method=RequestMethod.GET)
	public String uploadTest2() {
		return "Test/uploadTest2";
	}
	
	@RequestMapping(value="/showTest", method=RequestMethod.GET)
	public String showTest() {
		return "Test/showTest";
	}
}