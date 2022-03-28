package com.mgstore.myshopping.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.product.model.dto.ProLikeDTO;

public class MyshoppingDAO {

	/* 위시리스트 조회 */
	public List<ProLikeDTO> selectWishList(SqlSession session) {
		
		return session.selectList("MyshoppingDAO.selectWishList");
	}

	public int deleteWishList(SqlSession session, ProLikeDTO proList) {
		
		return session.delete("MyshoppingDAO.deleteWishList");
	}

}
