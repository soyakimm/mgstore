package com.mgstore.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.product.model.dto.ProAskDTO;
import com.mgstore.user.model.dto.UserDTO;




@WebServlet("/product/asked/user")
public class ProAskedUserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/product/proAskedUser.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

}
