package com.mgstore.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/adminmain")
public class AdminMain extends HttpServlet {

//	private Object adminmain;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/admin/AdmMain.jsp";
//		if(path != null) {
//		 path = "/WEB-INF/views/admin/AdmMain.jsp";
//		} else {
//		 path ="/WEB-INF/views/common/failed.jsp";
//		 request.setAttribute("message", "없는 페이지입니다!");
//		}

		request.getRequestDispatcher(path).forward(request, response);
		
		
		System.out.println("화면성공");
	}
		
	}

