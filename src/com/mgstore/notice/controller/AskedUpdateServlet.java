package com.mgstore.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.notice.model.dto.AskedDTO;
import com.mgstore.notice.model.service.AskedService;

@WebServlet("/asked/update")
public class AskedUpdateServlet extends HttpServlet {
	
	/* askedList에서 수정버튼 누르면 연결(get)*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int askId = Integer.parseInt(request.getParameter("askId"));
		
		System.out.println("askId" + askId);
		
		AskedService askedService = new AskedService();
		AskedDTO asked = askedService.selectAskedDetail(askId);
		
		String path = "";
		if(asked != null) {
			path = "/WEB-INF/views/notice/askUpdateForm.jsp";
			request.setAttribute("asked", asked);
		} else {
			System.out.println("수정용 조회 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int askId = Integer.parseInt(request.getParameter("askId"));
		String askTitle = request.getParameter("title");
		int categoryCode = Integer.parseInt(request.getParameter("category"));
		String askContents = request.getParameter("contents");
		
		AskedDTO updateAsked = new AskedDTO();
		updateAsked.setAskId(askId);
		updateAsked.setAskTitle(askTitle);
		updateAsked.setcategoryCode(categoryCode);
		updateAsked.setAskContents(askContents);
		
		AskedService askedService = new AskedService();
		int result = askedService.updateAsked(updateAsked);
		
		String path = "";
		
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateAsked");
		} else {
			System.out.println("공지사항 등록 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
