package com.mgstore.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.notice.model.dto.InqDTO;
import com.mgstore.notice.model.service.InqService;
import com.mgstore.user.model.dto.UserDTO;

@WebServlet("/inq/insert")
public class InqInsertServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/notice/inqInsertForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String inqTitle = request.getParameter("inqTitle");
		String inqContents = request.getParameter("inqContents");
		
		/*추후 필터에서 로그인 유저별 사용가능 여부 정할것!*/
		String userId = ((UserDTO)request.getSession().getAttribute("loginUser")).getUserId();
		
		InqDTO newInq = new InqDTO();
		newInq.setInqTitle(inqTitle);
		newInq.setInqContents(inqContents);
		newInq.setUserId(userId);
		
		System.out.println("newInq : " + newInq);
		
		InqService inqService = new InqService();
		
		int result = inqService.insertInq(newInq);
		
		String path = "";
		
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "insertInq");
		} else {
			System.out.println("inq입력 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
