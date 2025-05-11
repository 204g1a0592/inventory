package com.edureka.training.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/client")
public class UserController {
	@GetMapping("/userlogin")
	public String userlogin() {
		return "user";
	}
	@GetMapping("register")
	public String register() {
		return "register";
	}
	@PostMapping("login")
	public String login() {
		return "user";
	}
	@PostMapping("loginsuccess")
	public String dashboard() {
		return "user_dashboard";
	}
	
}
