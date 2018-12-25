package com.trade.ck181130.trade.model;

import com.trade.ck181130.util.page.PageModel;

public class TradeModel extends PageModel {
	//id
	private Integer id;
	//商品编号
	private String trade_code;
	//商品名称
	private String trade_name;
	//商品价格
	private String trade_price;
	//商品描述
	private String trade_note;
	//库存量
	private String trade_num;
	//商品状态
	private String trade_status;
	//商品所属分类
	private String trade_parentcode;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTrade_code() {
		return trade_code;
	}
	public void setTrade_code(String trade_code) {
		this.trade_code = trade_code;
	}
	public String getTrade_name() {
		return trade_name;
	}
	public void setTrade_name(String trade_name) {
		this.trade_name = trade_name;
	}
	public String getTrade_price() {
		return trade_price;
	}
	public void setTrade_price(String trade_price) {
		this.trade_price = trade_price;
	}
	public String getTrade_note() {
		return trade_note;
	}
	public void setTrade_note(String trade_note) {
		this.trade_note = trade_note;
	}
	public String getTrade_num() {
		return trade_num;
	}
	public void setTrade_num(String trade_num) {
		this.trade_num = trade_num;
	}
	public String getTrade_status() {
		return trade_status;
	}
	public void setTrade_status(String trade_status) {
		this.trade_status = trade_status;
	}
	public String getTrade_parentcode() {
		return trade_parentcode;
	}
	public void setTrade_parentcode(String trade_parentcode) {
		this.trade_parentcode = trade_parentcode;
	}
	
}
