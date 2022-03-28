package com.mgstore.product.model.dto;

import com.mgstore.user.model.dto.UserDTO;

public class ProLikeDTO {
	
	private String userId;
	private UserDTO user;
	private int proId; 
	private ProductDTO product;
	
	
	public ProLikeDTO() {}


	public ProLikeDTO(String userId, UserDTO user, int proId, ProductDTO product) {
		super();
		this.userId = userId;
		this.user = user;
		this.proId = proId;
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


	@Override
	public String toString() {
		return "ProLikeDTO [userId=" + userId + ", user=" + user + ", proId=" + proId + ", product=" + product + "]";
	}
	
	

}
