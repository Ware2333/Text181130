package com.trade.ck181130.address.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trade.ck181130.address.mapper.AddressMapper;
import com.trade.ck181130.address.model.AddressModel;
import com.trade.ck181130.util.BaseService.ServiceUtil;
import com.trade.ck181130.util.mapper.MapperUtil;

@Service("addressService")
public class AddressService extends ServiceUtil<AddressModel> {
	@Autowired
	private AddressMapper<AddressModel> addressmapper;
	@Override
	public MapperUtil<AddressModel> getmapper(){
		return addressmapper;
	}
	
}
