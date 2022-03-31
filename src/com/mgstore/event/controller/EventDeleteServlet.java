package com.mgstore.event.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.event.model.service.EventService;


@WebServlet("/event/delete")
public class EventDeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println(request.getParameter("eveId"));
		int eveId = Integer.parseInt(request.getParameter("eveId"));
		
		int result = new EventService().deleteEvent(eveId);
		
		String path="";
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "deleteEvent");
			//request.setAttribute("eveId", eveId);
			System.out.println("이벤트삭제성공");
			
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "이벤트 썸네일 게시판 삭제 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
