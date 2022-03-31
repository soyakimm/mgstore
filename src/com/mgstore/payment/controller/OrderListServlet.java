package com.mgstore.payment.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.payment.model.dto.OrderDTO;
import com.mgstore.payment.model.service.OrderService;
import com.mgstore.user.model.dto.UserDTO;

@WebServlet("/payment/orderList")
public class OrderListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		request.getRequestDispatcher("/WEB-INF/views/payment/orderList.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*session에서 로그인된 유저 id,name 빼올수있는거 빼오기*/
		/*필요한 정보*/
		/*order테이블에 인서트*/
		 String adrCode = request.getParameter("buyer_postcode"); //배송지 우편번호 
		 String address = request.getParameter("buyer_addr"); //배송 주소 
		 String adrDetail = request.getParameter("buyer_addr2"); //배송 나머지 상세주소 
		 String ordName = request.getParameter("delivery_user"); // 수령자이름 
		 String ordPhone = request.getParameter("buyer_tel"); // 연락처 
		 String userId = ((UserDTO) request.getSession().getAttribute("loginUser")).getUserId();
		 
		 /*결제 테이블에 인서트*/
		 //int payPoint = Integer.parseInt(request.getParameter(name));	//사용적립금액 (보류)
		 int payTotal = Integer.parseInt(request.getParameter("proTotal"));	//결제 최종금액 
		 int payProTotal = Integer.parseInt(request.getParameter("productPrice"));	//선택한 상품 총 금액

		 /*주문상세내역 인서트*/
		 int optionId = Integer.parseInt(request.getParameter("proId")); //상품옵션 아이디	//
		 int ordQty = Integer.parseInt(request.getParameter("productQty")); //상품수량
		 
		 OrderDTO orderList = new OrderDTO();
		 orderList.setAdrCode(adrCode);
		 orderList.setAddress(address);
		 orderList.setAdrDetail(adrDetail);
		 orderList.setOrdName(ordName);
		 orderList.setOrdPhone(ordPhone);
		 orderList.setUserId(userId);
		 
		 orderList.setPayProTotal(payProTotal); //상품 총 금액
		 orderList.setPayAmount(payTotal); //최종 결제 금액
		 orderList.setOptionId(optionId);
		 orderList.setOrdQty(ordQty);
		 
		 System.out.println("orderList : " + orderList);
		 
		 OrderService orderService = new OrderService();
		 
		 int result = orderService.insertOrder(orderList);
		 result += orderService.insertOrderDetail(orderList);
		 result += orderService.insertPayment(orderList);
		 

		 String path="";
		 if(result > 2) {
			 path = "/WEB-INF/views/common/success.jsp";
			 request.setAttribute("successCode", "insertOder");
		 } else {
			 System.out.println("결제에 실패했습니다");
		 }
		 
		 request.getRequestDispatcher(path).forward(request, response);

		
		
	}

}
