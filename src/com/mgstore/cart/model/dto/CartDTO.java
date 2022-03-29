package com.mgstore.cart.model.dto;

import com.mgstore.product.model.dto.ProductDTO;
import com.mgstore.user.model.dto.UserDTO;

public class CartDTO {
	
	private int proId;
	private ProductDTO product;
	private String userId;
	private UserDTO user;
	private int cartAmount;
	
	public CartDTO() {}

	public CartDTO(int proId, ProductDTO product, String userId, UserDTO user, int cartAmount) {
		super();
		this.proId = proId;
		this.product = product;
		this.userId = userId;
		this.user = user;
		this.cartAmount = cartAmount;
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

	public int getCartAmount() {
		return cartAmount;
	}

	public void setCartAmount(int cartAmount) {
		this.cartAmount = cartAmount;
	}

	@Override
	public String toString() {
		return "cartDTO [proId=" + proId + ", product=" + product + ", userId=" + userId + ", user=" + user
				+ ", cartAmount=" + cartAmount + "]";
	}

	

}