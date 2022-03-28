package com.mgstore.product.model.dto;

import java.sql.Date;

import com.mgstore.user.model.dto.UserDTO;

public class ProAskDTO {
	
	private int pAskId;
	private String userID;
	private UserDTO user;
	private String pQuestion;
	private java.sql.Date pAskDate;
	private String pAskStatus;
	private String managerId;
	private String pAnswer;
	private java.sql.Date pAnswerDate;
	private int proId;
	private ProductDTO product;
	
	
	public ProAskDTO(){}


	public ProAskDTO(int pAskId, String userID, UserDTO user, String pQuestion, Date pAskDate, String pAskStatus,
			String managerId, String pAnswer, Date pAnswerDate, int proId, ProductDTO product) {
		super();
		this.pAskId = pAskId;
		this.userID = userID;
		this.user = user;
		this.pQuestion = pQuestion;
		this.pAskDate = pAskDate;
		this.pAskStatus = pAskStatus;
		this.managerId = managerId;
		this.pAnswer = pAnswer;
		this.pAnswerDate = pAnswerDate;
		this.proId = proId;
		this.product = product;
	}


	public int getpAskId() {
		return pAskId;
	}


	public void setpAskId(int pAskId) {
		this.pAskId = pAskId;
	}


	public String getUserID() {
		return userID;
	}


	public void setUserID(String userID) {
		this.userID = userID;
	}


	public UserDTO getUser() {
		return user;
	}


	public void setUser(UserDTO user) {
		this.user = user;
	}


	public String getpQuestion() {
		return pQuestion;
	}


	public void setpQuestion(String pQuestion) {
		this.pQuestion = pQuestion;
	}


	public java.sql.Date getpAskDate() {
		return pAskDate;
	}


	public void setpAskDate(java.sql.Date pAskDate) {
		this.pAskDate = pAskDate;
	}


	public String getpAskStatus() {
		return pAskStatus;
	}


	public void setpAskStatus(String pAskStatus) {
		this.pAskStatus = pAskStatus;
	}


	public String getManagerId() {
		return managerId;
	}


	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}


	public String getpAnswer() {
		return pAnswer;
	}


	public void setpAnswer(String pAnswer) {
		this.pAnswer = pAnswer;
	}


	public java.sql.Date getpAnswerDate() {
		return pAnswerDate;
	}


	public void setpAnswerDate(java.sql.Date pAnswerDate) {
		this.pAnswerDate = pAnswerDate;
	}


	public int getProId() {
		return proId;
	}


	public void setProId(int proId) {
		this.proId = proId;
	}


	public ProductDTO getProduct() {
		return product;
	}


	public void setProduct(ProductDTO product) {
		this.product = product;
	}


	@Override
	public String toString() {
		return "ProAskDTO [pAskId=" + pAskId + ", userID=" + userID + ", user=" + user + ", pQuestion=" + pQuestion
				+ ", pAskDate=" + pAskDate + ", pAskStatus=" + pAskStatus + ", managerId=" + managerId + ", pAnswer="
				+ pAnswer + ", pAnswerDate=" + pAnswerDate + ", proId=" + proId + ", product=" + product + "]";
	}


	

}
