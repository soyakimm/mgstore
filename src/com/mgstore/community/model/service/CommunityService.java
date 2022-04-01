package com.mgstore.community.model.service;

import org.apache.ibatis.session.SqlSession;
import static com.mgstore.common.mybatis.Template.getSqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mgstore.common.paging.Pagenation;
import com.mgstore.common.paging.SelectCriteria;
import com.mgstore.community.model.dao.CommunityDAO;
import com.mgstore.community.model.dto.CommunityPostImageDTO;
import com.mgstore.community.model.dto.CommunityWriteDTO;
import com.mgstore.product.model.dto.ProductDTO;

public class CommunityService {
	
	private final CommunityDAO communityDAO;
	
	public CommunityService() {
		communityDAO = new CommunityDAO();
	}
	
	
	/*게시물 삽입 메소드*/
	public int insertWrite(CommunityWriteDTO newWrite) {
		
		SqlSession session = getSqlSession();
		
		int result = CommunityDAO.insertWrite(session, newWrite);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 게시물 전체 조회용 메소드 */
	public Map<String, Object> selectWriteList(int pageNo, Map<String, String> searchMap) {
		
		SqlSession session = getSqlSession();
		
		/*게시물 페이징 처리를 하려면 게시물의 전체 갯수를 알아야한다.*/
		int totalCount = communityDAO.selectTotalCount(session, searchMap);
		System.out.println("totalBoardCount : " + totalCount);
		
		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 5;		
		/* 한 번에 보여질 페이징 버튼의 갯수 */
		int buttonAmount = 5;
		
		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
		SelectCriteria selectCriteria = null;
		
		if(searchMap.get("searchCondition") != null && !"".equals(searchMap.get("searchCondition"))) {
			/*검색 값이 있는 경우 페이지의 번호, 게시글의 전체수, 한번에 보여줄 게시물 수, 페이징 버튼의 수, 검색할 조건을 넘긴다.*/
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, searchMap.get("searchCondition"), searchMap.get("searchValue"));
		} else {
			/*검색 값이 없는 경우 페이지의 번호, 게시글의 전체수, 한번에 보여줄 게시물 수, 페이징 버튼의 수를 넘긴다.*/
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}
		
		System.out.println(selectCriteria);
		
		List<CommunityWriteDTO> communityList = communityDAO.selectWriteList(session, selectCriteria);
		
		/*boardList랑 selectCriteria 둘다 return 해야 하는데 리턴은 하나밖에 못하므로
		 * Map으로 가져감*/
		Map<String, Object> returnMap = new HashMap<>();
		returnMap.put("communityList", communityList);
		returnMap.put("selectCriteria", selectCriteria);
		
		session.close();
		
		return returnMap;
	}


	/*썸네일 게시판 삽입 메소드*/
	public int insertThumbnail(CommunityWriteDTO thumbnail) {
		
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* 최종적으로 반환할 result 선언 */
		int result = 0;
		
		/* 먼저 board 테이블부터 thumbnail 내용부터 insert 한다. */
		int communityResult = communityDAO.insertThumbnailContent(session, thumbnail);
		
		System.out.println("boardResult : " + thumbnail);
	
		/* Attachment 리스트를 불러온다. */
		List<CommunityPostImageDTO> fileList = thumbnail.getPostImgList();
		
		/* fileList에 boardNo값을 넣는다. */
		for(int i = 0; i < fileList.size(); i++) {
			fileList.get(i).setPostId(thumbnail.getPostId());
		}
		
		/* Attachment 테이블에 list size만큼 insert 한다. */
		int postImgResult = 0;
		for(int i = 0; i < fileList.size(); i++) {
			postImgResult += communityDAO.insertPostResult(session, fileList.get(i));
		}
		
		/* 모든 결과가 성공이면 트랜젝션을 완료한다. */
		if(communityResult > 0 && postImgResult == fileList.size()) {
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

	/* 썸네일 게시판 조회용 메소드 */
	public List<CommunityWriteDTO> selectThumbnailList() {
		
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* List 조회 */
		List<CommunityWriteDTO> thumbnailList = communityDAO.selectThumbnailList(session);
		
		/* Connection 닫기 */
		session.close();
		
		/* 조회 결과 반환 */
		return thumbnailList;
	}


	public CommunityWriteDTO selectOneThumbnailWrite(int postId) {
		
		SqlSession session = getSqlSession();
		
		CommunityWriteDTO thumbnail= null;
		
		/*조회수*/
		int result = communityDAO.incrementBoardCount(session, postId);
		
		if(result > 0) {
			thumbnail = communityDAO.selectOneThumbnailBoard(session, postId);
			
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

	/*사진 없는 게시판 상세 페이지*/
	public CommunityWriteDTO selectOneWrite(int postId) {
		
		SqlSession session = getSqlSession();
		
		CommunityWriteDTO write= null;
		
		/*조회수*/
		int result = communityDAO.incrementWriteCount(session, postId);
		
		if(result > 0) {
			write = communityDAO.selectOneWrite(session, postId);
			
			if(write != null) {
				session.commit();
			} else {
				session.rollback();
			}
		} else {
			session.rollback();
		}
		
		session.close();
		
		return write;
	}

	/*사진 없는 게시글 수정*/
	public int updateFree(CommunityWriteDTO updateWrite) {
		
		SqlSession session = getSqlSession();
		
		int result = communityDAO.updateWrite(session, updateWrite);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/*자유게시판 삭제*/
	public int deleteFree(int postId) {
		
		SqlSession session = getSqlSession();
		
		int result = communityDAO.deleteFree(session, postId);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	
	/*커뮤니티 BEST 조회*/
	public List<CommunityWriteDTO> selectBestList() {
		
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* List 조회 */
		List<CommunityWriteDTO> thumbnailList = communityDAO.selectBestList(session);
		
		/* Connection 닫기 */
		session.close();
		
		/* 조회 결과 반환 */
		return thumbnailList;
		
	}

	/*멍개일상게시판 삭제(게시글 상태 바꿈)*/
	public int deleteThumbnail(int postId) {
		
		SqlSession session = getSqlSession();
		
		int result = communityDAO.deleteThumbnail(session, postId);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/*멍개일상게시판 삭제(사진 상태 바꿈)*/
	public int deleteThumbnails(int postId) {
		
		SqlSession session = getSqlSession();
		
		int result = communityDAO.deleteThumbnails(session, postId);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/*커뮤니티 메인 내가 쓴 게시판 최신 순 조회*/
	public List<CommunityWriteDTO> selectNewList() {
		
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* List 조회 */
		List<CommunityWriteDTO> newList = communityDAO.selectNewList(session);
		
		/* Connection 닫기 */
		session.close();
		
		/* 조회 결과 반환 */
		return newList;
		
	}

	/*상품 사진 조회수 조회*/
	public List<ProductDTO> selectProductList() {
		
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* List 조회 */
		List<ProductDTO> productList = communityDAO.selectProductList(session);
		
		/* Connection 닫기 */
		session.close();
		
		/* 조회 결과 반환 */
		return productList;
		
		
	}

}
