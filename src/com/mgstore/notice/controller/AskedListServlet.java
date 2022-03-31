package com.mgstore.notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.notice.model.dto.AskedDTO;
import com.mgstore.notice.model.service.AskedService;

@WebServlet("/asked/list")
public class AskedListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String searchCondition = request.getParameter("searchCondition");
		
		System.out.println("searchCondition : " + searchCondition);
		
		AskedService askedService = new AskedService();
		
		List<AskedDTO> askedList = askedService.selectAskedList(searchCondition);
		
		System.out.println("askedList" + askedList);
		
		String path ="";
		
		if(askedList != null) {
			path = "/WEB-INF/views/notice/askedList.jsp";
			request.setAttribute("askedList", askedList);
		} else {
			System.out.println("실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}


}
