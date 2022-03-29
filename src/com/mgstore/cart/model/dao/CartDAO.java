package com.mgstore.cart.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.cart.model.dto.CartDTO;

public class CartDAO {

	/* 목록 조회용 메소드 */
	public static List<CartDTO> selectCartList(SqlSession session) {
		
		return session.selectList("CartDAO.selectCartList");
	}


	

}
