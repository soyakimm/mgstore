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


@WebServlet("/community/main")
public class communityMainServlet extends HttpServlet {

	/*커뮤니티 메인화면으로 이동*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		
	
		
		CommunityService communityService = new CommunityService();
		
		
		
		/*커뮤니티 메인 Best 조회*/
		List<CommunityWriteDTO> thumbnailList = communityService.selectBestList();
		
		
		
		/*커뮤니티 메인 내가 쓴 페이지 최신 순 조회*/
		List<CommunityWriteDTO> newList = communityService.selectNewList();
		
		
		/*추 후 작성*/
		for(CommunityWriteDTO write : thumbnailList) {
			System.out.println(write);
		}
		
		for(CommunityWriteDTO news : newList) {
			System.out.println(news);
		}
		
		
		String path = "";
		if(thumbnailList != null || newList != null) {
			path = "/WEB-INF/views/community/communityMain.jsp";
			request.setAttribute("thumbnailList", thumbnailList);
			request.setAttribute("newList", newList);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "커뮤니티 메인 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}


}
