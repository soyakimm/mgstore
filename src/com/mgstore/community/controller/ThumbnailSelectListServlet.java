package com.mgstore.community.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.community.model.dto.CommunityWriteDTO;
import com.mgstore.community.model.service.CommunityService;

/*시작*/
@WebServlet("/thumbnail/list")
public class ThumbnailSelectListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		CommunityService communityService = new CommunityService();
		
		List<CommunityWriteDTO> thumbnailList = communityService.selectThumbnailList();
		
		for(CommunityWriteDTO write : thumbnailList) {
			System.out.println(write);
		}
		
		
		String path = "";
		if(thumbnailList != null) {
			path = "/WEB-INF/views/community/daily.jsp";
			request.setAttribute("thumbnailList", thumbnailList);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "썸네일 게시판 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
		
		
		
	}	

}
