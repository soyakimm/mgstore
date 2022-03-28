package com.mgstore.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.notice.model.dto.InqDTO;
import com.mgstore.notice.model.service.InqService;

@WebServlet("/inq/ansUpdate")
public class InqAnsUpdateServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int inqId = Integer.parseInt(request.getParameter("inqId"));
		
		InqService inqService = new InqService();
		InqDTO inqAns = inqService.selectInqDetail(inqId);
		
		String path ="";
		
		if(inqAns != null) {
			path = "/WEB-INF/views/notice/inqAnsUpdateForm.jsp";
			request.setAttribute("inqAns", inqAns);
		} else {
			System.out.println("답변 수정 조회 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int inqId = Integer.parseInt(request.getParameter("inqId"));
		String inqContents = request.getParameter("inqContents");
		String ansContents = request.getParameter("ansContents");
		
		InqDTO updateAns = new InqDTO();
		updateAns.setInqId(inqId);
		updateAns.setInqContents(inqContents);
		updateAns.setansContents(ansContents);
		
		InqService inqService = new InqService();
		
		int result = inqService.updateAns(updateAns);
		
		String path ="";
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateAns");
		} else {
			System.out.println("답변 수정 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
