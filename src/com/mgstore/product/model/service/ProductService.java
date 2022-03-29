package com.mgstore.product.model.service;

import static com.mgstore.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.product.model.dao.ProductDAO;
import com.mgstore.product.model.dto.ProductDTO;



public class ProductService {
	
	private final ProductDAO productDAO;
	
	public ProductService() {
		productDAO = new ProductDAO();
	}

	public List<ProductDTO> selectProductList() {
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* List 조회 */
		List<ProductDTO> productList = ProductDAO.selectProductList(session);
		
		/* Connection 닫기 */
		session.close();
		
		/* 조회 결과 반환 */
		return productList;
	}

	public ProductDTO selectOneProList(int no) {

		SqlSession session = getSqlSession();
		
		ProductDTO product= null;
		
		int result = productDAO.incrementProductCount(session, no);
		
		if(result > 0) {
			product = productDAO.selectOneThumbnailProduct(session, no);
			
			if(product != null) {
				session.commit();
			} else {
				session.rollback();
			}
		} else {
			session.rollback();
		}
		
		session.close();
		
		return product;
	}

}
