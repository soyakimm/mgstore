package com.mgstore.event.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mgstore.event.dto.EventDTO;

public class EventDAO {
	
	public static List<EventDTO> selectEventList(SqlSession session) {
		
		return session.selectList("EventDAO.selectEventList");
	}
	
	
}
