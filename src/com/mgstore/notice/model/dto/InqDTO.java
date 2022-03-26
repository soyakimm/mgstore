package com.mgstore.notice.model.dto;

import java.util.Date;

public class InqDTO {
	
	private int inqId;
	private String inqTitle;
	private String inqContents;
	private java.util.Date inqDate;
	private String inqAnsStatus;
	private String inqDelStatus;
	private String ansContents;
	private java.util.Date ansDate;
	private String ansDelStatus;
	private String userId;
	private int inqCategoryId;
	private InqCategoryDTO inqCategoryName;
	private String adminId;
	
	public InqDTO() {}

	public InqDTO(int inqId, String inqTitle, String inqContents, Date inqDate, String inqAnsStatus,
			String inqDelStatus, String ansContents, Date ansDate, String ansDelStatus, String userId, int inqCategoryId,
			InqCategoryDTO inqCategoryName, String adminId) {
		super();
		this.inqId = inqId;
		this.inqTitle = inqTitle;
		this.inqContents = inqContents;
		this.inqDate = inqDate;
		this.inqAnsStatus = inqAnsStatus;
		this.inqDelStatus = inqDelStatus;
		this.ansContents = ansContents;
		this.ansDate = ansDate;
		this.ansDelStatus = ansDelStatus;
		this.userId = userId;
		this.inqCategoryId = inqCategoryId;
		this.inqCategoryName = inqCategoryName;
		this.adminId = adminId;
	}

	public int getInqId() {
		return inqId;
	}

	public void setInqId(int inqId) {
		this.inqId = inqId;
	}

	public String getInqTitle() {
		return inqTitle;
	}

	public void setInqTitle(String inqTitle) {
		this.inqTitle = inqTitle;
	}

	public String getInqContents() {
		return inqContents;
	}

	public void setInqContents(String inqContents) {
		this.inqContents = inqContents;
	}

	public java.util.Date getInqDate() {
		return inqDate;
	}

	public void setInqDate(java.util.Date inqDate) {
		this.inqDate = inqDate;
	}

	public String getInqAnsStatus() {
		return inqAnsStatus;
	}

	public void setInqAnsStatus(String inqAnsStatus) {
		this.inqAnsStatus = inqAnsStatus;
	}

	public String getInqDelStatus() {
		return inqDelStatus;
	}

	public void setInqDelStatus(String inqDelStatus) {
		this.inqDelStatus = inqDelStatus;
	}

	public String getansContents() {
		return ansContents;
	}

	public void setansContents(String ansContents) {
		this.ansContents = ansContents;
	}

	public java.util.Date getAnsDate() {
		return ansDate;
	}

	public void setAnsDate(java.util.Date ansDate) {
		this.ansDate = ansDate;
	}

	public String getAnsDelStatus() {
		return ansDelStatus;
	}

	public void setAnsDelStatus(String ansDelStatus) {
		this.ansDelStatus = ansDelStatus;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getInqCategoryId() {
		return inqCategoryId;
	}

	public void setInqCategoryId(int inqCategoryId) {
		this.inqCategoryId = inqCategoryId;
	}

	public InqCategoryDTO getInqCategoryName() {
		return inqCategoryName;
	}

	public void setInqCategoryName(InqCategoryDTO inqCategoryName) {
		this.inqCategoryName = inqCategoryName;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	@Override
	public String toString() {
		return "InqDTO [inqId=" + inqId + ", inqTitle=" + inqTitle + ", inqContents=" + inqContents + ", inqDate="
				+ inqDate + ", inqAnsStatus=" + inqAnsStatus + ", inqDelStatus=" + inqDelStatus + ", ansContents="
				+ ansContents + ", ansDate=" + ansDate + ", ansDelStatus=" + ansDelStatus + ", userId=" + userId
				+ ", inqCategoryId=" + inqCategoryId + ", inqCategoryName=" + inqCategoryName + ", adminId=" + adminId
				+ "]";
	}
	
	

	
}
