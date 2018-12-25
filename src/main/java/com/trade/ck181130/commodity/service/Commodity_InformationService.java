package com.trade.ck181130.commodity.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trade.ck181130.commodity.mapper.Commodity_Information;
import com.trade.ck181130.commodity.model.Commodity_InformationModel;
import com.trade.ck181130.commodity_classification.mapper.CommodityMapper;
import com.trade.ck181130.commodity_classification.model.CommodityModel;
import com.trade.ck181130.util.BaseService.ServiceUtil;
import com.trade.ck181130.util.isEmpty.IsEmpty;
import com.trade.ck181130.util.mapper.MapperUtil;

@Service("commodity_InformationService")
public class Commodity_InformationService extends ServiceUtil<Commodity_InformationModel> {

	@Autowired
	private Commodity_Information<Commodity_InformationModel> commoditymapper;
	@Autowired
	private CommodityMapper<CommodityModel> cmapper;

	@Override
	public MapperUtil<Commodity_InformationModel> getmapper() {
		return commoditymapper;
	}

	public String page(Commodity_InformationModel commoditymodel) {
		if (!IsEmpty.isempty(commoditymodel.getCommodity_name())) {
			commoditymodel.setCommodity_name("%" + commoditymodel.getCommodity_name() + "%");
		}
		if (!IsEmpty.isempty(commoditymodel.getCommodity_code())) {
			commoditymodel.setCommodity_code("%" + commoditymodel.getCommodity_code() + "%");
		}
		HashMap<String, Object> map = new HashMap<>();
		map.put("count", commoditymapper.selectCount(commoditymodel));
		map.put("commodity", commoditymapper.selectModel(commoditymodel));
		return new JSONObject(map).toString();
	}

	public String selectclass(CommodityModel commoditymodel, HttpSession session) {
		HashMap<String, Object> map = new HashMap<>();
		List<CommodityModel> list = cmapper.selectAll(commoditymodel);
		map.put("commodity", list);
		return new JSONObject(map).toString();
	}

	public String insert(Commodity_InformationModel commoditymodel) {
		Commodity_InformationModel ni = new Commodity_InformationModel();
		ni.setCommodity_code(commoditymodel.getCommodity_code());
		if (IsEmpty.isEmpty(commoditymapper.selectAll(ni))) {
			return commoditymapper.insert(commoditymodel) > 0 ? "success" : "err";
		} else {
			return "ocl";
		}
	}

	public String commoditymodel(Commodity_InformationModel commoditymodel,String[] commodity_code,String[] commodity_num) {
		Commodity_InformationModel no = new Commodity_InformationModel();
		int a = 0;
		for(int i = 0 ; i < commodity_num.length;i++) {
			no.setCommodity_code(commodity_code[i]);
			List<Commodity_InformationModel> list = commoditymapper.selectAll(no);
			commoditymodel.setCommodity_code(commodity_code[i]);
			commoditymodel.setCommodity_num(String.valueOf(Integer.parseInt(list.get(0).getCommodity_num())-Integer.parseInt(commodity_num[i])));
			a = commoditymapper.updateModel(commoditymodel);
		}
		return a>0?"success":"err";
	}


}
