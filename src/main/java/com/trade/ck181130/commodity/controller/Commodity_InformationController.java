package com.trade.ck181130.commodity.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trade.ck181130.commodity.model.Commodity_InformationModel;
import com.trade.ck181130.commodity.service.Commodity_InformationService;
import com.trade.ck181130.commodity_classification.model.CommodityModel;

@Controller
@RequestMapping("/controllerInformation")
public class Commodity_InformationController {
	
	@Autowired
	private Commodity_InformationService commodity_service;
	
	/*分页遍历*/
	@ResponseBody
	@RequestMapping(value = "/page", produces = "application/json;charset=UTF-8")
	public String page(Commodity_InformationModel commoditymodel) {
		return commodity_service.page(commoditymodel);
	}
	
	@ResponseBody
	@RequestMapping(value = "/selectclass", produces = "application/json;charset=UTF-8")
	public String selectclass(CommodityModel commoditymodel,HttpSession session) {
		return commodity_service.selectclass(commoditymodel,session);
	}
	
	@ResponseBody
	@RequestMapping(value = "/insert", produces = "application/json;charset=UTF-8")
	public String insert(Commodity_InformationModel commoditymodel) {
		return commodity_service.insert(commoditymodel);
	}
	
	@ResponseBody
	@RequestMapping(value = "/selectall", produces = "application/json;charset=UTF-8")
	public String selectall(Commodity_InformationModel commoditymodel) {
		return commodity_service.selectAllModel(commoditymodel);
	}
	
//	@ResponseBody
//	@RequestMapping(value = "/select", produces = "application/json;charset=UTF-8")
//	public List<Commodity_InformationModel> select(Commodity_InformationModel commoditymodel) {
//		return commodity_service.selectAll(commoditymodel);
//	}
	
	@ResponseBody
	@RequestMapping(value = "/update", produces = "application/json;charset=UTF-8")
	public String update(Commodity_InformationModel commoditymodel) {
		return commodity_service.updateModel(commoditymodel);
	}
	
	@ResponseBody
	@RequestMapping(value = "/updatenum", produces = "application/json;charset=UTF-8")
	public String updatenum(Commodity_InformationModel commoditymodel,String[] commodity_code,String[] commodity_num) {
		return commodity_service.commoditymodel(commoditymodel,commodity_code,commodity_num);
	}
	
	@ResponseBody
	@RequestMapping(value = "/delete", produces = "application/json;charset=UTF-8")
	public String delete(Commodity_InformationModel commoditymodel) {
		return commodity_service.deleteModel(commoditymodel);
	}
}
