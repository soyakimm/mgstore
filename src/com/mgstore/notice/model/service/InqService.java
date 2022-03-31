package com.mgstore.notice.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import static com.mgstore.common.mybatis.Template.getSqlSession;

import com.mgstore.notice.model.dao.NoticeDAO;
import com.mgstore.notice.model.dto.AskConditionDTO;
import com.mgstore.notice.model.dto.InqDTO;

public class InqService {
	
	/* final로 noticeDAO 변경 못하게 못박기!*/
	private final NoticeDAO noticeDAO;
	
	/* 기본생성자 */
	public InqService() {
		noticeDAO = new NoticeDAO();
	}
	

	/* 문의글 조회 */
	public List<InqDTO> selectInqList(AskConditionDTO askCondition) {
		
		SqlSession session = getSqlSession();
		
		List<InqDTO> inqList = noticeDAO.selectInqList(session, askCondition);
		
		System.out.println("서비스에서 inqList : " + inqList);
		
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

	/* 게시글 답변등록 */
	public int insertAns(InqDTO updateAns) {
		
		SqlSession session = getSqlSession();
		
		int result = NoticeDAO.insertAns(session, updateAns);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int updateAns(InqDTO updateAns) {
		
		SqlSession session = getSqlSession();
		
		int result = noticeDAO.updateAns(session, updateAns);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	/* 문의삭제 => 답변내용 NO DATA 로 변경 후, 카테고리값 20으로 변경*/
	public int deleteAns(int inqId) {
		
		SqlSession session = getSqlSession();
		
		int result = noticeDAO.deleteAns(session, inqId);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}



	


}
