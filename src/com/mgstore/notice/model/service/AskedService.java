package com.mgstore.notice.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import static com.mgstore.common.mybatis.Template.getSqlSession;

import com.mgstore.notice.model.dao.NoticeDAO;
import com.mgstore.notice.model.dto.AskedDTO;

public class AskedService {
	
	private final NoticeDAO noticeDAO;
	
	public AskedService() {
		noticeDAO = new NoticeDAO();
	}
	/* 자주 묻는 질문 조회*/
	public List<AskedDTO> selectAskedList(String searchCondition) {

		SqlSession session = getSqlSession();
		
		List<AskedDTO> askedList = noticeDAO.selectAskedList(session, searchCondition);
		
		return askedList;
	}
	
	/* 자주 묻는 질문 등록*/
	public int insertAsked(AskedDTO newAsked) {
		
		SqlSession session = getSqlSession();
		
		int result = noticeDAO.insertAsked(session, newAsked);

		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 수정을 위해 조회하는 질문*/
	public AskedDTO selectAskedDetail(int askId) {
		
		SqlSession session = getSqlSession();
		
		AskedDTO askedDetail = noticeDAO.selectNoticedDetail(session, askId);
		
		if(askedDetail != null) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return askedDetail;
	}
	
	/* 자주묻는질문 수정*/
	public int updateAsked(AskedDTO updateAsked) {
		
		SqlSession session = getSqlSession();
		
		int result = NoticeDAO.updateAsked(session, updateAsked);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();

		return result;
	}
	
	/* 자주묻는질문 삭제*/
	public int deleteAsked(int askId) {
		
		SqlSession session = getSqlSession();
		
		int result = NoticeDAO.deleteAsked(session, askId);
		
		System.out.println("서비스 result" + result);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
