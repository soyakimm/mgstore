package com.mgstore.notice.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import static com.mgstore.common.mybatis.Template.getSqlSession;

import com.mgstore.notice.model.dao.NoticeDAO;
import com.mgstore.notice.model.dto.InqDTO;

public class InqService {
	
	/* final로 noticeDAO 변경 못하게 못박기!*/
	private final NoticeDAO noticeDAO;
	
	/* 기본생성자 */
	public InqService() {
		noticeDAO = new NoticeDAO();
	}

	/* 문의글 조회 */
	public List<InqDTO> selectInqList(String searchCondition) {
		
		SqlSession session = getSqlSession();
		
		List<InqDTO> inqList = noticeDAO.selectInqList(session, searchCondition);
		
		return inqList;
	}

	


}
