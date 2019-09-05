package org.dev12.st.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.dev12.st.model.Response;
import org.dev12.st.entity.User;
import org.dev12.st.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private IUserService userService;

	// 注册
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	@ResponseBody
	public Response register(@RequestParam("username") String username,
							@RequestParam("password") String password,
							@RequestParam("sex") String sex,
							@RequestParam("age") String ageStr,
							HttpSession session,
							HttpServletResponse response,
							HttpServletRequest req) {
		System.out.println("entered");
		int age = Integer.parseInt(ageStr);
		if (username != null && password != null) {
			List<User> user = userService.queryByName(username);
			if (user.size() == 0) {
				int isadd = userService.addUser(username, password, sex, age);
				if (isadd > 0) {
					session.setAttribute("username", username);
					
					System.out.println("success");
					return new Response("register_success", 1, true);
				} else {
					return new Response("register_fail", -1, false);
				}
			} else {
				response.setStatus( HttpServletResponse.SC_FORBIDDEN);
				return new Response("occupied", -1, false);
			}
		} else {
			return new Response("vacant", -1, false);
		}
	}
	
	// 登录
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public Response login(@RequestParam("username") String username,
			@RequestParam("password") String password, HttpSession session) {

		if (username != null && password != null) {
			List<User> user = userService.queryByName(username);
			if (user.size() == 0) {
				return new Response("NameNotFound", -1, false);
			} else {
				if (user.get(0).getPassword().equals(password)) {
					session.setAttribute("username", username);
					
					return new Response("login_success", 1, true);
				} else {
					return new Response("PasswordError", -1, false);
				}
			}
		} else {
			return new Response("vacant", -1, false);
		}
	}
}
