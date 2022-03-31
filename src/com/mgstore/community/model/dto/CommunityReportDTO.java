package com.mgstore.community.model.dto;

import java.sql.Date;

import com.mgstore.user.model.dto.UserDTO;

public class CommunityReportDTO {
	
	private String userId;
	private UserDTO user;  //userId에 해당하는 유저이름을 가져온다
	private int postId;
	private CommunityWriteDTO write; 
	private Date reportDate;
	private String reportReason;
	
	public CommunityReportDTO() {}

	public CommunityReportDTO(String userId, UserDTO user, int postId, CommunityWriteDTO write, Date reportDate,
			String reportReason) {
		super();
		this.userId = userId;
		this.user = user;
		this.postId = postId;
		this.write = write;
		this.reportDate = reportDate;
		this.reportReason = reportReason;
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

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public CommunityWriteDTO getWrite() {
		return write;
	}

	public void setWrite(CommunityWriteDTO write) {
		this.write = write;
	}

	public Date getReportDate() {
		return reportDate;
	}

	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}

	public String getReportReason() {
		return reportReason;
	}

	public void setReportReason(String reportReason) {
		this.reportReason = reportReason;
	}

	@Override
	public String toString() {
		return "CommunityReportDTO [userId=" + userId + ", user=" + user + ", postId=" + postId + ", write=" + write
				+ ", reportDate=" + reportDate + ", reportReason=" + reportReason + "]";
	}

	

}
