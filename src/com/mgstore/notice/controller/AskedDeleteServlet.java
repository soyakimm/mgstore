package com.mgstore.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.notice.model.service.AskedService;

@WebServlet("/asked/delete")
public class AskedDeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int askId = Integer.parseInt(request.getParameter("askId"));
		
		System.out.println("askId : " + askId);
		
		int result = new AskedService().deleteAsked(askId);
		
		String path = "";
		
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "deleteAsked");
		} else {
			System.out.println("삭제 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}


}
