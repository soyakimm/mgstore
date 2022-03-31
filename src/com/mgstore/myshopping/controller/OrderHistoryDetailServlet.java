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
import com.mgstore.payment.model.service.OrderService;
import com.mgstore.user.model.dto.UserDTO;

@WebServlet("/myshopping/historyDetail")
public class OrderHistoryDetailServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int ordId = Integer.parseInt(request.getParameter("ordId"));
		String userId = ((UserDTO) request.getSession().getAttribute("loginUser")).getUserId();
		
		OrderDTO order = new OrderDTO();
		order.setOrdId(ordId);
		order.setUserId(userId);
		
		OrderDTO ordDetail = new OrderHistoryService().selectHistoryDetail(order);
		
		System.out.println(ordDetail);
		
		String path ="";
		
		if(ordDetail != null) {
			path = "/WEB-INF/views/myshopping/orderHistoryDetail.jsp";
			request.setAttribute("ordDetail", ordDetail);
		} else {
			System.out.println("주문 상세조회 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}


}
