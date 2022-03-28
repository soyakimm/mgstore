package com.mgstore.community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.community.model.dto.CommunityWriteDTO;
import com.mgstore.community.model.service.CommunityService;
import com.mgstore.user.model.dto.UserDTO;


@WebServlet("/community/insert")
public class CommunityInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String path = "/WEB-INF/views/community/insert.jsp";

		request.getRequestDispatcher(path).forward(request, response);
	}
 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int categoryId = Integer.parseInt(request.getParameter("category"));
		int headerId = Integer.parseInt(request.getParameter("header"));
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		String userId = ((UserDTO)request.getSession().getAttribute("loginUser")).getUserId();
		
		
		CommunityWriteDTO newWrite = new CommunityWriteDTO();
		newWrite.setCategoryId(categoryId);
		newWrite.setHeaderId(headerId);
		newWrite.setTitle(title);
		newWrite.setText(text);
		newWrite.setUserId(userId);
		
		/*insertWrite(=insertBoard)*/
		CommunityService communityService = new CommunityService();
		int result = communityService.insertWrite(newWrite);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "insertWrite");
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "게시판 작성에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
