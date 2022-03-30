package com.mgstore.event.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.event.model.dto.EventDTO;
import com.mgstore.event.model.service.EventService;

@WebServlet("/event/update")
public class EventUpdateServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*eveId:이벤트 게시판 pk*/
		int eveId = Integer.parseInt(request.getParameter("eveId"));
		
		EventService EventService = new EventService();
		EventDTO thumbnail = EventService.selectOneThumbnailEvent(eveId);
		
		String path="";
		if(thumbnail != null) {
			path = "/WEB-INF/views/event/eventUpdate.jsp";
			request.setAttribute("thumbnail", thumbnail);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "이벤트 게시판 수정 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int eveId = Integer.parseInt(request.getParameter("eveId"));
		
		String eveTitle = request.getParameter("eveTitle");
		String eveContent = request.getParameter("eveContent");
		String eveStart = request.getParameter("eveStart");
		String eveEnd = request.getParameter("eveEnd");
		
		EventDTO updateEvent = new EventDTO();
		updateEvent.setEveId(eveId);
		updateEvent.setEveTitle(eveTitle);
		updateEvent.setEveTitle(eveStart);
		updateEvent.setEveTitle(eveEnd);
	//updateEvent.setEveStart(java.sql.Date.valueOf(parameter.get(eveStart)));
	//updateEvent.setEveEnd(java.sql.Date.valueOf(parameter.get(eveEnd)));
		updateEvent.setEveContent(eveContent);
		
		EventService eventService = new EventService();
		int result = eventService.updateEvent(updateEvent);
		
		String path="";
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp"; 
			request.setAttribute("successCode", "updateEvent");
			request.setAttribute("eveId", eveId);
		}
		
		
		
	}

}
