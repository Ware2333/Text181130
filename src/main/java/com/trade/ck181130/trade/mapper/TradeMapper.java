package com.trade.ck181130.trade.mapper;

import java.util.List;

import com.trade.ck181130.trade.model.TradeModel;

public interface TradeMapper {
	void insert(TradeModel trademodel);

	int delete(Object id);

	int deleteModel(TradeModel trademodel);

	int update(TradeModel trademodel);

	int updateTradeModel(TradeModel trademodel);

	TradeModel selectId(TradeModel trademodel);

	List<TradeModel> selectAll(TradeModel trademodel);

	List<TradeModel> selectModel(TradeModel trademodel);

	int selectCount(TradeModel trademodel);
}
