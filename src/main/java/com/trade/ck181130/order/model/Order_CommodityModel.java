package com.trade.ck181130.order.model;

import com.trade.ck181130.util.page.PageModel;

public class Order_CommodityModel extends PageModel {
	private Integer id;
	private String order_code;
	private String commodity_code;
	private String num;
	private String commodity_name;
	private String price;
	private String img_url;
	
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCommodity_name() {
		return commodity_name;
	}
	public void setCommodity_name(String commodity_name) {
		this.commodity_name = commodity_name;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getOrder_code() {
		return order_code;
	}
	public void setOrder_code(String order_code) {
		this.order_code = order_code;
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
