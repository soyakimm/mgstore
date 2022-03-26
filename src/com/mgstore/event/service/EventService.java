package com.mgstore.event.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import static com.mgstore.common.mybatis.Template.getSqlSession;

import com.mgstore.event.dao.EventDAO;
import com.mgstore.event.dto.EventDTO;

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
		List<EventDTO> eventList = EventDAO.selectEventList(session);
		
		/* Connection 닫기 */
		session.close();
		
		/* 조회 결과 반환 */
		return eventList;
	}

}
