package com.mgstore.community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.community.model.dto.CommunityWriteDTO;
import com.mgstore.community.model.service.CommunityService;

/*사진 없는 게시판 상세페이지*/
@WebServlet("/free/datail")
public class FreeTalkDatailServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int postId = Integer.parseInt(request.getParameter("postId"));
		
		CommunityWriteDTO write = new CommunityService().selectOneWrite(postId);
		System.out.println(write);
		
		String path = "";
		if(write != null) {
			path = "/WEB-INF/views/community/freeTalkDetail.jsp";
			request.setAttribute("write", write);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "썸네일 게시판 상세 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}

