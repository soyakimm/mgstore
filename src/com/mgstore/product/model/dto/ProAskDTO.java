package com.mgstore.product.model.dto;

import java.sql.Date;

import com.mgstore.user.model.dto.UserDTO;

public class ProAskDTO {
	
	private int PAskId;
	private String userID;
	private UserDTO user;
	private String PQuestion;
	private java.sql.Date PAskDate;
	private String PAskStatus;
	private String ManagerId;
	private String PAnswer;
	private java.sql.Date PAnswerDate;
	private int proId;
	private ProductDTO product;
	
	
	public ProAskDTO(){}


	public ProAskDTO(int pAskId, String userID, UserDTO user, String pQuestion, Date pAskDate, String pAskStatus,
			String managerId, String pAnswer, Date pAnswerDate, int proId, ProductDTO product) {
		super();
		PAskId = pAskId;
		this.userID = userID;
		this.user = user;
		PQuestion = pQuestion;
		PAskDate = pAskDate;
		PAskStatus = pAskStatus;
		ManagerId = managerId;
		PAnswer = pAnswer;
		PAnswerDate = pAnswerDate;
		this.proId = proId;
		this.product = product;
	}


	public int getPAskId() {
		return PAskId;
	}


	public void setPAskId(int pAskId) {
		PAskId = pAskId;
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


	public String getPQuestion() {
		return PQuestion;
	}


	public void setPQuestion(String pQuestion) {
		PQuestion = pQuestion;
	}


	public java.sql.Date getPAskDate() {
		return PAskDate;
	}


	public void setPAskDate(java.sql.Date pAskDate) {
		PAskDate = pAskDate;
	}


	public String getPAskStatus() {
		return PAskStatus;
	}


	public void setPAskStatus(String pAskStatus) {
		PAskStatus = pAskStatus;
	}


	public String getManagerId() {
		return ManagerId;
	}


	public void setManagerId(String managerId) {
		ManagerId = managerId;
	}


	public String getPAnswer() {
		return PAnswer;
	}


	public void setPAnswer(String pAnswer) {
		PAnswer = pAnswer;
	}


	public java.sql.Date getPAnswerDate() {
		return PAnswerDate;
	}


	public void setPAnswerDate(java.sql.Date pAnswerDate) {
		PAnswerDate = pAnswerDate;
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
		return "ProAskDTO [PAskId=" + PAskId + ", userID=" + userID + ", user=" + user + ", PQuestion=" + PQuestion
				+ ", PAskDate=" + PAskDate + ", PAskStatus=" + PAskStatus + ", ManagerId=" + ManagerId + ", PAnswer="
				+ PAnswer + ", PAnswerDate=" + PAnswerDate + ", proId=" + proId + ", product=" + product + "]";
	}


	

}
