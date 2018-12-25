package com.trade.ck181130.commodity_classification.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.trade.ck181130.commodity_classification.model.CommodityModel;
import com.trade.ck181130.commodity_classification.service.CommodityService;

@Controller
@RequestMapping("/commodityController")
public class CommodityController {

	@Autowired
	private CommodityService commodityservice;
	
	/*分页遍历*/
	@ResponseBody
	@RequestMapping(value = "/page", produces = "application/json;charset=UTF-8")
	public String page(CommodityModel commoditymodel) {
		return commodityservice.page(commoditymodel);
	}
	
	@ResponseBody
	@RequestMapping("/insert")
	public String insert(CommodityModel commoditymodel) {
		return commodityservice.insert(commoditymodel);
	}
	
	@ResponseBody
	@RequestMapping("/delete")
	public String delete(CommodityModel commoditymodel) {
		return commodityservice.delete(commoditymodel);
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public String update(CommodityModel commoditymodel) {
		return commodityservice.updateModel(commoditymodel);
	}
	
	@ResponseBody
	@RequestMapping(value = "/select", produces = "application/json;charset=UTF-8")
	public String select(CommodityModel commoditymodel) {
		return commodityservice.selectAllModel(commoditymodel);
	}
	
	@ResponseBody
	@RequestMapping(value = "/selectall", produces = "application/json;charset=UTF-8")
	public String selectall(CommodityModel commoditymodel) {
		return commodityservice.selectall(commoditymodel);
	}
}
