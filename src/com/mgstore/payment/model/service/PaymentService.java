package com.mgstore.payment.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.payment.model.dao.PaymentDAO;
import com.mgstore.product.model.dto.ProductDTO;
import static com.mgstore.common.mybatis.Template.getSqlSession;

public class PaymentService {
	
	private final PaymentDAO paymentDAO;
	
	public PaymentService() {
		paymentDAO = new PaymentDAO();
	}
	

	public List<ProductDTO> selectPaymentList(int proId) {
		SqlSession session = getSqlSession();
		
		List<ProductDTO> paymentList = paymentDAO.selectPaymentList(session, proId);
		
		session.close();
		
		return paymentList;
	}

}
