package com.mgstore.cart.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.cart.model.dto.CartDTO;
import com.mgstore.product.model.dto.ProImgDTO;

public class CartDAO {

	/* 목록 조회용 메소드 */
	public static List<CartDTO> selectCartList(SqlSession session) {
		
		return session.selectList("CartDAO.selectCartList");
	}
	
	public int insertCart(SqlSession session, CartDTO thumbnail) {
		
		return session.insert("CartDAO.insertCart", thumbnail);
	}
	
	
	



	

}
