package com.mgstore.notice.model.dto;

public class AskConditionDTO {
	
	private String searchCondition;
	private String userId;
	
	public AskConditionDTO() {}

	public AskConditionDTO(String searchCondition, String userId) {
		super();
		this.searchCondition = searchCondition;
		this.userId = userId;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "AskConditionDTO [searchCondition=" + searchCondition + ", userId=" + userId + "]";
	}
	
	
}
