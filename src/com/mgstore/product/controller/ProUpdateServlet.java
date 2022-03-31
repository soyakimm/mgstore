package com.mgstore.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.product.model.dto.ProductDTO;
import com.mgstore.product.model.service.ProductService;

@WebServlet("/product/update")
public class ProUpdateServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.parseInt(request.getParameter("id"));
		
		ProductService productService = new ProductService();
		ProductDTO product = productService.selectOneThumbnailProduct(no);
		
		String path = "";
		if(product != null) {
			path = "/WEB-INF/views/product/proAdminModify.jsp";
			request.setAttribute("product", product);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "상품 수정 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		int category = Integer.parseInt(request.getParameter("category"));
		int price = Integer.parseInt(request.getParameter("price"));
		String content = request.getParameter("content");
		
		ProductDTO updateProduct = new ProductDTO();
		updateProduct.setProTitle(title);
		updateProduct.setProCateId(category);
		updateProduct.setPrice(price);
		updateProduct.setProContent(content);

		
		ProductService productService = new ProductService();
		int result = productService.updateProduct(updateProduct);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateNotice");
			request.setAttribute("id", id);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "상품 수정에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}


}
