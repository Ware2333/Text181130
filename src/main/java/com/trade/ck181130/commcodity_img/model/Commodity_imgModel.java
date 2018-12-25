package com.trade.ck181130.commcodity_img.model;

import com.trade.ck181130.util.page.PageModel;

public class Commodity_imgModel extends PageModel {
	private Integer id;
	private String commodity_code;
	private String img_url;
	private String img_type;
	private String name;
	private String img_type2;
	
	public String getImg_type2() {
		return img_type2;
	}
	public void setImg_type2(String img_type2) {
		this.img_type2 = img_type2;
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
	public String getCommodity_code() {
		return commodity_code;
	}
	public void setCommodity_code(String commodity_code) {
		this.commodity_code = commodity_code;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getImg_type() {
		return img_type;
	}
	public void setImg_type(String img_type) {
		this.img_type = img_type;
	}
	
}
