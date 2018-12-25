package com.trade.ck181130.user.model;

import com.trade.ck181130.util.page.PageModel;

public class UserModel extends PageModel {
	//id
	private Integer id;
	//用户昵称
	private String username;
	//用户账号
	private String usercode;
	//用户密码
	private String password;
	//用户是否为管理员
	private String admin;
	//用户验证问题
	private String userque;
	//用户验证答案
	private String userans;
	//用户签名
	private String usernote;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsercode() {
		return usercode;
	}
	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public String getUserque() {
		return userque;
	}
	public void setUserque(String userque) {
		this.userque = userque;
	}
	public String getUserans() {
		return userans;
	}
	public void setUserans(String userans) {
		this.userans = userans;
	}
	public String getUsernote() {
		return usernote;
	}
	public void setUsernote(String usernote) {
		this.usernote = usernote;
	}
	@Override
	public String toString() {
		return "UserModel [id=" + id + ", username=" + username + ", usercode=" + usercode + ", password=" + password
				+ ", admin=" + admin + ", userque=" + userque + ", userans=" + userans + ", usernote=" + usernote + "]";
	}
	
}
