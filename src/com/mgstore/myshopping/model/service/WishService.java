package com.mgstore.myshopping.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.myshopping.model.dao.MyshoppingDAO;
import com.mgstore.product.model.dto.ProLikeDTO;

import static com.mgstore.common.mybatis.Template.getSqlSession;

public class WishService {

	private final MyshoppingDAO myshoppingDAO;
	
	public WishService() {
		myshoppingDAO = new MyshoppingDAO();
	}

	/* 좋아요 넘어온 리스트 */
	public List<ProLikeDTO> selectWishList() {
		
		SqlSession session = getSqlSession();
		
		List<ProLikeDTO> wishList = myshoppingDAO.selectWishList(session);
		
		session.close();
		
		return wishList;
	}

	/*위시리스트 삭제*/
	public int deleteWishList(ProLikeDTO product) {
		SqlSession session = getSqlSession();
		
		int result = myshoppingDAO.deleteWishList(session, product);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
				
		session.close();
		
		return result;
	}
	
	
	
}
