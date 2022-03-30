package com.mgstore.community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.community.model.dto.CommunityWriteDTO;
import com.mgstore.community.model.service.CommunityService;

/*멍개일상 게시글 수정하기 버튼 클릭*/
@WebServlet("/daily/modify")
public class DailyModifyServlet extends HttpServlet {
	
	/*수정하기 버튼을 누르고 해당 게시글 번호를 받았음
	 * 이제 그 해당게시글에 해당 하는 내용들을 뽑아봐서 수정하기 화면에 뿌려준다.*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int postId = Integer.parseInt(request.getParameter("postId"));
		
		CommunityService communityService = new CommunityService();
		/*글 상세 내용 서비스랑 연결..*/
		CommunityWriteDTO daily = communityService.selectOneThumbnailWrite(postId);
		
		/*서비스에서 값을 받아온 것을 daily에 담고*/
		String path = "";
		if(daily != null) {
			path = "/WEB-INF/views/community/DailyModify.jsp";
			request.setAttribute("daily", daily);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 수정용 조회하기 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
