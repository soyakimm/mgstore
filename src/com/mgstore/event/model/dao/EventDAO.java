package com.mgstore.event.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.event.model.dto.EveAttachmentDTO;
import com.mgstore.event.model.dto.EventDTO;

public class EventDAO {
	
	// 이벤트 메인화면에서 썸네일 리스트 전체 조회
	public  List<EventDTO> selectEventList(SqlSession session) {
		
		return session.selectList("EventDAO.selectEventList");
	}

	// 썸네일 제목과 내용 insert용 메소드
	public  int insertEventContent(SqlSession session, EventDTO thumbnail) {
		return session.insert("EventDAO.insertThumbnailContent", thumbnail);
	}

	// Attachment 테이블에 insert
	public  int insertAttachment(SqlSession session, EveAttachmentDTO file) {
		return session.insert("EventDAO.insertAttachment", file);
	}

	// 이벤트 게시글 조회수 
	public  int incrementEventCount(SqlSession session, int eveId) {
		
		return session.update("EventDAO.incrementEventCount", eveId);
		
	}

	// 이벤트 게시글 select
	public  EventDTO selectOneThumbnailBoard(SqlSession session, int eveId) {
		
		return session.selectOne("EventDAO.selectOneThumbnailEvent", eveId);
	}

	//이벤트 삭제
	public int deleteEvent(SqlSession session, int eveId) {
		return session.update("EventDAO.deleteEvent", eveId);
	}

	//이벤트 자식 삭제
	public int deleteEventAttach(SqlSession session, int eveId) {
		return session.update("EventDAO.deleteEventAttach", eveId);
	}

	//이벤트 업데이트
	public  int updateEventContent(SqlSession session, EventDTO thumbnail) {
		return session.update("EventDAO.updateThumbnailContent", thumbnail);
	}

	/* public int updateAttachment(SqlSession update, EveAttachmentDTO file) {
		return session.update("EventDAO.insertThumbnailContent", file);
	} */


	
	
}
