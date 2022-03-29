package com.mgstore.community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/community/daily")
public class CommunityDailyServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String path = "/WEB-INF/views/community/daily.jsp";

		request.getRequestDispatcher(path).forward(request, response);
	}


	

}
