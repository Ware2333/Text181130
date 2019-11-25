package com.trade.ck181130.shoppingcart.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.trade.ck181130.commodity.mapper.Commodity_Information;
import com.trade.ck181130.commodity.model.Commodity_InformationModel;
import com.trade.ck181130.shoppingcart.mapper.ShoppingCartMapper;
import com.trade.ck181130.shoppingcart.model.ShoppingCartModel;
import com.trade.ck181130.util.BaseService.ServiceUtil;
import com.trade.ck181130.util.isEmpty.IsEmpty;
import com.trade.ck181130.util.mapper.MapperUtil;

@Service
public class ShoppingCartService extends ServiceUtil<ShoppingCartModel>{
	@Autowired
	private ShoppingCartMapper<ShoppingCartModel> shoppingmapper;
	@Autowired
	private Commodity_Information<Commodity_InformationModel> mapper;
	@Override
	public MapperUtil<ShoppingCartModel> getmapper(){
		return shoppingmapper;
	}
	
	public String selectall(ShoppingCartModel model) {
		if(!IsEmpty.isempty(model.getUsercode())) {
			model.setUsercode("%"+model.getUsercode()+"%");
		}
		Map<String, Object> map = new HashMap<>();
		map.put("shoppingcart", shoppingmapper.selectAll(model));
		map.put("count", shoppingmapper.selectCount(model));
		return new JSONObject(map).toString();
	}
	
	public String commodity(Commodity_InformationModel model) {
		Map<String, Object> map = new HashMap<>();
		map.put("commodity", mapper.selectAll(model));
		return new JSONObject(map).toString();
	}
	
	@Transactional(rollbackFor = Exception.class)
	public String insert(ShoppingCartModel model) {
		ShoppingCartModel no = new ShoppingCartModel();
		no.setCommodity_code(model.getCommodity_code());
		no.setUsercode(model.getUsercode());
		List<ShoppingCartModel> list = shoppingmapper.selectAll(no);
		if(list.size()>0) {
			model.setNum(String.valueOf(Integer.parseInt(list.get(0).getNum())+Integer.parseInt(model.getNum())));
			return shoppingmapper.updateModel(model)>0?"success":"err";
		}else {
			return shoppingmapper.insert(model)>0?"success":"err";
		}
	}
	
	public String sel(String[] id) {
		List<ShoppingCartModel> list = new ArrayList<>();
		for(String ss : id) {
			ShoppingCartModel model = new ShoppingCartModel();
			model.setId(Integer.parseInt(ss));
			list.add(shoppingmapper.selectAllModel(model));
		}
		Map<String, Object> map = new HashMap<>();
		map.put("order", list);
		return new JSONObject(map).toString();
	}
	
	@Transactional(rollbackFor = Exception.class)
	public String del(String[] id) {
		int a = 0;
		for(String ss : id) {
			a = shoppingmapper.delete(Integer.parseInt(ss));
		}
		return a>0?"success":"err";
	}
	
//	public static void main(String[] args) {
//		List<String> list = Arrays.asList();
//	}

}
