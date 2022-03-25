package com.mgstore.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.admin.model.dto.UserDTO;
import com.mgstore.admin.service.AdminService;


@WebServlet("/admin/userlist")
public class UserListServlet extends HttpServlet {
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* userId parameter */
		String userId = request.getParameter("userId");
		
		/* DB 서버에서 회원 목록을 조회한다. */
		List<UserDTO> userList = new AdminService().selectUserList(userId);
		
		System.out.println(userList);
		
		/* 조회 된 값을 가지고 forward */
		request.setAttribute("userList", userList);
		request.getRequestDispatcher("/WEB-INF/views/admin/adm_userlist.jsp").forward(request, response);
	}

	

}
