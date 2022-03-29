package com.mgstore.payment.model.dto;

import com.mgstore.product.model.dto.ProductDTO;
import com.mgstore.user.model.dto.UserDTO;

public class ProductListDTO {
	
	private String userId;
	private UserDTO user; // 주문자이름, 연락처, email 가져오기
	private int proId;
	private ProductDTO product; // 상품명, 개당가격, 배송비 가져오기
	private int amount;
	
	public ProductListDTO() {}

	public ProductListDTO(String userId, UserDTO user, int proId, ProductDTO product, int amount) {
		super();
		this.userId = userId;
		this.user = user;
		this.proId = proId;
		this.product = product;
		this.amount = amount;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}

	public int getProId() {
		return proId;
	}

	public void setProId(int proId) {
		this.proId = proId;
	}

	public ProductDTO getProduct() {
		return product;
	}

	public void setProduct(ProductDTO product) {
		this.product = product;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "ProductListDTO [userId=" + userId + ", user=" + user + ", proId=" + proId + ", product=" + product
				+ ", amount=" + amount + "]";
	}
	
	
	
	

}
