package com.mgstore.payment.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.payment.model.dto.ProductListDTO;
import com.mgstore.payment.model.service.PaymentService;
import com.mgstore.product.model.dto.ProductDTO;
import com.mgstore.user.model.dto.UserDTO;

@WebServlet("/payment/list")
public class PaymentListServlet extends HttpServlet {
	/* 장바구니에서 리스트 넘겨옴 */
	/* 조회 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 1. 상품 페이지에서 상품id/수량 전달받기 
		 * 2. ProductListDTO에 전달받은 값 넣기
		 *    (user 관련정보는 session에서 빼와서 사용 / 회원 적립금은 user session에서 id값 추출해서 PointDTO조회 
		 * 3. 전달 받은 값 넣은 productList forward처리*/
		
		/*상품번호*/
		//int proId = Integer.parseInt(request.getParameter("proId")); //상품에서 넘어올 번호
		/* int amount = Integer.parseInt(request.getParameter("amount")); ==> 상품에서 넘어올 수량*/
		
		/*임시 상품 번호*/
		int proId = 1;
		/*임시 상품 수량*/
		int amount = 2;
		String userId = ((UserDTO)request.getSession().getAttribute("loginUser")).getUserId();
		
		ProductListDTO orderList = new ProductListDTO();
		orderList.setProId(proId);
		orderList.setAmount(amount);
		orderList.setUserId(userId);
		
		PaymentService paymentService = new PaymentService();
		
		
		
		
		
		
	}

	/* 결제 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 1. form 데이터로 넘겨 받은값 OrderDTO에 넣기
		 * 2. */
		
	}

}
