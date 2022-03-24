package com.mgstore.user.model.dto;

import java.sql.Date;

public class UserDTO {
	
	private String userId;
	private String userPwd;
	private String userName;
	private String nickname;
	private String email;
	private String phone;
	private String address;
	private String agreement;
	private String role;
	private String userStatus;
	private java.sql.Date regDate;
	private java.sql.Date modDate;
	
	public UserDTO() {}

	public UserDTO(String userId, String userPwd, String userName, String nickname, String email, String phone,
			String address, String agreement, String role, String userStatus, Date regDate, Date modDate) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickname = nickname;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.agreement = agreement;
		this.role = role;
		this.userStatus = userStatus;
		this.regDate = regDate;
		this.modDate = modDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAgreement() {
		return agreement;
	}

	public void setAgreement(String agreement) {
		this.agreement = agreement;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	public java.sql.Date getRegDate() {
		return regDate;
	}

	public void setRegDate(java.sql.Date regDate) {
		this.regDate = regDate;
	}

	public java.sql.Date getModDate() {
		return modDate;
	}

	public void setModDate(java.sql.Date modDate) {
		this.modDate = modDate;
	}

	@Override
	public String toString() {
		return "UserDTO [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", nickname="
				+ nickname + ", email=" + email + ", phone=" + phone + ", address=" + address + ", agreement="
				+ agreement + ", role=" + role + ", userStatus=" + userStatus + ", regDate=" + regDate + ", modDate="
				+ modDate + "]";
	}

}
