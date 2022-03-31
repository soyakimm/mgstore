package com.mgstore.notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.notice.model.dto.AskConditionDTO;
import com.mgstore.notice.model.dto.InqDTO;
import com.mgstore.notice.model.service.InqService;
import com.mgstore.user.model.dto.UserDTO;

@WebServlet("/inq/list")
public class InqListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String searchCondition = request.getParameter("searchCondition");
//		String userId = ((UserDTO) request.getSession().getAttribute("loginUser")).getUserId(); 
		
		System.out.println("searchCondition : " + searchCondition);
		
		AskConditionDTO askCondition = new AskConditionDTO();
		askCondition.setSearchCondition(searchCondition);
//		askCondition.setUserId(userId);
//		
//		System.out.println("userId : " + userId);

		InqService inqService = new InqService();
		
		List<InqDTO> inqList = inqService.selectInqList(askCondition);

		System.out.println("inqList : " + inqList);
		
		String path ="";
		
		if(inqList != null) {
			path="/WEB-INF/views/notice/inqList.jsp";
			request.setAttribute("inqList", inqList);
		} else {
			System.out.println("문의글 조회 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}
