package com.mgstore.product.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.product.model.dto.ProductDTO;
import com.mgstore.product.model.service.ProductService;

@WebServlet("/product/list")
public class ProductSelectListServlet extends HttpServlet {

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
		
		String searchCondition = request.getParameter("searchCondition");
		String searchValue = request.getParameter("searchValue");
		
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);

		ProductService productService = new ProductService();
		
		Map<String, Object> returnMap = productService.selectThumbnailList(pageNo, searchMap);
		
		System.out.println("productList : " + returnMap.get("productList"));
		System.out.println("selectCriteria : " + returnMap.get("selectCriteria"));
		
		String path = "";
		if(returnMap.get("productList") != null && returnMap.get("selectCriteria") != null) {
			path = "/WEB-INF/views/product/proList.jsp";
			request.setAttribute("productList", returnMap.get("productList"));
			request.setAttribute("selectCriteria", returnMap.get("selectCriteria"));
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);	
		
	}
	
		
// 페이지 조회	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		String path = "/WEB-INF/views/product/proList.jsp";
//		request.getRequestDispatcher(path).forward(request, response);
//	}

}
