package com.trade.ck181130.addinfo.controller;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.trade.ck181130.addinfo.model.AddInfoModel;
import com.trade.ck181130.addinfo.service.AddInfoService;

@Controller
@RestController("/addinfo")
public class AddInfoController {

	@Autowired
	private AddInfoService service;
	
	@PostMapping(value="/page", produces = "application/json;charset=UTF-8")
	public String page(AddInfoModel model) {
		return service.page(model);
	}
	
	@PostMapping(value="/select", produces = "application/json;charset=UTF-8")
	public String select(AddInfoModel model) {
		Map<String,Object> map = new HashMap<>();
		map.put("addr", service.selectAll(model));
		return new JSONObject(map).toString();
	}
	
	@PostMapping(value="/insert", produces = "application/json;charset=UTF-8")
	public String insert(AddInfoModel model) {
		return service.insert(model);
	}
}
