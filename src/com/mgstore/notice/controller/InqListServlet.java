package com.mgstore.notice.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InqListServlet
 */
@WebServlet("/inq/list")
public class InqListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String currentPage = request.getParameter("currentPage");
//		int pageNo = 1;
//		
//		if(currentPage != null && !"".equals(currentPage)) {//currentPage가 널이아니고 공란이 아닌경우
//			pageNo = Integer.parseInt(currentPage);
//		}
//		
//		/* 0보다 작은 숫자값을 입력해도 1페이지를 보여준다 */
//		if(pageNo <= 0) {
//			pageNo = 1;
//		}
//		
//		String searchCondition = request.getParameter("searchCondition");
		
	}


}
