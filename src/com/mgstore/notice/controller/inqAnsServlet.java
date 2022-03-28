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

@WebServlet("/inq/ans")
public class inqAnsServlet extends HttpServlet {
	/* 문의답변을 위한 수정 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int inqId = Integer.parseInt(request.getParameter("inqId"));
		
		System.out.println("inqId: "+ inqId);
		
		InqService inqService = new InqService();
		
		/* 문의 답변을 위해 해당 문의디테일 불러오기*/
		InqDTO inqAns = inqService.selectInqDetail(inqId);
		
		System.out.println("inqAns: " + inqAns);
		
		String path = "";
		if(inqAns != null) {
			path = "/WEB-INF/views/notice/inqAnsForm.jsp";
			request.setAttribute("inqAns", inqAns);
		} else {
			System.out.println("문의글 수정 조회 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	/* 답변등록 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int inqId = Integer.parseInt(request.getParameter("inqId"));
		String inqTitle = request.getParameter("inqTitle");
		String inqContents = request.getParameter("inqContents");
		String ansContents = request.getParameter("ansContents");
		/*추후 필터에서 로그인 유저별 사용가능 여부 정할것!*/
		String adminId = ((UserDTO)request.getSession().getAttribute("loginUser")).getUserId();
		
		InqDTO insertAns = new InqDTO();
		insertAns.setInqId(inqId);
		insertAns.setInqTitle(inqTitle);
		insertAns.setInqContents(inqContents);
		insertAns.setansContents(ansContents);
		insertAns.setAdminId(adminId);
		
		System.out.println("insertAns : " + insertAns);
		
		InqService inqService = new InqService();
		int result = inqService.insertAns(insertAns);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateAns");
		} else {
			System.out.println("답변 등록 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

}
