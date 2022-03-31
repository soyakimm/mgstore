package com.mgstore.community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.community.model.dto.CommunityWriteDTO;
import com.mgstore.community.model.service.CommunityService;


@WebServlet("/free/modify")
public class FreeTalkModifyServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int postId = Integer.parseInt(request.getParameter("postId"));
		
		CommunityService communityService = new CommunityService();
		/*글 상세 내용 서비스랑 연결..*/
		CommunityWriteDTO write = communityService.selectOneWrite(postId);
		
		/*서비스에서 값을 받아온 것을 daily에 담고*/
		String path = "";
		if(write != null) {
			path = "/WEB-INF/views/community/freeTalkModify.jsp";
			request.setAttribute("write", write);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 수정용 조회하기 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	/*수정하기 버튼을 눌렀을 때*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int postId = Integer.parseInt(request.getParameter("postId"));
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		
		CommunityWriteDTO updateWrite = new CommunityWriteDTO();
		updateWrite.setPostId(postId);
		updateWrite.setTitle(title);
		updateWrite.setText(text);
		
		CommunityService communityService = new CommunityService();
		int result = communityService.updateFree(updateWrite);
		
		/*추 후 수정*/
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			
			/*이건 success페이지의 case에서 구분하기 위한 구문*/
			request.setAttribute("successCode", "updateWrite");
			/*success페이지로 이동 후 해당 게시글 그대로 잔류 하기 위해 no도 가져감*/
			request.setAttribute("postId", postId);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 수정에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
