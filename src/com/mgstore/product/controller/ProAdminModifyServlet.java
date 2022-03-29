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



@WebServlet("/product/admin/modify")
public class ProAdminModifyServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/product/proAdminModify.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

}
