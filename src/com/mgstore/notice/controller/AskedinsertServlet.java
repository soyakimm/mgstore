package com.mgstore.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.notice.model.dto.AskedDTO;
import com.mgstore.notice.model.service.AskedService;
import com.mgstore.user.model.dto.UserDTO;

@WebServlet("/asked/insert")
public class AskedinsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/views/notice/askInsertForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String askTitle = request.getParameter("askTitle");
		int categoryCode = Integer.parseInt(request.getParameter("category"));
		String askContents = request.getParameter("askContents");
		
		/*추후 필터에서 로그인 유저별 사용가능 여부 정할것!*/
		String userId = ((UserDTO)request.getSession().getAttribute("loginUser")).getUserId();
		
		AskedDTO newAsked = new AskedDTO();
		newAsked.setAskTitle(askTitle);
		newAsked.setAskContents(askContents);
		newAsked.setUserId(userId);
		newAsked.setcategoryCode(categoryCode);
		
		System.out.println("newAsked : " + newAsked);
		
		AskedService askedService = new AskedService();
		int result = askedService.insertAsked(newAsked);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "insertAsked");
		} else {
			System.out.println("실패");
			/* 이후에 실패 page 만들기 ? */
		}
		
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
