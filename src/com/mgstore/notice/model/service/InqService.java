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
	
	/* 1:1 문의글 생성*/
	public int insertInq(InqDTO newInq) {
		
		SqlSession session = getSqlSession();
		
		int result = noticeDAO.insertInq(session, newInq);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 문의글 수정을 위한 상세조회*/
	public InqDTO selectInqDetail(int inqId) {
		
		SqlSession session = getSqlSession();
		
		InqDTO inqDetail = noticeDAO.selectInqDetail(session, inqId);
		
		if(inqDetail != null) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return inqDetail;
	}
	
	/* 문의글 수정 */
	public int updateQue(InqDTO updateQue) {
		
		SqlSession session = getSqlSession();
		
		int result = noticeDAO.updateQue(session, updateQue);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int deleteInq(int inqId) {
		
		SqlSession session = getSqlSession();
		
		int result = noticeDAO.deleteInq(session, inqId);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();

		return result;
	}


	


}
