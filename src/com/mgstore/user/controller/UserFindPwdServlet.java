package com.mgstore.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.user.model.dto.UserDTO;
import com.mgstore.user.model.service.UserService;

@WebServlet("/user/findpwd")
public class UserFindPwdServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/user/findPwdForm.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");

		String code = request.getParameter("code");
		
		UserDTO requestUser = new UserDTO();
		requestUser.setUserId(userId);
		requestUser.setUserName(userName);
		requestUser.setEmail(email);
		
		UserService userService = new UserService();
		Integer result = userService.findPwd(requestUser, code);
		
		String page = "";
		
		if(result > 0) {
			page = "/WEB-INF/views/user/loginForm.jsp";
		} else {
			page = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "임시 비밀번호를 저장하는 데에 실패하였습니다.");
		}
		request.getRequestDispatcher(page).forward(request, response);
	}
}
