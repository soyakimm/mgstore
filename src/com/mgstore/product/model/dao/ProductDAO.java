package com.mgstore.product.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.common.paging.SelectCriteria;
import com.mgstore.product.model.dto.ProImgDTO;
import com.mgstore.product.model.dto.ProductDTO;

public class ProductDAO {
	
	public int selectTotalCount(SqlSession session, Map<String, String> searchMap) {
		
		return session.selectOne("ProductDAO.selectTotalCount", searchMap);
	}

	
	public List<ProductDTO> selectProList(SqlSession session, SelectCriteria selectCriteria) {
		
		return session.selectList("ProductDAO.selectProList", selectCriteria);
	}


	public int insertProduct(SqlSession session, ProductDTO newProduct) {
		
		return session.insert("ProductDAO.insertProduct", newProduct);
	}
	
	/* 썸네일게시판 목록 조회용 메소드 */
	public List<ProductDTO> selectThumbnailList(SqlSession session) {
		
		return session.selectList("ProductDAO.selectThumbnailList");
	}
	
	/* 썸네일 제목과 내용 insert용 메소드 */
	public int insertThumbnailContent(SqlSession session, ProductDTO thumbnail) {
		
		return session.insert("ProductDAO.insertThumbnailContent", thumbnail);
	}
	
	/* proImg 테이블에 insert */
	public int insertProImg(SqlSession session, ProImgDTO file) {
		
		return session.insert("ProductDAO.insertProImg", file);
	}
	
	public int incrementProductCount(SqlSession session, int no) {
		
		return session.update("ProductDAO.incrementProductCount", no);
	}

	public ProductDTO selectOneThumbnailProduct(SqlSession session, int no) {
		
		return session.selectOne("ProductDAO.selectOneThumbnailProduct", no);
	}

}

