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



@WebServlet("/product/detail")
public class ProDetailServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		ProductDTO product = new ProductService().selectOneThumbnailProduct(id);
		System.out.println(product);
		
		String path = "";
		if(product != null) {
			path = "/WEB-INF/views/product/proDetail.jsp";
			request.setAttribute("product", product);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "상품 상세 조회에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

// 조회용
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		String path = "/WEB-INF/views/product/proDetail.jsp";
//		request.getRequestDispatcher(path).forward(request, response);
//	}

}
