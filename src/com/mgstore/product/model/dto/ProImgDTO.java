package com.mgstore.product.model.dto;

import java.sql.Date;

public class ProImgDTO {
	
	private int PImgId;
	private int proId;
	private ProductDTO product;
	private String PImgOrgName;
	private String PImgSvrName;
	private String PImgTmbName;
	private char PImgTmbYN;
	private int PImgSize;
	
	public ProImgDTO() {}
	
	public ProImgDTO(int pImgId, int proId, ProductDTO product, String pImgOrgName, String pImgSvrName,
			String pImgTmbName, char pImgTmbYN, int pImgSize) {
		super();
		PImgId = pImgId;
		this.proId = proId;
		this.product = product;
		PImgOrgName = pImgOrgName;
		PImgSvrName = pImgSvrName;
		PImgTmbName = pImgTmbName;
		PImgTmbYN = pImgTmbYN;
		PImgSize = pImgSize;
	}
	public int getPImgId() {
		return PImgId;
	}
	public void setPImgId(int pImgId) {
		PImgId = pImgId;
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
	public String getPImgOrgName() {
		return PImgOrgName;
	}
	public void setPImgOrgName(String pImgOrgName) {
		PImgOrgName = pImgOrgName;
	}
	public String getPImgSvrName() {
		return PImgSvrName;
	}
	public void setPImgSvrName(String pImgSvrName) {
		PImgSvrName = pImgSvrName;
	}
	public String getPImgTmbName() {
		return PImgTmbName;
	}
	public void setPImgTmbName(String pImgTmbName) {
		PImgTmbName = pImgTmbName;
	}
	public char getPImgTmbYN() {
		return PImgTmbYN;
	}
	public void setPImgTmbYN(char pImgTmbYN) {
		PImgTmbYN = pImgTmbYN;
	}
	public int getPImgSize() {
		return PImgSize;
	}
	public void setPImgSize(int pImgSize) {
		PImgSize = pImgSize;
	}
	@Override
	public String toString() {
		return "ProImgDTO [PImgId=" + PImgId + ", proId=" + proId + ", product=" + product + ", PImgOrgName="
				+ PImgOrgName + ", PImgSvrName=" + PImgSvrName + ", PImgTmbName=" + PImgTmbName + ", PImgTmbYN="
				+ PImgTmbYN + ", PImgSize=" + PImgSize + "]";
	}
	

	
	

}
