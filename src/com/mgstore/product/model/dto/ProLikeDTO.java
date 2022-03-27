package com.mgstore.product.model.dto;

import com.mgstore.user.model.dto.UserDTO;

public class ProLikeDTO {
	
	private UserDTO userId;
	private int proId;
	private ProductDTO product;
	
	
	public ProLikeDTO() {}


	public ProLikeDTO(UserDTO userId, int proId, ProductDTO product) {
		super();
		this.userId = userId;
		this.proId = proId;
		this.product = product;
	}


	public UserDTO getUserId() {
		return userId;
	}


	public void setUserId(UserDTO userId) {
		this.userId = userId;
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
		return "ProLikeDTO [userId=" + userId + ", proId=" + proId + ", product=" + product + "]";
	}

	

}
