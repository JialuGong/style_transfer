package org.dev12.st.controller;

import java.util.List;
import java.util.Map;

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
	// public Response register(@RequestBody Map<String, String> person, HttpSession session) {
	public Response register(@RequestParam("name") String username,
							@RequestParam String password,
							@RequestParam String sex,
							@RequestParam int age,
							HttpSession session) {
		System.out.println("entered");
		
//		String username = person.get("username");
//		String password = person.get("password");
//		String sex = person.get("sex");
//		int age = Integer.parseInt(person.get("age"));
		if (username != null && password != null) {
			List<User> user = userService.queryByName(username);
			if (user.size() == 0) {
				int isadd = userService.addUser(username, password, sex, age);
				if (isadd > 0) {
					session.setAttribute("username", username);
					
					return new Response("register_success", 1, true);
				} else {
					return new Response("register_fail", -1, false);
				}
			} else {
				return new Response("occupied", -1, false);
			}
		} else {
			return new Response("vacant", -1, false);
		}
	}

	// 登录
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public Response login(@RequestBody Map<String, String> person, HttpSession session) {
		String username = person.get("username");
		String password = person.get("password");

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
