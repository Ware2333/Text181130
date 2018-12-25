package com.trade.ck181130.util.BaseService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;

import com.trade.ck181130.util.isEmpty.IsEmpty;
import com.trade.ck181130.util.mapper.MapperUtil;
import com.trade.ck181130.util.page.PageModel;

public abstract class ServiceUtil<T extends PageModel> {

	public abstract MapperUtil<T> getmapper();

	public String insert(T model) {
		return getmapper().insert(model) > 0 ? "success" : "err";
	}

	public String delete(T model) {
		return getmapper().delete(model) > 0 ? "success" : "err";
	}

	public String deleteModel(T model) {
		return getmapper().deleteModel(model) > 0 ? "success" : "err";
	}

	public String update(T model) {
		return getmapper().update(model) > 0 ? "success" : "err";
	}

	public String updateModel(T model) {
		return getmapper().updateModel(model) > 0 ? "success" : "err";
	}

	public T delectId(T model) {
		return getmapper().selectId(model);
	}

	public List<T> selectAll(T model) {
		return getmapper().selectAll(model);
	}
	
	public String selectAllModel(T model) {
		return new JSONObject(getmapper().selectAllModel(model)).toString();
	}
	
	public String page(T model) {
		Map<String, Object> map = new HashMap<>();
		map.put("count", getmapper().selectCount(model));
		map.put("page", getmapper().selectModel(model));
		return new JSONObject(map).toString();
	}

	public String Verification(T usermodel) {
		return IsEmpty.isEmpty(getmapper().selectAll(usermodel)) == true ? "err" : "success";
	}

	public int selectCount(T model) {
		return getmapper().selectCount(model);
	}
	
}
