package com.mgstore.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.user.model.dto.UserDTO;
import com.mgstore.user.model.service.UserService;

@WebServlet("/user/regist")
public class UserRegistServlet extends HttpServlet {
	
	/* 회원가입 폼으로 이동 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/views/user/registForm.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String nickname = request.getParameter("nickname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phoneA") + request.getParameter("phoneB") + request.getParameter("phoneC");
		String address = request.getParameter("postalcode") + "$" + request.getParameter("address") + "$" + request.getParameter("details");
		
		UserDTO requestUser = new UserDTO();
		requestUser.setUserId(userId);
		requestUser.setUserPwd(userPwd);
		requestUser.setUserName(userName);
		requestUser.setNickname(nickname);
		requestUser.setEmail(email);
		requestUser.setPhone(phone);
		requestUser.setAddress(address);
		
		int result = new UserService().registUser(requestUser);
		
		String page = "";
		
		if(result > 0) {
			page = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "insertUser");
		} else {
			page = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "회원 가입 실패");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

}
