package com.mgstore.myshopping.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.myshopping.model.service.WishService;
import com.mgstore.product.model.dto.ProLikeDTO;

@WebServlet("/myshopping/wishList")
public class wishListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		WishService wishService = new WishService();
		
		List<ProLikeDTO> wishList = wishService.selectWishList();
		
		for(ProLikeDTO proLike : wishList) {
			System.out.println(proLike);
		}
		
		String path = "";
		if(wishList != null) {
			path="/WEB-INF/views/myshopping/wishList.jsp";
			request.setAttribute("wishList", wishList);
		} else {
			System.out.println("조회 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}


}
