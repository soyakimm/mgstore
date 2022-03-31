package com.mgstore.payment.model.service;

import static com.mgstore.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.payment.model.dao.OrderDAO;
import com.mgstore.payment.model.dto.OrderDTO;
public class OrderService {
	
	private final OrderDAO orderDAO;
	
	public OrderService() {
		orderDAO = new OrderDAO();
	}

	public int insertOrder(OrderDTO orderList) {
		
		SqlSession session = getSqlSession();
		
		int result = orderDAO.insertOrder(session, orderList);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}

		return result;
	}

	public int insertOrderDetail(OrderDTO orderList) {
		
		SqlSession session = getSqlSession();
		
		int result = orderDAO.insertOrderDetail(session, orderList);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}

		return result;
	}

	public int insertPayment(OrderDTO orderList) {

		SqlSession session = getSqlSession();
		
		int result = orderDAO.insertPayment(session, orderList);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}

		return result;
	}


}
