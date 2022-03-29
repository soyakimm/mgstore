package com.mgstore.payment.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.product.model.dto.ProductDTO;

public class PaymentDAO {

	public List<ProductDTO> selectPaymentList(SqlSession session, int proId) {
		
		return session.selectList("PaymentDAO.selectPaymentList", proId);
		
	}

}
