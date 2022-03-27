package com.mgstore.basket.model.dto;

import com.mgstore.product.model.dto.ProductDTO;
import com.mgstore.user.model.dto.UserDTO;

public class BasketDTO {
	
	private int proId;
	private ProductDTO product;
	private String userId;
	private UserDTO user;
	private int basketAmount;
	
	public BasketDTO() {}

	public BasketDTO(int proId, ProductDTO product, String userId, UserDTO user, int basketAmount) {
		super();
		this.proId = proId;
		this.product = product;
		this.userId = userId;
		this.user = user;
		this.basketAmount = basketAmount;
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

	public int getBasketAmount() {
		return basketAmount;
	}

	public void setBasketAmount(int basketAmount) {
		this.basketAmount = basketAmount;
	}

	@Override
	public String toString() {
		return "BasketDTO [proId=" + proId + ", product=" + product + ", userId=" + userId + ", user=" + user
				+ ", basketAmount=" + basketAmount + "]";
	}

	

}