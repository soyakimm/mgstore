package com.mgstore.community.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.common.paging.SelectCriteria;
import com.mgstore.community.model.dto.CommunityPostImageDTO;
import com.mgstore.community.model.dto.CommunityWriteDTO;
import com.mgstore.product.model.dto.ProductDTO;

public class CommunityDAO {
	
	/*사진 없는 게시글 삽입*/
	public static int insertWrite(SqlSession session, CommunityWriteDTO newWrite) {
		
		return session.insert("CommunityDAO.insertWrite", newWrite);
	}
	
	/*게시글의 수를 알아온다.*/                            
	public int selectTotalCount(SqlSession session, Map<String, String> searchMap) {
		
		return session.selectOne("CommunityDAO.selectTotalCount", searchMap);
	}

	public List<CommunityWriteDTO> selectWriteList(SqlSession session, SelectCriteria selectCriteria) {
		
		return session.selectList("CommunityDAO.selectWriteList", selectCriteria);
	}
	
	/*썸네일이 존재하는 게시물 삽입*/
	public int insertThumbnailContent(SqlSession session, CommunityWriteDTO thumbnail) {
		
		return session.insert("CommunityDAO.insertThumbnailContent", thumbnail);
	}
	
	/*sql 테이블에 insert*/
	public int insertPostResult(SqlSession session, CommunityPostImageDTO file) {
		
		return session.insert("CommunityDAO.insertPostResult", file);
	}
	
	/* 썸네일게시판 목록 조회용 메소드 */
	public List<CommunityWriteDTO> selectThumbnailList(SqlSession session) {
		
		return session.selectList("CommunityDAO.selectThumbnailList");
	}
	
	/*조회수*/
	public int incrementBoardCount(SqlSession session, int postId) {
		
		return session.update("CommunityDAO.incrementBoardCount", postId);
	}
	
	/*상세 글 하나 가져오기*/
	public CommunityWriteDTO selectOneThumbnailBoard(SqlSession session, int postId) {
		
		return session.selectOne("CommunityDAO.selectOneThumbnailBoard", postId);
		
	}
	/*사진없는 게시판 상세 보기*/
	public CommunityWriteDTO selectOneWrite(SqlSession session, int postId) {
		
		return session.selectOne("CommunityDAO.selectOneWrite", postId);
	}
	
	/*사진 없는 게시판 조회수*/
	public int incrementWriteCount(SqlSession session, int postId) {
		
		return session.update("CommunityDAO.incrementWriteCount", postId);
	}
	
	/*사진 없는 게시글 수정*/
	public int updateWrite(SqlSession session, CommunityWriteDTO updateWrite) {
		
		return session.update("CommunityDAO.updateWrite", updateWrite);
	}
	
	/*자유게시판 삭제*/
	public int deleteFree(SqlSession session, int postId) {
		
		return session.update("CommunityDAO.deleteFree", postId);
	}
	
	/*커뮤니티 메인 BEST 조회*/
	public List<CommunityWriteDTO> selectBestList(SqlSession session) {
		
		return session.selectList("CommunityDAO.selectBestList");
		
	}
	
	/*멍개일상 게시판 삭제(게시글)*/
	public int deleteThumbnail(SqlSession session, int postId) {
		
		return session.update("CommunityDAO.deleteThumbnail", postId);
	}
	
	/*멍개일상 게시판 삭제(사진)*/
	public int deleteThumbnails(SqlSession session, int postId) {
		
		return session.update("CommunityDAO.deleteThumbnails", postId);
		
	}
	
	/*커뮤니티 메인 내가 쓴 게시판 최신 순 조회*/
	public List<CommunityWriteDTO> selectNewList(SqlSession session) {
		
		return session.selectList("CommunityDAO.selectNewList");
	}
	
	/*상품 사진 조회수 조회*/
	public List<ProductDTO> selectProductList(SqlSession session) {
		
		return session.selectList("CommunityDAO.selectProductList");
	}

}
