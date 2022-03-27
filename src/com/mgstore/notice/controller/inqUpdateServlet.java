package com.mgstore.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.notice.model.dto.InqDTO;
import com.mgstore.notice.model.service.InqService;

@WebServlet("/inq/update")
public class inqUpdateServlet extends HttpServlet {
	/* 문의글 수정 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int inqId = Integer.parseInt(request.getParameter("inqId"));
		
		System.out.println("inqId: "+ inqId);
		
		InqService inqService = new InqService();
		InqDTO inqQue = inqService.selectInqDetail(inqId);
		
		String path = "";
		if(inqQue != null) {
			path = "/WEB-INF/views/notice/inqUpdateForm.jsp";
			request.setAttribute("inqQue", inqQue);
		} else {
			System.out.println("문의글 수정 조회 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int inqId = Integer.parseInt(request.getParameter("inqId"));
		String inqTitle = request.getParameter("inqTitle");
		String inqContents = request.getParameter("inqContents");
		
		InqDTO updateQue = new InqDTO();
		updateQue.setInqId(inqId);
		updateQue.setInqTitle(inqTitle);
		updateQue.setInqContents(inqContents);
		
		InqService inqService = new InqService();
		int result = inqService.updateQue(updateQue);
		
		String path = "";
		
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateAsked");
		} else {
			System.out.println("문의 수정 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

}
