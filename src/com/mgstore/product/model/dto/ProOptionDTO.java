package com.mgstore.product.model.dto;

public class ProOptionDTO {
	
	private int OptId;
	private String OptCont;
	private int OptPrice;
	private int OptAmount;
	private int OptPId;
	private int proId;
	private ProductDTO product;
	
	public ProOptionDTO(){}
	
	public ProOptionDTO(int optId, String optCont, int optPrice, int optAmount, int optPId, int proId,
			ProductDTO product) {
		super();
		OptId = optId;
		OptCont = optCont;
		OptPrice = optPrice;
		OptAmount = optAmount;
		OptPId = optPId;
		this.proId = proId;
		this.product = product;
	}

	public int getOptId() {
		return OptId;
	}

	public void setOptId(int optId) {
		OptId = optId;
	}

	public String getOptCont() {
		return OptCont;
	}

	public void setOptCont(String optCont) {
		OptCont = optCont;
	}

	public int getOptPrice() {
		return OptPrice;
	}

	public void setOptPrice(int optPrice) {
		OptPrice = optPrice;
	}

	public int getOptAmount() {
		return OptAmount;
	}

	public void setOptAmount(int optAmount) {
		OptAmount = optAmount;
	}

	public int getOptPId() {
		return OptPId;
	}

	public void setOptPId(int optPId) {
		OptPId = optPId;
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
		return "ProOptionDTO [OptId=" + OptId + ", OptCont=" + OptCont + ", OptPrice=" + OptPrice + ", OptAmount="
				+ OptAmount + ", OptPId=" + OptPId + ", proId=" + proId + ", product=" + product + "]";
	}
	
	
	
	
}
