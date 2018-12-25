package com.trade.ck181130.addinfo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trade.ck181130.addinfo.mapper.AddInfoMapper;
import com.trade.ck181130.addinfo.model.AddInfoModel;
import com.trade.ck181130.util.BaseService.ServiceUtil;
import com.trade.ck181130.util.mapper.MapperUtil;

@Service
public class AddInfoService extends ServiceUtil<AddInfoModel>{
	@Autowired
	private AddInfoMapper<AddInfoModel> mapper;
	@Override
	public MapperUtil<AddInfoModel> getmapper(){
		return mapper;
	}

}
