package com.mgstore.admin.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		
		String currentPage = request.getParameter("currentPage");
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		/* 0보다 작은 숫자값을 입력해도 1페이지를 보여준다 */
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		/* userId parameter */
		String userId = request.getParameter("userId");
		
		/* DB 서버에서 회원 목록을 조회한다. */
		List<UserDTO> userList = new AdminService().selectUserList(userId);
		
		for(UserDTO user : userList) {
			  System.out.println(user);

			}
		
		//System.out.println(userList);
		
		/* 조회 된 값을 가지고 forward */
		
		/*검색기능*/
		String searchValue = request.getParameter("searchValue");
		
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchValue", searchValue);
		
		String path = "";
		if(userList != null) {

			  System.out.println(searchValue);
			
		 path = "/WEB-INF/views/admin/AdmUserList.jsp";
		 request.setAttribute("userList", userList);
		} else {
		 path ="/WEB-INF/views/common/failed.jsp";
		 request.setAttribute("message", "회원 목록 조회 실패!");
		}

		request.getRequestDispatcher(path).forward(request, response);
	
	}



}
