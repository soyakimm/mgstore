package com.mgstore.product.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.common.paging.SelectCriteria;
import com.mgstore.product.model.dto.ProImgDTO;
import com.mgstore.product.model.dto.ProductDTO;

public class ProductDAO {
	
	/* 목록 조회용 메소드 */
	public static List<ProductDTO> selectProductList(SqlSession session) {
		
		return session.selectList("ProductDAO.selectProductList");
	}

	public int incrementProductCount(SqlSession session, int no) {
		
		return session.update("ProductDAO.incrementProductCount", no);
	}

	public ProductDTO selectOneThumbnailProduct(SqlSession session, int no) {
		
		return session.selectOne("ProductDAO.selectOneThumbnailProduct", no);
	}
}

