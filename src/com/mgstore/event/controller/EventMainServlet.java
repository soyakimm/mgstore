package com.mgstore.event.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.event.model.dto.EventDTO;
import com.mgstore.event.model.dao.*;
import com.mgstore.event.model.service.*;
import com.mgstore.common.paging.SelectCriteria;

@WebServlet("/event/main")
public class EventMainServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/*조회수 카운트를 위한 페이지 설정*/
		/*String currentPage = request.getParameter("currentPage");
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}*/
		
		EventService EventService = new EventService();
		
		List<EventDTO> eventList = EventService.selectEventList();
		
		
		for(EventDTO event : eventList) {
			System.out.println(event);
		}
		
		System.out.println("이벤트 메인 성공");
		
		String path = ""; 
		if(eventList != null) {
			path = "/WEB-INF/views/event/eventMain.jsp"; 
			request.setAttribute("eventList", eventList);
		} else {
			path ="/WEB-INF/views/common/failed.jsp";
			 request.setAttribute("message", "이벤트 조회 실패!");
		}
		
		
		request.getRequestDispatcher(path).forward(request, response);
	}
	

}  
	
