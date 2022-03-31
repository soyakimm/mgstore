package com.mgstore.community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.community.model.service.CommunityService;


@WebServlet("/thumbnail/delete")
public class ThumbnailDeleteServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int postId = Integer.parseInt(request.getParameter("postId"));
		System.out.println(postId);
		/*게시글 상태를 'N'로 바꿔줌*/
		int result = new CommunityService().deleteThumbnail(postId);
		/*게시글 사진 상태를 'N'로 바꿔줌*/    
		result += new CommunityService().deleteThumbnails(postId);
		
		/*추 후 작성*/
		String path = "";
		if(result > 1) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "deleteThumbnail");
			request.setAttribute("postId", postId);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "게시판 삭제에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
