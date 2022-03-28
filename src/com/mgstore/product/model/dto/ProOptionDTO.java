package com.mgstore.product.model.dto;

public class ProOptionDTO {
	
	private int optId;
	private String optCont;
	private int optPrice;
	private int optAmount;
	private int optPId;
	private int proId;
	private ProductDTO product;
	
	public ProOptionDTO(){}

	public ProOptionDTO(int optId, String optCont, int optPrice, int optAmount, int optPId, int proId,
			ProductDTO product) {
		super();
		this.optId = optId;
		this.optCont = optCont;
		this.optPrice = optPrice;
		this.optAmount = optAmount;
		this.optPId = optPId;
		this.proId = proId;
		this.product = product;
	}

	public int getOptId() {
		return optId;
	}

	public void setOptId(int optId) {
		this.optId = optId;
	}

	public String getOptCont() {
		return optCont;
	}

	public void setOptCont(String optCont) {
		this.optCont = optCont;
	}

	public int getOptPrice() {
		return optPrice;
	}

	public void setOptPrice(int optPrice) {
		this.optPrice = optPrice;
	}

	public int getOptAmount() {
		return optAmount;
	}

	public void setOptAmount(int optAmount) {
		this.optAmount = optAmount;
	}

	public int getOptPId() {
		return optPId;
	}

	public void setOptPId(int optPId) {
		this.optPId = optPId;
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
		return "ProOptionDTO [optId=" + optId + ", optCont=" + optCont + ", optPrice=" + optPrice + ", optAmount="
				+ optAmount + ", optPId=" + optPId + ", proId=" + proId + ", product=" + product + "]";
	}

	
	
}
