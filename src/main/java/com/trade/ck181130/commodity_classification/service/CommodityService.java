package com.trade.ck181130.commodity_classification.service;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.trade.ck181130.commodity_classification.mapper.CommodityMapper;
import com.trade.ck181130.commodity_classification.model.CommodityModel;
import com.trade.ck181130.util.BaseService.ServiceUtil;
import com.trade.ck181130.util.isEmpty.IsEmpty;
import com.trade.ck181130.util.mapper.MapperUtil;
@Service("commodityService")
public class CommodityService extends ServiceUtil<CommodityModel> {
	
	@Autowired
	private CommodityMapper<CommodityModel> commoditymapper;
	@Override
	public MapperUtil<CommodityModel> getmapper(){
		return commoditymapper;
	}
	
	public String page(CommodityModel commoditymodel) {
		if(!IsEmpty.isempty(commoditymodel.getName())) {
			commoditymodel.setName("%"+commoditymodel.getName()+"%");
		}
		if(!IsEmpty.isempty(commoditymodel.getCode())) {
			commoditymodel.setCode("%"+commoditymodel.getCode()+"%");
		}
		HashMap<String, Object> map = new HashMap<>();
		map.put("count", commoditymapper.selectCount(commoditymodel));
		map.put("commodity", commoditymapper.selectModel(commoditymodel));
		return new JSONObject(map).toString();
	}
	
	@Transactional(rollbackFor = Exception.class)
	public String insert(CommodityModel commoditymodel) {
		CommodityModel ni = new CommodityModel();
		ni.setCode(commoditymodel.getCode());
		if(IsEmpty.isEmpty(commoditymapper.selectAll(ni))) {
			return commoditymapper.insert(commoditymodel)>0?"success":"err";
		}else {
			return "repeat";
		}
	}
	
	@Transactional(rollbackFor = Exception.class)
	public String delete(CommodityModel commoditymodel) {
		CommodityModel ni = new CommodityModel();
		ni.setParentcode(commoditymodel.getCode());
		if(IsEmpty.isEmpty(commoditymapper.selectAll(ni))) {
			return commoditymapper.deleteModel(commoditymodel)>0?"success":"err";
		}else {
			return "Occupy";
		}
	}
	
	public String selectall(CommodityModel model) {
		Map<String, Object> map = new HashMap<>();
		map.put("commodity_class", commoditymapper.selectAll(model));
		return new JSONObject(map).toString();
	}
}
