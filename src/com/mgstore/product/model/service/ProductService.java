package com.mgstore.product.model.service;

import static com.mgstore.common.mybatis.Template.getSqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.common.paging.Pagenation;
import com.mgstore.common.paging.SelectCriteria;
import com.mgstore.product.model.dao.ProductDAO;
import com.mgstore.product.model.dto.ProImgDTO;
import com.mgstore.product.model.dto.ProductDTO;



public class ProductService {
	
	private final ProductDAO productDAO;
	
	public ProductService() {
		productDAO = new ProductDAO();
	}


	public Map<String, Object> selectThumbnailList(int pageNo, Map<String, String> searchMap) {
		
		SqlSession session = getSqlSession();
		
		int totalCount = productDAO.selectTotalCount(session, searchMap);
		System.out.println("totalProductCount : " + totalCount);
		
		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 12;		
		/* 한 번에 보여질 페이징 버튼의 갯수 */
		int buttonAmount = 5;
		
		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
		SelectCriteria selectCriteria = null;
		
		selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		
		System.out.println(selectCriteria);
		
		List<ProductDTO> productList = ProductDAO.selectThumbnailList(session, selectCriteria);
		
		Map<String, Object> returnMap = new HashMap<>();
		returnMap.put("productList", productList);
		returnMap.put("selectCriteria", selectCriteria);
		
		session.close();
		
		return returnMap;

	}

	public List<ProductDTO> selectAllThumbnailList() {
		
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* List 조회 */
		List<ProductDTO> thumbnailList = productDAO.selectAllThumbnailList(session);
		
		/* Connection 닫기 */
		session.close();
		
		/* 조회 결과 반환 */
		return thumbnailList;

	}

	public int insertThumbnail(ProductDTO thumbnail) {
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* 최종적으로 반환할 result 선언 */
		int result = 0;
		
		/* 먼저 board 테이블부터 thumbnail 내용부터 insert 한다. */
		int productResult = productDAO.insertThumbnailContent(session, thumbnail);
		
		System.out.println("productResult : " + thumbnail);
	
		/* Attachment 리스트를 불러온다. */
		List<ProImgDTO> fileList = thumbnail.getProImgList();
		
		/* fileList에 boardNo값을 넣는다. */
		for(int i = 0; i < fileList.size(); i++) {
			fileList.get(i).setRefProId(thumbnail.getProId());
		}
		
		/* Attachment 테이블에 list size만큼 insert 한다. */
		int proImgResult = 0;
		for(int i = 0; i < fileList.size(); i++) {
			proImgResult += productDAO.insertProImg(session, fileList.get(i));
		}
		
		/* 모든 결과가 성공이면 트랜젝션을 완료한다. */
		if(productResult > 0 && proImgResult == fileList.size()) {
			session.commit();
			result = 1;
		} else {
			session.rollback();
		}
		
		/* Connection을 닫는다. */
		session.close();
		
		/* 수행 결과를 리턴한다. */
		return result;

	}

	public ProductDTO selectOneThumbnailProduct(int id) {
		
		SqlSession session = getSqlSession();
		
		ProductDTO thumbnail= null;
		
		int result = productDAO.incrementProductCount(session, id);
		
		if(result > 0) {
			thumbnail = productDAO.selectOneThumbnailProduct(session, id);
			
			if(thumbnail != null) {
				session.commit();
			} else {
				session.rollback();
			}
		} else {
			session.rollback();
		}
		
		session.close();
		
		return thumbnail;

	}



	
	
	
//	private final ProductDAO productDAO;
//	
//	public ProductService() {
//		productDAO = new ProductDAO();
//	}
//
//	public List<ProductDTO> selectProductList() {
//		/* Connection 생성 */
//		SqlSession session = getSqlSession();
//		
//		/* List 조회 */
//		List<ProductDTO> productList = ProductDAO.selectProductList(session);
//		
//		/* Connection 닫기 */
//		session.close();
//		
//		/* 조회 결과 반환 */
//		return productList;
//	}
//
//	public ProductDTO selectOneProList(int no) {
//
//		SqlSession session = getSqlSession();
//		
//		ProductDTO product= null;
//		
//		int result = productDAO.incrementProductCount(session, no);
//		
//		if(result > 0) {
//			product = productDAO.selectOneThumbnailProduct(session, no);
//			
//			if(product != null) {
//				session.commit();
//			} else {
//				session.rollback();
//			}
//		} else {
//			session.rollback();
//		}
//		
//		session.close();
//		
//		return product;
//	}

}
