package com.mgstore.cart.controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/cart/cart.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

}
