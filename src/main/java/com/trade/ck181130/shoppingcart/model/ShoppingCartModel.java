package com.trade.ck181130.shoppingcart.model;

import com.trade.ck181130.util.page.PageModel;

public class ShoppingCartModel extends PageModel {
	private Integer id;
	private String usercode;
	private String commodity_code;
	private String num;
	private String code;
	private String name;
	private String price;
	private String img_url;
	private String commodity_num;
	
	public String getCommodity_num() {
		return commodity_num;
	}
	public void setCommodity_num(String commodity_num) {
		this.commodity_num = commodity_num;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsercode() {
		return usercode;
	}
	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}
	public String getCommodity_code() {
		return commodity_code;
	}
	public void setCommodity_code(String commodity_code) {
		this.commodity_code = commodity_code;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	
}
