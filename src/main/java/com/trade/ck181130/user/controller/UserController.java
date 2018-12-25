package com.trade.ck181130.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trade.ck181130.user.model.UserModel;
import com.trade.ck181130.user.service.UserService;

@Controller
@RequestMapping("/User")
public class UserController {
	@Autowired
	private UserService userservice;

	/*用户登陆验证*/
	@ResponseBody
	@RequestMapping("/login")
	public String login(UserModel usermodel, HttpSession session) {
		return userservice.login(usermodel, session);
	}

	/*分页遍历*/
	@ResponseBody
	@RequestMapping(value = "/page", produces = "application/json;charset=UTF-8")
	public String page(UserModel usermodel) {
		return userservice.Page(usermodel);
	}

	/*用户注册*/
	@ResponseBody
	@RequestMapping(value = "/register", produces = "application/json;charset=UTF-8")
	public String register(UserModel usermodel) {
		return userservice.register(usermodel);
	}

	/*重置密码*/
	@ResponseBody
	@RequestMapping("/resetpassword")
	public String resetpassword(UserModel usermodel) {
		return userservice.resetpassword(usermodel);
	}

	/*修改密码验证*/
	@ResponseBody
	@RequestMapping(value="/update",produces = "application/json;charset=UTF-8")
	public String update(UserModel usermodel) {
		return userservice.selectAllModel(usermodel);
	}

	/*修改信息*/
	@ResponseBody
	@RequestMapping(value="/update1",produces = "application/json;charset=UTF-8")
	public String update1(UserModel usermodel, String userpum, HttpSession session) {
		return userservice.update(usermodel, userpum, session);
	}

	/**/
	@ResponseBody
	@RequestMapping(value="/Verification",produces = "application/json;charset=UTF-8")
	public String Verification(UserModel usermodel) {
		return userservice.Verification(usermodel);
	}

	@RequestMapping("/Cancellation")
	public String Cancellation(HttpSession session) {
		return userservice.Cancellation(session);
	}
	
	@RequestMapping("/getCancellation")
	public String getCancellation(HttpSession session) {
		return userservice.getCancellation(session);
	}
	
	@ResponseBody
	@RequestMapping("/delete")
	public String delete(UserModel usermodel) {
		return userservice.deleteModel(usermodel);
	}
	
	@ResponseBody
	@RequestMapping(value="/user",produces="application/json;charset=UTF-8")
	public String user(UserModel model) {
		return userservice.page(model);
	}
}
