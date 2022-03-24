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
	/* 자주 묻는 질문 전체조회*/
	public List<AskedDTO> selectAskedList(String searchCondition) {

		SqlSession session = getSqlSession();
		
		List<AskedDTO> askedList = noticeDAO.selectAskedList(session, searchCondition);
		
		return askedList;
	}

}
