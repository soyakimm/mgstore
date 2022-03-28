package com.mgstore.mypage.model.dto;

public class MyPostDTO {
	
	private String postId;
	private String userId;
	private String categoryId;
	private String headerId;
	private String postTitle;
	private String postDate;
	private String postViews;
	private String postText;
	private String postModdate;
	private String postStatus;
	

	public MyPostDTO() {
		super();
	}

	public MyPostDTO(String postId, String userId, String categoryId, String headerId, String postTitle,
			String postDate, String postViews, String postText, String postModdate, String postStatus) {
		super();
		this.postId = postId;
		this.userId = userId;
		this.categoryId = categoryId;
		this.headerId = headerId;
		this.postTitle = postTitle;
		this.postDate = postDate;
		this.postViews = postViews;
		this.postText = postText;
		this.postModdate = postModdate;
		this.postStatus = postStatus;
				
	}

	public String getPostId() {
		return postId;
	}

	public void setPostId(String postId) {
		this.postId = postId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getHeaderId() {
		return headerId;
	}

	public void setHeaderId(String headerId) {
		this.headerId = headerId;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostDate() {
		return postDate;
	}

	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}

	public String getPostViews(String postViews) {
		return postViews;
	}

	public void setPostViews(String postViews) {
		this.postViews = postViews;
	}

	public String getPostText() {
		return postText;
	}

	public void setPostText(String postText) {
		this.postText = postText;
	}
	public String getPostModdate() {
		return postModdate;
	}

	public void setPostModdate(String postModdate) {
		this.postModdate = postModdate;
	}
	public String getPostStatus() {
		return postStatus;
	}

	public void setPostStatus(String postStatus) {
		this.postStatus = postStatus;
	}


	@Override
	public String toString() {
		return "PostDTO [postId=" + postId + ", userId=" + userId + ", categoryId=" + categoryId + ", headerId="
				+ headerId + ", postTitle=" + postTitle + ", postDate=" + postDate + ", postViews=" + postViews
				+ ", postText=" + postText + ", postModdate=" + postModdate + ",postStatus" + postStatus + "]";
	} 
	

}