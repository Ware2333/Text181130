package com.trade.ck181130.util.mapper;

import java.util.List;

public interface MapperUtil<T> {
    int insert(T model);
	
	int delete(Object id);
	
	int deleteModel(T model);
	
	int update(T model);
	
	int updateModel(T model);
	
	T selectId(T model);
	
	List<T> selectAll(T model);
	
	List<T> selectModel(T model);
	
	int selectCount (T model);
	
	T selectAllModel(T model);
}