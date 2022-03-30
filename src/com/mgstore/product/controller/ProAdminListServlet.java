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



@WebServlet("/product/admin")
public class ProAdminListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ProductService productService = new ProductService();
		
		List<ProductDTO> thumbnailList = productService.selectAllThumbnailList();
		
		for(ProductDTO thumbnail : thumbnailList) {
			System.out.println(thumbnail);
		}
		
		String path = "";
		if(thumbnailList != null) {
			path = "/WEB-INF/views/product/proAdmin.jsp";
			request.setAttribute("thumbnailList", thumbnailList);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "상품관리 게시판 조회에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}
	


}
