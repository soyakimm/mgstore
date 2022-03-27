package com.mgstore.community.model.dto;

import java.sql.Date;

import com.mgstore.user.model.dto.UserDTO;

public class CommunityWiteDTO{
	
	private int number;
	private UserDTO userId;
	private CommunityCategoryDTO categoryId;
	private CommunityHeaderDTO headerId;
	private String title;
	private Date date;
	private int views;
	private String text;
	private Date moddate;
	private String status;
	
	public CommunityWiteDTO() {}

	public CommunityWiteDTO(int number, UserDTO userId, CommunityCategoryDTO categoryId, CommunityHeaderDTO headerId,
			String title, Date date, int views, String text, Date moddate, String status) {
		super();
		this.number = number;
		this.userId = userId;
		this.categoryId = categoryId;
		this.headerId = headerId;
		this.title = title;
		this.date = date;
		this.views = views;
		this.text = text;
		this.moddate = moddate;
		this.status = status;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public UserDTO getUserId() {
		return userId;
	}

	public void setUserId(UserDTO userId) {
		this.userId = userId;
	}

	public CommunityCategoryDTO getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(CommunityCategoryDTO categoryId) {
		this.categoryId = categoryId;
	}

	public CommunityHeaderDTO getHeaderId() {
		return headerId;
	}

	public void setHeaderId(CommunityHeaderDTO headerId) {
		this.headerId = headerId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Date getModdate() {
		return moddate;
	}

	public void setModdate(Date moddate) {
		this.moddate = moddate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "CommunityWiteDTO [number=" + number + ", userId=" + userId + ", categoryId=" + categoryId
				+ ", headerId=" + headerId + ", title=" + title + ", date=" + date + ", views=" + views + ", text="
				+ text + ", moddate=" + moddate + ", status=" + status + "]";
	}
	
	
	
	
}
