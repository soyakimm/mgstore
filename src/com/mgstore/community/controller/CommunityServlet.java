package com.mgstore.community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CommunityServlet")
public class CommunityServlet extends HttpServlet {

    
    /*getParameter는 항상 String 형태로 반환하므로 주의할점은 int 타입의 변수에 값을 저장하고 싶다면 형변환을 해줘야함
    ex) int a = Integer.pareInt(request.getParamaeter("id");*/
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/views/community/write.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
