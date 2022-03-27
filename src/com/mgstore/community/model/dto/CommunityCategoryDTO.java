package com.mgstore.community.model.dto;

public class CommunityCategoryDTO {
	
	private int categoryId;
	private String categoryName;
	
	public CommunityCategoryDTO() {}

	public CommunityCategoryDTO(int categoryId, String categoryName) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public String toString() {
		return "CommunityCategoryDTO [categoryId=" + categoryId + ", categoryName=" + categoryName + "]";
	}

	

}
