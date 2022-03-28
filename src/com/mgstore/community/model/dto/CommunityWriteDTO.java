package com.mgstore.community.model.dto;

import java.sql.Date;
import java.util.List;

import com.mgstore.user.model.dto.UserDTO;

public class CommunityWriteDTO{
	
	private int postId;
	private String userId;
	private UserDTO user;  //userId에 해당하는 유저이름을 가져온다
	private int categoryId;
	private CommunityCategoryDTO category; //categoryId에 해당하는 카테고리 이름을 가져온다
	private int headerId;
	private CommunityHeaderDTO header; //headerId에 해당하는 헤더 이름을 가져온다
	private String title;
	private Date date;
	private int views;
	private String text;
	private Date moddate;
	private String status;
	private List<CommunityPostImageDTO> postImgList;
	
	public CommunityWriteDTO() {}

	public CommunityWriteDTO(int postId, String userId, UserDTO user, int categoryId, CommunityCategoryDTO category,
			int headerId, CommunityHeaderDTO header, String title, Date date, int views, String text, Date moddate,
			String status, List<CommunityPostImageDTO> postImgList) {
		super();
		this.postId = postId;
		this.userId = userId;
		this.user = user;
		this.categoryId = categoryId;
		this.category = category;
		this.headerId = headerId;
		this.header = header;
		this.title = title;
		this.date = date;
		this.views = views;
		this.text = text;
		this.moddate = moddate;
		this.status = status;
		this.postImgList = postImgList;
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public CommunityCategoryDTO getCategory() {
		return category;
	}

	public void setCategory(CommunityCategoryDTO category) {
		this.category = category;
	}

	public int getHeaderId() {
		return headerId;
	}

	public void setHeaderId(int headerId) {
		this.headerId = headerId;
	}

	public CommunityHeaderDTO getHeader() {
		return header;
	}

	public void setHeader(CommunityHeaderDTO header) {
		this.header = header;
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

	public List<CommunityPostImageDTO> getPostImgList() {
		return postImgList;
	}

	public void setPostImgList(List<CommunityPostImageDTO> postImgList) {
		this.postImgList = postImgList;
	}

	@Override
	public String toString() {
		return "CommunityWriteDTO [postId=" + postId + ", userId=" + userId + ", user=" + user + ", categoryId="
				+ categoryId + ", category=" + category + ", headerId=" + headerId + ", header=" + header + ", title="
				+ title + ", date=" + date + ", views=" + views + ", text=" + text + ", moddate=" + moddate
				+ ", status=" + status + ", postImgList=" + postImgList + "]";
	}

	

	
	
	
	
}
