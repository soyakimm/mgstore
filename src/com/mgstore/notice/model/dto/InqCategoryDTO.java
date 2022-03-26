package com.mgstore.notice.model.dto;

public class InqCategoryDTO {
	
	private int inqCategoryCode;
	private String inqCategoryName;
	
	public InqCategoryDTO() {}

	public InqCategoryDTO(int inqCategoryCode, String inqCategoryName) {
		super();
		this.inqCategoryCode = inqCategoryCode;
		this.inqCategoryName = inqCategoryName;
	}

	public int getInqCategoryCode() {
		return inqCategoryCode;
	}

	public void setInqCategoryCode(int inqCategoryCode) {
		this.inqCategoryCode = inqCategoryCode;
	}

	public String getInqCategoryName() {
		return inqCategoryName;
	}

	public void setInqCategoryName(String inqCategoryName) {
		this.inqCategoryName = inqCategoryName;
	}

	@Override
	public String toString() {
		return "InqCategoryDTO [inqCategoryCode=" + inqCategoryCode + ", inqCategoryName=" + inqCategoryName + "]";
	}
	
	
}
