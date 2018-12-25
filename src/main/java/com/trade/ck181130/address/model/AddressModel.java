package com.trade.ck181130.address.model;

import com.trade.ck181130.util.page.PageModel;

public class AddressModel extends PageModel {
	private Integer id;
	private String code;
	private String name;
	private String parentcode;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public String getParentcode() {
		return parentcode;
	}
	public void setParentcode(String parentcode) {
		this.parentcode = parentcode;
	}
	
}
