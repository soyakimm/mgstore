package com.mgstore.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.user.model.service.UserService;

@WebServlet("/user/checkemail")
public class UserEmailCheckServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		
		UserService userService = new UserService();
		int result = userService.emailCheck(email);
		
		PrintWriter out = response.getWriter();
		
		if(result > 0) {
			out.print("fail");
		} else {
			out.print("success");
		}
	}

}
