package com.trade.ck181130.order.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trade.ck181130.order.mapper.Order_CommodityMapper;
import com.trade.ck181130.order.model.Order_CommodityModel;
import com.trade.ck181130.util.BaseService.ServiceUtil;
import com.trade.ck181130.util.isEmpty.IsEmpty;
import com.trade.ck181130.util.mapper.MapperUtil;

@Service
public class Order_CommodityService extends ServiceUtil<Order_CommodityModel> {
	@Autowired
	private Order_CommodityMapper<Order_CommodityModel> mapper;

	@Override
	public MapperUtil<Order_CommodityModel> getmapper() {
		return mapper;
	}

	public String insert(Order_CommodityModel model) {
		Order_CommodityModel ni = new Order_CommodityModel();
		ni.setCommodity_code(model.getCommodity_code());
		ni.setOrder_code(model.getOrder_code());
		List<Order_CommodityModel> list = mapper.selectAll(ni);
		if (IsEmpty.isEmpty(list)) {
			return mapper.insert(model) > 0 ? "success" : "err";
		} else {
			model.setNum(String.valueOf(Integer.parseInt(model.getNum()) + Integer.parseInt(list.get(0).getNum())));
			return mapper.updateModel(model) > 0 ? "success" : "err";
		}
	}
	
	public String order_insert(String order_code,String[] commodity_code,String[] num) {
		int a = 0;
		for(int i = 0;i<commodity_code.length;i++) {
			Order_CommodityModel no = new Order_CommodityModel();
			no.setOrder_code(order_code);
			no.setCommodity_code(commodity_code[i]);
			no.setNum(num[i]);
			a = mapper.insert(no);
		}
		return a>0?"success":"err";
	}
	
	public String select(Order_CommodityModel model) {
		Map<String, Object> map = new HashMap<>();
		map.put("order_comm", mapper.selectAll(model));
		return new JSONObject(map).toString();
	}

}
