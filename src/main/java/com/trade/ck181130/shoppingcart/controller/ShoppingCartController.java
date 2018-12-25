package com.trade.ck181130.shoppingcart.controller;


import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trade.ck181130.commodity.model.Commodity_InformationModel;
import com.trade.ck181130.shoppingcart.model.ShoppingCartModel;
import com.trade.ck181130.shoppingcart.service.ShoppingCartService;


@Controller
@RequestMapping("/shoppingcart")
public class ShoppingCartController {
	@Autowired
	private ShoppingCartService shoppingservice;

	@ResponseBody
	@RequestMapping("/insert")
	public String insert(ShoppingCartModel model) {
		return shoppingservice.insert(model);
	}
	@ResponseBody
	@RequestMapping(value = "/page", produces = "application/json;charset=UTF-8")
	public String page(ShoppingCartModel model) {
		return shoppingservice.selectall(model);
	}
	
	@ResponseBody
	@RequestMapping(value = "/commodity", produces = "application/json;charset=UTF-8")
	public String commodity(Commodity_InformationModel model) {
		return shoppingservice.commodity(model);
	}
	
	@ResponseBody
	@RequestMapping(value = "/select", produces = "application/json;charset=UTF-8")
	public String select(ShoppingCartModel model) {
		return new JSONObject(shoppingservice.selectAll(model)).toString();
	}
	
	@ResponseBody
	@RequestMapping(value = "/delete", produces = "application/json;charset=UTF-8")
	public String delete(ShoppingCartModel model) {
		return shoppingservice.delete(model);
	}
	
	@ResponseBody
	@RequestMapping(value = "/update", produces = "application/json;charset=UTF-8")
	public String update(ShoppingCartModel model) {
		return shoppingservice.update(model);
	}
	
	@ResponseBody
	@RequestMapping(value = "/sel", produces = "application/json;charset=UTF-8")
	public String sel(String[] id) {
		return shoppingservice.sel(id);
	}
	
	@ResponseBody
	@RequestMapping(value = "/del", produces = "application/json;charset=UTF-8")
	public String del(String[] id) {
		return shoppingservice.del(id);
	}
}
