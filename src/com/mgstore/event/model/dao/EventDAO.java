package com.mgstore.event.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.event.model.dto.EveAttachmentDTO;
import com.mgstore.event.model.dto.EventDTO;

public class EventDAO {
	
	// 이벤트 메인화면에서 썸네일 리스트 전체 조회
	public static List<EventDTO> selectEventList(SqlSession session) {
		
		return session.selectList("EventDAO.selectEventList");
	}

	// 썸네일 제목과 내용 insert용 메소드
	public static int insertEventContent(SqlSession session, EventDTO thumbnail) {
		return session.insert("EventDAO.insertThumbnailContent", thumbnail);
	}

	// Attachment 테이블에 insert
	public static int insertAttachment(SqlSession session, EveAttachmentDTO file) {
		return session.insert("EventDAO.insertAttachment", file);
	}

	// 이벤트 게시글 조회수 
	public static int incrementEventCount(SqlSession session, int eveId) {
		
		return session.update("EventDAO.incrementEventCount", eveId);
		
	}

	// 이벤트 게시글 select
	public static EventDTO selectOneThumbnailBoard(SqlSession session, int eveId) {
		
		return session.selectOne("EventDAO.selectOneThumbnailEvent", eveId);
	}

	//이벤트 업데이트
	public int updateEvent(SqlSession session, EventDTO updateEvent) {
		return session.update("EventDAO.updateEvent", updateEvent);
	}

	//이벤트 삭제
	public int deleteEvent(SqlSession session, int eveId) {
		return session.update("EventDAO.deleteEvent", eveId);
	}
	
	
}
