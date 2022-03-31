package com.mgstore.myshopping.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.payment.model.dao.OrderDAO;
import com.mgstore.payment.model.dto.OrderDTO;
import static com.mgstore.common.mybatis.Template.getSqlSession;

public class OrderHistoryService {

	public List<OrderDTO> selectAllHistoryList(String userId) {
		
		SqlSession session = getSqlSession();
		
		List<OrderDTO> orderHistoryList = new OrderDAO().selectAllHistoryList(session, userId);
		
		session.close();
		
		return orderHistoryList;
	}

	/*주문 상세조회*/
	public OrderDTO selectHistoryDetail(OrderDTO order) {
		
		SqlSession session = getSqlSession();
		
		OrderDTO historyDetail = new OrderDAO().selectHistoryDetail(session, order);
		
		session.close();
		
		return historyDetail;
	}

}
