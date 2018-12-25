package com.trade.ck181130.commodity.model;

import com.trade.ck181130.util.page.PageModel;

public class Commodity_InformationModel extends PageModel {
	private Integer id;
	private String name;
	private String parentcode;
	private String commodity_code;
	private String commodity_name;
	private String commodity_price;
	private String commodity_note;
	private String commodity_num;
	private String commodity_descr;
	private String commodity_parentcode;
	private String commodity_img;
	
	

	public String getCommodity_img() {
		return commodity_img;
	}
	public void setCommodity_img(String commodity_img) {
		this.commodity_img = commodity_img;
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
	public String getCommodity_name() {
		return commodity_name;
	}
	public void setCommodity_name(String commodity_name) {
		this.commodity_name = commodity_name;
	}
	public String getCommodity_price() {
		return commodity_price;
	}
	public void setCommodity_price(String commodity_price) {
		this.commodity_price = commodity_price;
	}
	public String getCommodity_note() {
		return commodity_note;
	}
	public void setCommodity_note(String commodity_note) {
		this.commodity_note = commodity_note;
	}
	public String getCommodity_num() {
		return commodity_num;
	}
	public void setCommodity_num(String commodity_num) {
		this.commodity_num = commodity_num;
	}
	public String getCommodity_descr() {
		return commodity_descr;
	}
	public void setCommodity_descr(String commodity_descr) {
		this.commodity_descr = commodity_descr;
	}
	public String getCommodity_parentcode() {
		return commodity_parentcode;
	}
	public void setCommodity_parentcode(String commodity_parentcode) {
		this.commodity_parentcode = commodity_parentcode;
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
	@Override
	public String toString() {
		return "Commodity_InformationModel [id=" + id + ", name=" + name + ", parentcode=" + parentcode
				+ ", commodity_code=" + commodity_code + ", commodity_name=" + commodity_name + ", commodity_price="
				+ commodity_price + ", commodity_note=" + commodity_note + ", commodity_num=" + commodity_num
				+ ", commodity_descr=" + commodity_descr + ", commodity_parentcode=" + commodity_parentcode
				+ ", commodity_img=" + commodity_img + "]";
	}

}
