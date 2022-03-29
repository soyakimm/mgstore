package com.mgstore.myshopping.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.myshopping.model.service.WishService;
import com.mgstore.product.model.dto.ProLikeDTO;

@WebServlet("/myshopping/wishListDel")
public class wishDeleteSetvlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int proId = Integer.parseInt(request.getParameter("proId"));
		String userId = request.getParameter("userId");
		
		System.out.println("proId : " + proId);
		System.out.println("userId : " + userId);
		
		ProLikeDTO product = new ProLikeDTO();
		
		product.setProId(proId);
		product.setUserId(userId);
		
		System.out.println("proList: " + product);
		
		WishService wishService = new WishService();
		
		int result = wishService.deleteWishList(product);
		
		String path = "";
		
		if(result > 0) {
			path="/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "deleteWishList");
		} else {
			System.out.println("위시리스트 삭제 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}
