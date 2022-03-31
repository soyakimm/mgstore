package com.mgstore.myshopping.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.myshopping.model.service.OrderHistoryService;
import com.mgstore.payment.model.dto.OrderDTO;
import com.mgstore.user.model.dto.UserDTO;

@WebServlet("/myshopping/orderHistory")
public class OrderHistoryServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = ((UserDTO) request.getSession().getAttribute("loginUser")).getUserId();
		
		List<OrderDTO> orderHistoryList = new OrderHistoryService().selectAllHistoryList(userId);
		
		System.out.println("orderHistoryList : " + orderHistoryList);
		
		String path ="";
		
		if(orderHistoryList != null) {
			path = "/WEB-INF/views/myshopping/orderHistory.jsp";
			request.setAttribute("historyList", orderHistoryList);
		} else {
			path = "/WEB-INF/views/myshopping/failedHistory.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}


}
