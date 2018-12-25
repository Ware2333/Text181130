package com.trade.ck181130.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trade.ck181130.order.model.Order_CommodityModel;
import com.trade.ck181130.order.service.Order_CommodityService;

@Controller
@RequestMapping("/order_commodity")
public class Order_CommodityController {

	@Autowired
	private Order_CommodityService service;
	
	@ResponseBody
	@RequestMapping("/insert")
	public String insert(Order_CommodityModel model) {
		return service.insert(model);
	}
	
	@ResponseBody
	@RequestMapping("/delete")
	public String delete(Order_CommodityModel model) {
		return service.delete(model);
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public String update(Order_CommodityModel model) {
		return service.update(model);
	}
	
	@ResponseBody
	@RequestMapping(value="/select",produces="application/json;charset=UTF-8")
	public String select(Order_CommodityModel model) {
		return service.select(model);
	}
	
	@ResponseBody
	@RequestMapping("/order_insert")
	public String order_insert(String order_code,String[] commodity_code,String[] num) {
		return service.order_insert(order_code, commodity_code, num);
	}
	
	@ResponseBody
	@RequestMapping(value="/page",produces="application/json;charset=UTF-8")
	public String page(Order_CommodityModel model) {
		return service.page(model);
	}
}
