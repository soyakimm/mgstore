package com.mgstore.event.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.event.model.dto.EventDTO;
import com.mgstore.event.model.service.EventService;

@WebServlet("/event/detail")
public class EventDetailServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int eveId = Integer.parseInt(request.getParameter("eveId"));
		
		EventDTO thumbnail = new EventService().selectOneThumbnailEvent(eveId);
		System.out.println(thumbnail);
		
		String path = "";
		if(thumbnail != null) {
			path = "/WEB-INF/views/event/eventDetail.jsp";
			request.setAttribute("thumbnail", thumbnail);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "이벤트 게시판 상세 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);

}	

	}


