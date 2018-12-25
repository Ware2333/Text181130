package com.trade.ck181130.order_information.model;

import java.util.Date;

import com.trade.ck181130.util.page.PageModel;

public class Order_InformationModel extends PageModel {
	private Integer id;
	private String order_code;
	private String usercode;
	private Date order_time;
	private String receiving;
	private String descr;
	private String username;
	private String price;
	private String usertel;
	private String addr1name;
	private String addr2name;
	private String addr3name;
	private String addr4name;
	
	public String getUsertel() {
		return usertel;
	}
	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}
	public String getAddr1name() {
		return addr1name;
	}
	public void setAddr1name(String addr1name) {
		this.addr1name = addr1name;
	}
	public String getAddr2name() {
		return addr2name;
	}
	public void setAddr2name(String addr2name) {
		this.addr2name = addr2name;
	}
	public String getAddr3name() {
		return addr3name;
	}
	public void setAddr3name(String addr3name) {
		this.addr3name = addr3name;
	}
	public String getAddr4name() {
		return addr4name;
	}
	public void setAddr4name(String addr4name) {
		this.addr4name = addr4name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Date getOrder_time() {
		return order_time;
	}
	public void setOrder_time(Date order_time) {
		this.order_time = order_time;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public String getUsercode() {
		return usercode;
	}
	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}
	public String getReceiving() {
		return receiving;
	}
	public void setReceiving(String receiving) {
		this.receiving = receiving;
	}
	public String getDescr() {
		return descr;
	}
	public void setDescr(String descr) {
		this.descr = descr;
	}
	@Override
	public String toString() {
		return "Order_InformationModel [id=" + id + ", order_code=" + order_code + ", usercode=" + usercode
				+ ", order_time=" + order_time + ", receiving=" + receiving + ", descr=" + descr + ", username="
				+ username + "]";
	}
	
}
