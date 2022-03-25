package com.mgstore.notice.model.dto;

import java.util.Date;

import com.mgstore.user.model.dto.UserDTO;

public class AskedDTO {
	
	private int askId;
	private String askTitle;
	private String askContents;
	private java.util.Date createdDate;
	private int askViews;
	private String askExposure;
	private String userId; 
	private UserDTO writer; //userDTO에서 userID와 일치하는 닉네임을 가져옴
	private java.util.Date updateDate;
	private int categoryCode;
	private AskCategoryDTO category; //카테고리 코드와 일치하는 카테고리명을 가져옴
	
	
	public AskedDTO() {}


	public AskedDTO(int askId, String askTitle, String askContents, Date createdDate, int askViews, String askExposure,
			String userId, UserDTO writer, Date updateDate, int categoryCode, AskCategoryDTO category) {
		super();
		this.askId = askId;
		this.askTitle = askTitle;
		this.askContents = askContents;
		this.createdDate = createdDate;
		this.askViews = askViews;
		this.askExposure = askExposure;
		this.userId = userId;
		this.writer = writer;
		this.updateDate = updateDate;
		this.categoryCode = categoryCode;
		this.category = category;
	}


	public int getAskId() {
		return askId;
	}


	public void setAskId(int askId) {
		this.askId = askId;
	}


	public String getAskTitle() {
		return askTitle;
	}


	public void setAskTitle(String askTitle) {
		this.askTitle = askTitle;
	}


	public String getAskContents() {
		return askContents;
	}


	public void setAskContents(String askContents) {
		this.askContents = askContents;
	}


	public java.util.Date getCreatedDate() {
		return createdDate;
	}


	public void setCreatedDate(java.util.Date createdDate) {
		this.createdDate = createdDate;
	}


	public int getAskViews() {
		return askViews;
	}


	public void setAskViews(int askViews) {
		this.askViews = askViews;
	}


	public String getAskExposure() {
		return askExposure;
	}


	public void setAskExposure(String askExposure) {
		this.askExposure = askExposure;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public UserDTO getWriter() {
		return writer;
	}


	public void setWriter(UserDTO writer) {
		this.writer = writer;
	}


	public java.util.Date getUpdateDate() {
		return updateDate;
	}


	public void setUpdateDate(java.util.Date updateDate) {
		this.updateDate = updateDate;
	}


	public int getcategoryCode() {
		return categoryCode;
	}


	public void setcategoryCode(int categoryCode) {
		this.categoryCode = categoryCode;
	}


	public AskCategoryDTO getCategory() {
		return category;
	}


	public void setCategory(AskCategoryDTO category) {
		this.category = category;
	}


	@Override
	public String toString() {
		return "AskedDTO [askId=" + askId + ", askTitle=" + askTitle + ", askContents=" + askContents + ", createdDate="
				+ createdDate + ", askViews=" + askViews + ", askExposure=" + askExposure + ", userId=" + userId
				+ ", writer=" + writer + ", updateDate=" + updateDate + ", categoryCode=" + categoryCode + ", category="
				+ category + "]";
	}


	


	

}
