package com.mgstore.user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.user.model.dto.UserDTO;
import com.mgstore.user.model.service.UserService;

@WebServlet("/user/findid")
public class UserFindIdServlet extends HttpServlet {
	
	/* 아이디 찾기 폼으로 포워딩 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/user/findIdForm.jsp").forward(request, response);
	}
	
	/* 폼 작성 후 POST 요청한 데 대해 처리 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		
		UserDTO requestUser = new UserDTO();
		requestUser.setUserName(userName);
		requestUser.setEmail(email);
		
		UserService userService = new UserService();
		String userId = userService.findId(requestUser);
		
		System.out.println("user : " + userId);
		
		request.setAttribute("userId", userId);
		request.getRequestDispatcher("/WEB-INF/views/user/findIdResultForm.jsp").forward(request, response);
	}
}
