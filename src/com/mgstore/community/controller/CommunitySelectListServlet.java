package com.mgstore.community.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.community.model.service.CommunityService;

/*자유게시판 리스트 조회*/
@WebServlet("/community/freelist")
public class CommunitySelectListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		/* 목록보기를 눌렀을 시 가장 처음에 보여지는 페이지는 1페이지이다.
		 * 파라미터로 전달되는 페이지가 있는 경우 currentPage는 파라미터로 전달받은 페이지 수 이다.
		 * */
		
		/*그냥 게시판을 누르면 currentPage가 null이다*/
		String currentPage = request.getParameter("currentPage");
		
		/*default는 1이다.*/
		int pageNo = 1;
		
		/*currentPage가 null이 아니거나 넘어오긴 했지만 빈문자열이 아닌 경우
		 * pageNo 파싱처리를 해주는 것이고 이 조건에 해당하지 않는 경우는 위에서 
		 * 쓴 것처럼 pageNo를 1로 처리한다.*/
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		/* 0보다 작은 숫자값을 입력해도 1페이지를 보여준다 */
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		/*검색을 했을때는 값이 있고 검색을 하지 않았을 때는 값이 없을 것이다
		 * MAP으로 담자*/
		String searchCondition = request.getParameter("searchCondition");
		String searchValue = request.getParameter("searchValue");
		
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);
		
		/*communityService(=boardService)*/
		CommunityService communityService = new CommunityService();
		
		/*CommunityService(=BoardService)*/
		/*selectWriteList(=selectBoardList)*/
		/*현재 요청페이지가 몇번 페이지이고 검색을 한다면 검색하려는 값과 조건이 무엇인지*/
		Map<String, Object> returnMap = communityService.selectWriteList(pageNo, searchMap);
		
		System.out.println("communityList : " + returnMap.get("communityList"));
		System.out.println("selectCriteria : " + returnMap.get("selectCriteria"));
		
		String path = "";
		if(returnMap.get("communityList") != null && returnMap.get("selectCriteria") != null) {
			path = "/WEB-INF/views/community/freeTalk.jsp";
			request.setAttribute("communityList", returnMap.get("communityList"));
			request.setAttribute("selectCriteria", returnMap.get("selectCriteria"));
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);	
		
		
		
	}




}
