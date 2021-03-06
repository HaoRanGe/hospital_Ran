package com.dgtcm.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dgtcm.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/index.html")
	public String loginPage(){
		return "login";
	}
	
	@RequestMapping(value="/loginCheck.html")
	public ModelAndView loginCheck(String username, String password){
		boolean isValidUser = userService.hasMatchUser(username, password);
		if( ! isValidUser ){
			return new ModelAndView("login" , "error", "用户名或密码错误");
		}else{
			return new ModelAndView("main");
		}
	}
}
