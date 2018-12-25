package com.trade.ck181130.commcodity_img.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trade.ck181130.commcodity_img.mapper.Commodity_imgMapper;
import com.trade.ck181130.commcodity_img.model.Commodity_imgModel;
import com.trade.ck181130.util.BaseService.ServiceUtil;
import com.trade.ck181130.util.isEmpty.IsEmpty;
import com.trade.ck181130.util.mapper.MapperUtil;

@Service("commodity_imgService")
public class Commodity_imgService extends ServiceUtil<Commodity_imgModel> {
	@Autowired
	private Commodity_imgMapper<Commodity_imgModel> commodity_imgmapper;

	@Override
	public MapperUtil<Commodity_imgModel> getmapper() {
		return commodity_imgmapper;
	}

	public String selectall(Commodity_imgModel model) {
		List<Commodity_imgModel> list = commodity_imgmapper.selectAll(model);
		Map<String, Object> map = new HashMap<>();
		map.put("img", list);
		return new JSONObject(map).toString();
	}

	public String log(Commodity_imgModel model) {
		Commodity_imgModel ni = new Commodity_imgModel();
		ni.setImg_type("2");
		if (!IsEmpty.isEmpty(commodity_imgmapper.selectAll(ni))) {
			ni.setCommodity_code(model.getCommodity_code());
			commodity_imgmapper.updateModel(ni);
			model.setImg_type("1");
			model.setImg_type2("2");
			return commodity_imgmapper.updateModel(model) > 0 ? "success" : "err";
		} else {
			model.setImg_type("1");
			return commodity_imgmapper.updateModel(model) > 0 ? "success" : "err";
		}
	}
}
