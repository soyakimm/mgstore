package com.mgstore.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mgstore.user.model.dto.UserDTO;
import com.mgstore.user.model.service.UserService;

@WebServlet("/user/login")
public class UserLoginServlet extends HttpServlet {
	
	/* 로그인 폼으로 포워딩 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/user/loginForm.jsp").forward(request, response);
	}
	
	/* 폼 작성 후 POST 요청한 데 대해 처리 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		UserDTO requestUser = new UserDTO();
		requestUser.setUserId(userId);
		requestUser.setUserPwd(userPwd);
		
		UserService userService = new UserService();
		
		UserDTO loginUser = userService.loginCheck(requestUser);
		
		if(loginUser != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);			
			response.sendRedirect(request.getContextPath());
		} else {
			request.setAttribute("message", "로그인에 실패하였습니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/failed.jsp").forward(request, response);
		}
	}
}
