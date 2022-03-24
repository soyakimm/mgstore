package com.mgstore.notice.model.dto;

public class AskCategoryDTO {
	
	private int askCategoryId;
	private String askCategoryName;
	
	
	public AskCategoryDTO() {}


	public AskCategoryDTO(int askCategoryId, String askCategoryName) {
		super();
		this.askCategoryId = askCategoryId;
		this.askCategoryName = askCategoryName;
	}


	public int getAskCategoryId() {
		return askCategoryId;
	}


	public void setAskCategoryId(int askCategoryId) {
		this.askCategoryId = askCategoryId;
	}


	public String getAskCategoryName() {
		return askCategoryName;
	}


	public void setAskCategoryName(String askCategoryName) {
		this.askCategoryName = askCategoryName;
	}


	@Override
	public String toString() {
		return "AskCategoryDTO [askCategoryId=" + askCategoryId + ", askCategoryName=" + askCategoryName + "]";
	}
	
	

}
