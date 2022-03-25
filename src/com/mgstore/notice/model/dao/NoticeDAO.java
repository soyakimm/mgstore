package com.mgstore.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.notice.model.dto.AskedDTO;

public class NoticeDAO {

	/* 자주묻는질문 카테고리 조회*/
	public List<AskedDTO> selectAskedList(SqlSession session, String searchCondition) {
		
		return session.selectList("NoticeDAO.selectAskedList", searchCondition);
	}
	
	/* 자주 묻는 질문 등록*/
	public int insertAsked(SqlSession session, AskedDTO newAsked) {
		
		return	session.insert("NoticeDAO.insertAsked", newAsked);
	}

}
