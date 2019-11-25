package com.trade.ck181130.order_information.service;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.trade.ck181130.order_information.mapper.Order_InformationMapper;
import com.trade.ck181130.order_information.model.Order_InformationModel;
import com.trade.ck181130.util.BaseService.ServiceUtil;
import com.trade.ck181130.util.UUID.Uuid;
import com.trade.ck181130.util.mapper.MapperUtil;

@Service
public class Order_InformationService extends ServiceUtil<Order_InformationModel> {
	@Autowired
	private Order_InformationMapper<Order_InformationModel> mapper;

	@Override
	public MapperUtil<Order_InformationModel> getmapper() {
		return mapper;
	}

	@Transactional(rollbackFor = Exception.class)
	public String insert(Order_InformationModel model) {
		model.setOrder_code(Uuid.getUUID());
		model.setDescr("1");
		return mapper.insert(model) > 0 ? "success" : "err";
	}
	
	public String select(Order_InformationModel model) {
		return new JSONObject(mapper.selectAllModel(model)).toString();
	}
	
	public String selectall(Order_InformationModel model) {
		Map<String, Object> map = new HashMap<>();
		map.put("order", mapper.selectAll(model));
		return new JSONObject(map).toString();
	}

}
