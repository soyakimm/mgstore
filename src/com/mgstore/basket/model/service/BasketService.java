package com.mgstore.basket.model.service;

import static com.mgstore.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.mgstore.basket.model.dao.BasketDAO;
import com.mgstore.basket.model.dto.BasketDTO;

public class BasketService {
	
	private final BasketDAO basketDAO;
	
	public BasketService() {
		basketDAO = new BasketDAO();
	}
	
	public int insertBasket(BasketDTO requestBasket) {
		SqlSession session = getSqlSession();
		
		int result = basketDAO.insertBasket(session, requestBasket);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 장바구니 수량 수정 (후순위) */
//	public BasketDTO modifyBasket(BasketDTO requestBasket, int basketAmount) {
//		
//		SqlSession session = getSqlSession();
//		int result = 0;
//		
//		String encPwd = memberDAO.selectEncryptedPwd(session, requestMember);
//		
//		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//		/* 비밀번호 수정 요청한 원문 비밀번호와 저장되어있는 암호화된 비밀번호가 일치하는지 확인한다. */
//		if(passwordEncoder.matches(requestMember.getPwd(), encPwd)) {
//			/* 비밀번호가 일치하는 경우에만 새로 입력 된 비밀번호로 수정한다. */
//			requestMember.setPwd(memberPwd);
//			result = memberDAO.updateMemberPassword(session, requestMember);
//		}
//		
//		if(result > 0) {
//			session.commit();
//		} else {
//			session.rollback();
//		}
//		
//		session.close();
//		
//		return result;
////	}		
//	
//	public int removeBasket(int )
	

}
