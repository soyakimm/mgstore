package com.mgstore.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.notice.model.dto.AskConditionDTO;
import com.mgstore.notice.model.dto.AskedDTO;
import com.mgstore.notice.model.dto.InqDTO;

public class NoticeDAO {

	/* 자주묻는질문 카테고리 조회*/
	public List<AskedDTO> selectAskedList(SqlSession session, String searchCondition) {
		
		return session.selectList("NoticeDAO.selectAskedList", searchCondition);
	}
	
	/* 자주 묻는 질문 등록*/
	public int insertAsked(SqlSession session, AskedDTO newAsked) {
		
		return session.insert("NoticeDAO.insertAsked", newAsked);
	}

	/* 자주 묻는 질문 수정 조회용 메소드 */
	public AskedDTO selectNoticedDetail(SqlSession session, int askId) {

		return session.selectOne("NoticeDAO.selectAskedDetail", askId);
	}

	/* 자주 묻는 질문 수정*/
	public static int updateAsked(SqlSession session, AskedDTO updateAsked) {
		
		return session.update("NoticeDAO.updateAsked", updateAsked);
	}

	/* 자주 묻는 질문 삭제*/
	public static int deleteAsked(SqlSession session, int askId) {
		/* delete지만 데이터 바로 삭제안하고 삭제여부만 Y로 수정해준다 (update 사용)*/
		System.out.println("DAO 진행");
		return session.update("NoticeDAO.deleteAsked", askId);
	}

	/* 1:1 문의 조회*/
	public List<InqDTO> selectInqList(SqlSession session, AskConditionDTO askCondition) {
		
		return session.selectList("NoticeDAO.selectInqList", askCondition);
	}

	/* 1:1 문의 등록*/
	public int insertInq(SqlSession session, InqDTO newInq) {
		
		return session.insert("NoticeDAO.insertInq", newInq);
	}

	/* 1:1 문의 상세 조회*/
	public InqDTO selectInqDetail(SqlSession session, int inqId) {
		
		return session.selectOne("NoticeDAO.selectInqDetail", inqId);
	}

	/* 1:1 문의 수정*/
	public int updateQue(SqlSession session, InqDTO updateQue) {

		return session.update("NoticeDAO.updateQue", updateQue);
	}

	/* 1:1 문의 삭제*/
	public int deleteInq(SqlSession session, int inqId) {
		
		return session.update("NoticeDAO.deleteInq", inqId);
	}

	/* 1:1 답변 등록*/
	public static int insertAns(SqlSession session, InqDTO insertAns) {
		
		return session.update("NoticeDAO.insertAns", insertAns);
	}

	/* 1:1 답변 수정*/
	public int updateAns(SqlSession session, InqDTO updateAns) {
		
		return session.update("NoticeDAO.updateAns", updateAns);
	}

	/* 1:1 답변 삭제*/
	public int deleteAns(SqlSession session, int inqId) {
		
		return session.update("NoticeDAO.deleteAns", inqId);
	}

}
