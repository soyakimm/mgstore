package com.mgstore.product.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.common.paging.SelectCriteria;
import com.mgstore.product.model.dto.ProImgDTO;
import com.mgstore.product.model.dto.ProductDTO;

public class ProductDAO {
	
	/* 페이징 */
	public List<ProductDTO> selectProductList(SqlSession session, SelectCriteria selectCriteria) {
		
		return session.selectList("ProductDAO.selectBoardList", selectCriteria);
	}
	
	/* 상품게시판 목록 조회 */
//	public List<ProductDTO> selectThumbnailList(SqlSession session) {
//		
//		return session.selectList("ProductDAO.selectThumbnailList");
//	}
	
	/* 썸네일 제목과 내용 insert용 메소드 */
	public int insertThumbnailContent(SqlSession session, ProductDTO thumbnail) {
		
		return session.insert("ProductDAO.insertThumbnailContent", thumbnail);
	}
	
	/* Attachment 테이블에 insert */
	public int insertProImg(SqlSession session, ProImgDTO file) {
		
		return session.insert("ProductDAO.insertProImg", file);
	}
	

	public ProductDTO selectOneThumbnailProduct(SqlSession session, int id) {
		
		return session.selectOne("ProductDAO.selectOneThumbnailProduct", id);
	}

	public static List<ProductDTO> selectThumbnailList(SqlSession session, SelectCriteria selectCriteria) {
		return session.selectList("ProductDAO.selectThumbnailList");
	}
	
	public int selectTotalCount(SqlSession session, Map<String, String> searchMap) {
		
		return session.selectOne("ProductDAO.selectTotalCount", searchMap);
	}

	public int incrementProductCount(SqlSession session, int id) {
		return 0;
	}

	public List<ProductDTO> selectAllThumbnailList(SqlSession session) {
		return session.selectList("ProductDAO.selectAllThumbnailList");
	}

	
//	public int incrementProductCount(SqlSession session, int id) {
//		return 0;
//	}
	
	
	
}

