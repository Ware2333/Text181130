package com.trade.ck181130.order_information.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trade.ck181130.order_information.model.Order_InformationModel;
import com.trade.ck181130.order_information.service.Order_InformationService;

@Controller
@RequestMapping("/order_information")
public class Order_InformationController {

	@Autowired
	private Order_InformationService service;
	@ResponseBody
	@RequestMapping("/insert")
	public String insert(Order_InformationModel model) {
		return service.insert(model);
	}
	@ResponseBody
	@RequestMapping("/delete")
	public String delete(Order_InformationModel model) {
		return service.deleteModel(model);
	}
	@ResponseBody
	@RequestMapping("/update")
	public String update(Order_InformationModel model) {
		return service.updateModel(model);
	}
	@ResponseBody
	@RequestMapping(value="/page",produces="application/json;charset=UTF-8")
	public String page(Order_InformationModel model) {
		return service.page(model);
	}
	
	@ResponseBody
	@RequestMapping(value="/select",produces="application/json;charset=UTF-8")
	public String select(Order_InformationModel model) {
		return service.selectall(model);
	}
	
	@ResponseBody
	@RequestMapping(value="/selectmodel",produces="application/json;charset=UTF-8")
	public String selectmodel(Order_InformationModel model) {
		return service.selectAllModel(model);
	}
	
	@ResponseBody
	@RequestMapping(value="/order",produces="application/json;charset=UTF-8")
	public String order(Order_InformationModel model) {
		if(service.insert(model)=="success") {
			return service.select(model);
		}else {
			return "";
		}
	}
}
