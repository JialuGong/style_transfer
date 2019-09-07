package org.dev12.st.controller;

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

	@RequestMapping(value = "/uploadTest", method = { RequestMethod.GET, RequestMethod.POST })
	public String uploadTest() {
		return "uploadTest";
	}

	@RequestMapping(value = "/uploadTest2", method = RequestMethod.GET)
	public String uploadTest2() {
		return "uploadTest2";
	}

	@RequestMapping(value = "/showTest", method = RequestMethod.GET)
	public String showTest() {
		return "showTest";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "register";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/enter", method = RequestMethod.GET)
	public String enter() {
		return "enter";
	}
}