package com.mgstore.product.model.dto;

public class ProCateDTO {
	
	private int pCateId;
	private String pCateName;
	private int pCatePId;
	
	public ProCateDTO(){}

	public ProCateDTO(int pCateId, String pCateName, int pCatePId) {
		super();
		this.pCateId = pCateId;
		this.pCateName = pCateName;
		this.pCatePId = pCatePId;
	}

	public int getpCateId() {
		return pCateId;
	}

	public void setpCateId(int pCateId) {
		this.pCateId = pCateId;
	}

	public String getpCateName() {
		return pCateName;
	}

	public void setpCateName(String pCateName) {
		this.pCateName = pCateName;
	}

	public int getpCatePId() {
		return pCatePId;
	}

	public void setpCatePId(int pCatePId) {
		this.pCatePId = pCatePId;
	}

	@Override
	public String toString() {
		return "ProCateDTO [pCateId=" + pCateId + ", pCateName=" + pCateName + ", pCatePId=" + pCatePId + "]";
	}
	
	
	
}
