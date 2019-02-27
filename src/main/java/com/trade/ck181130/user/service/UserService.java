package com.trade.ck181130.user.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trade.ck181130.user.mapper.UserMapper;
import com.trade.ck181130.user.model.UserModel;
import com.trade.ck181130.util.BaseService.ServiceUtil;
import com.trade.ck181130.util.autocode.AutoCode;
import com.trade.ck181130.util.isEmpty.IsEmpty;
import com.trade.ck181130.util.mapper.MapperUtil;
import com.trade.ck181130.util.md5.MD5;

@Service("userService")
public class UserService extends ServiceUtil<UserModel> {

	@Autowired
	private UserMapper<UserModel> usermapper;

	/**
	 * 验证账号密码是否正确,是否为管理员
	 **/
	@Override
	public UserMapper<UserModel> getmapper() {
		return usermapper;
	}

	public String login(UserModel usermodel, HttpSession session) {
		usermodel.setPassword(MD5.mmd(usermodel.getPassword()));
		List<UserModel> list = getmapper().selectAll(usermodel);
		if (!IsEmpty.isEmpty(list)) {
			if (!IsEmpty.isempty(list.get(0).getAdmin())) {
				session.setAttribute("user", list.get(0).getUsername());
				session.setAttribute("usercode", list.get(0).getUsercode());
				return "success";
			} else {
				session.setAttribute("user", list.get(0).getUsername());
				session.setAttribute("usercode", list.get(0).getUsercode());
				return "login";
			}
		} else {
			return "err";
		}
	}

	/**
	 * 获取当前页面数据条目以及内容
	 */
	public String Page(UserModel usermodel) {
		usermodel.setUsername("%" + usermodel.getUsername() + "%");
		HashMap<String, Object> map = new HashMap<>();
		map.put("count", usermapper.selectCount(usermodel));
		map.put("user", usermapper.selectModel(usermodel));
		return new JSONObject(map).toString();
	}

	/**
	 * 产生随机账号并且验证账号是否存在,mmd加密密码
	 **/
	public String register(UserModel usermodel) {
		UserModel usermodel1 = new UserModel();
		usermodel1.setUsercode(AutoCode.auto(new StringBuffer()));
		List<UserModel> list = usermapper.selectAll(usermodel1);
		while (!IsEmpty.isEmpty(list)) {
			usermodel1.setUsercode(AutoCode.auto(new StringBuffer()));
		}
		usermodel.setUsercode(usermodel1.getUsercode());
		usermodel.setPassword(MD5.mmd(usermodel.getPassword()));
		int a = usermapper.insert(usermodel);
		if (a > 0) {
			return "{\"mes\":\"success\",\"code\":\"" + usermodel.getUsercode() + "\"}";
		} else {
			return "{\"mes\":\"loginHaFailed\",\"code\":\"0\"}";
		}
	}

	public String resetpassword(UserModel usermodel) {
		if (usermapper.selectCount(usermodel) != 0) {
			return "success";
		} else {
			return "err";
		}
	}

	public String update(UserModel usermodel, String userpum, HttpSession session) {
		if (session.getAttribute("auto") == null) {
			return usermapper.updateModel(usermodel) > 0 ? "updatesuccess" : "cannot";
		} else {
			if (session.getAttribute("auto").equals(userpum)) {
				usermodel.setPassword(MD5.mmd(usermodel.getPassword()));
				return usermapper.updateModel(usermodel) > 0 ? "updatesuccess" : "cannot";
			} else {
				return "numerr";
			}
		}
	}

	public String Cancellation(HttpSession session) {
		session.removeAttribute("user");
		return "login";
	}
	
	public String getCancellation(HttpSession session) {
		session.removeAttribute("user");
		session.removeAttribute("usercode");
		return "shop/index";
	}

}
