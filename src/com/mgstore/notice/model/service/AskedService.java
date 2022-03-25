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

}
