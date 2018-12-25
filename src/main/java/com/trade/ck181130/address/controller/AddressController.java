package com.trade.ck181130.address.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trade.ck181130.address.model.AddressModel;
import com.trade.ck181130.address.service.AddressService;

@Controller
@RequestMapping("/addresscontroller")
public class AddressController {
	@Autowired
	private AddressService addressservice;
	
	@ResponseBody
	@RequestMapping(value = "/page", produces = "application/json;charset=UTF-8")
	public String page(AddressModel addressmodel) {
		return addressservice.page(addressmodel);
	}
	
	@ResponseBody
	@RequestMapping(value = "/insert", produces = "application/json;charset=UTF-8")
	public String insert(AddressModel addressmodel) {
		return addressservice.insert(addressmodel);
	}
	
	@ResponseBody
	@RequestMapping(value = "/select", produces = "application/json;charset=UTF-8")
	public String select(AddressModel addressmodel) {
		return addressservice.selectAllModel(addressmodel);
	}
	
	@ResponseBody
	@RequestMapping(value = "/update", produces = "application/json;charset=UTF-8")
	public String update(AddressModel addressmodel) {
		return addressservice.updateModel(addressmodel);
	}
}
