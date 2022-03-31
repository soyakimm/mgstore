package com.mgstore.event.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import static com.mgstore.common.mybatis.Template.getSqlSession;

import com.mgstore.event.model.dao.EventDAO;
import com.mgstore.event.model.dto.EveAttachmentDTO;
import com.mgstore.event.model.dto.EventCommentDTO;
import com.mgstore.event.model.dto.EventDTO;

public class EventService {
	
	private final EventDAO eventDAO;
	
	public EventService() {
		eventDAO = new EventDAO();
	}

	/*이벤트 메인 배너 리스트 */
	public List<EventDTO> selectEventList() {
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* List 조회 */
		List<EventDTO> eventList = eventDAO.selectEventList(session);
		
		/* Connection 닫기 */
		session.close();
		
		/* 조회 결과 반환 */
		return eventList;
	}

	
	/* 썸네일 추가 */
		public int insertThumbnail(EventDTO thumbnail) {
		
		/*Connection 생성*/
		SqlSession session = getSqlSession();
		/* 최종적으로 반환할 result 선언 */
		int result = 0;
		
		/* (1) 먼저 board 테이블부터 thumbnail 내용부터 insert 한다. */
		int boardResult = eventDAO.insertEventContent(session, thumbnail);
		
		System.out.println("EventResult : " + thumbnail);
	
		/* Attachment 리스트를 불러온다. */
		List<EveAttachmentDTO> fileList = thumbnail.getAttachmentList();
		
		/* fileList에 EventNo값을 넣는다. */
		for(int i = 0; i < fileList.size(); i++) {
			fileList.get(i).setEveId(thumbnail.getEveId()); 
		}
		
		/* Attachment 테이블에 list size만큼 insert 한다. */
		int attachmentResult = 0;
		for(int i = 0; i < fileList.size(); i++) {
			attachmentResult += eventDAO.insertAttachment(session, fileList.get(i));
		}
		
		/* 모든 결과가 성공이면 트랜젝션을 완료한다. */
		if(boardResult > 0 && attachmentResult == fileList.size()) {
			session.commit();
			result = 1;
		} else {
			session.rollback();
		}
		
		/* Connection을 닫는다. */
		session.close();
		
		/* 수행 결과를 리턴한다. */
		return result;
	}

		
		
	/* 이벤트 info 게시글 */
	public EventDTO selectOneThumbnailEvent(int eveId) {
		
		SqlSession session = getSqlSession();
		
		EventDTO thumbnail= null;
		
		int result = eventDAO.incrementEventCount(session, eveId); //★조회수를 증가시킨다
		
		if(result > 0) {
			thumbnail = eventDAO.selectOneThumbnailBoard(session, eveId);
			
			if(thumbnail != null) {
				session.commit();
			} else {
				session.rollback();
			}
		} else {
			session.rollback();
		}
		
		session.close();
		
		return thumbnail;
		
	}



	public int deleteEvent(int eveId) {
		
		SqlSession session = getSqlSession();
		
		//int attachResult = eventDAO.deleteEventAttach(session, eveId); //자식 테이블 죽이기
		
		int result = eventDAO.deleteEvent(session, eveId);
		
		if(result > 0 ) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	//썸네일 수정
	public int updateThumbnail(EventDTO thumbnail) {
		
		/*Connection 생성*/
		SqlSession session = getSqlSession();
		/* 최종적으로 반환할 result 선언 */
		int result = 0;
		
		/* (1) 먼저 board 테이블부터 thumbnail 내용부터 insert 한다. */
		int boardResult = eventDAO.updateEventContent(session, thumbnail);
		
		System.out.println("EventResult : " + thumbnail);
	
		/* Attachment 리스트를 불러온다. */
		List<EveAttachmentDTO> fileList = thumbnail.getAttachmentList();
		
		/* fileList에 EventNo값을 넣는다. */
		for(int i = 0; i < fileList.size(); i++) {
			fileList.get(i).setEveId(thumbnail.getEveId()); 
		}
		
		/* Attachment 테이블에 list size만큼 insert 한다. */
		int attachmentResult = 0;
		for(int i = 0; i < fileList.size(); i++) {
			/*attachmentResult += eventDAO.updateAttachment(session, fileList.get(i));*/
		}
		
		/* 모든 결과가 성공이면 트랜젝션을 완료한다. */
		if(boardResult > 0 && attachmentResult == fileList.size()) {
			session.commit();
			result = 1;
		} else {
			session.rollback();
		}
		
		/* Connection을 닫는다. */
		session.close();
		
		/* 수행 결과를 리턴한다. */
		return result;
	}

}
