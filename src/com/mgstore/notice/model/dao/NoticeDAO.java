package com.mgstore.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.notice.model.dto.AskedDTO;

public class NoticeDAO {

	/* 자주묻는질문 전체 조회*/
	public List<AskedDTO> selectAskedList(SqlSession session, String searchCondition) {
		
		return session.selectList("NoticeDAO.selectAskedList", searchCondition);
	}

}
