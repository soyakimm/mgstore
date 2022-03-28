package com.mgstore.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.notice.model.service.InqService;

@WebServlet("/inq/ansDelete")
public class InqAnsDelete extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int inqId = Integer.parseInt(request.getParameter("inqId"));
		
		InqService inqService = new InqService();
		
		int result = inqService.deleteAns(inqId);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "deleteAns");
		} else {
			System.out.println("삭제 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}


}
