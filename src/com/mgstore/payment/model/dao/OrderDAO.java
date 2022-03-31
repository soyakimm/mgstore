package com.mgstore.payment.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.payment.model.dto.OrderDTO;

public class OrderDAO {

	/*order 테이블에 삽입*/
	public int insertOrder(SqlSession session, OrderDTO orderList) {
		
		return session.insert("OrderDAO.insertOrder", orderList);
	}

	/*orderDetail 테이블에 삽입*/
	public int insertOrderDetail(SqlSession session, OrderDTO orderList) {
		
		return session.insert("OrderDAO.insertOrderDetail", orderList);
	}

	/*payment 테이블에 삽입*/
	public int insertPayment(SqlSession session, OrderDTO orderList) {
		
		return session.insert("OrderDAO.insertPayment", orderList);
	}

	/*주문내용 전체 조회*/
	public List<OrderDTO> selectAllHistoryList(SqlSession session, String userId) {
		
		return session.selectList("OrderDAO.selectAllHistoryList", userId);
	}

	public OrderDTO selectHistoryDetail(SqlSession session, OrderDTO order) {
		
		return session.selectOne("OrderDAO.selectHistoryDetail", order);
	}


}
