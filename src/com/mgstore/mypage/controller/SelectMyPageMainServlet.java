package com.mgstore.mypage.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.mypage.model.service.MyPageService;

@WebServlet("/mypage/main")
public class SelectMyPageMainServlet extends HttpServlet {
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 로그인 기능 완성 되었을 때 로그인 유저 객체에서 아이디를 가져옴
		//String userId = ((UserDTO)request.getSession().getAttribute("loginMember")).getUserId();
		
		String userId = "MJKIM";
		
		MyPageService myPageService = new MyPageService();
		
		Map<String, Object> myPageData = myPageService.selectMyPageData(userId);
		System.out.println(myPageData.get("myPetList"));
		
		
		request.setAttribute("myPetList", myPageData.get("myPetList"));
		request.getRequestDispatcher("/WEB-INF/views/mypage/main.jsp").forward(request, response);
		
		
		/*Map<String, Object> myPageData = mypageService.selectMyPageData(userId);
		System.out.println(mypageData.get("myPostList")); */
		
		request.setAttribute("myPostList", myPageData.get("myPostList"));
		request.getRequestDispatcher("/WEB-INF/views/mypage/main.jsp").forward(request, response);
		
		
	}

	

}
