package com.mgstore.product.model.dto;

import java.sql.Date;

import com.mgstore.user.model.dto.UserDTO;

public class ProAskDTO {
	
	private int proAskId;
	private String proAskWriterUserId;
	private UserDTO writer;
	private String proQuestion;
	private java.sql.Date proAskDate;
	private String proAskStatus;
	private String managerId;
	private String proAnswer;
	private java.sql.Date proAnswerDate;
	private int proId;
	private ProductDTO product;
	
	
	public ProAskDTO(){}


	public ProAskDTO(int proAskId, String proAskWriterUserId, UserDTO writer, String proQuestion, Date proAskDate,
			String proAskStatus, String managerId, String proAnswer, Date proAnswerDate, int proId,
			ProductDTO product) {
		super();
		this.proAskId = proAskId;
		this.proAskWriterUserId = proAskWriterUserId;
		this.writer = writer;
		this.proQuestion = proQuestion;
		this.proAskDate = proAskDate;
		this.proAskStatus = proAskStatus;
		this.managerId = managerId;
		this.proAnswer = proAnswer;
		this.proAnswerDate = proAnswerDate;
		this.proId = proId;
		this.product = product;
	}


	public int getProAskId() {
		return proAskId;
	}


	public void setProAskId(int proAskId) {
		this.proAskId = proAskId;
	}


	public String getProAskWriterUserId() {
		return proAskWriterUserId;
	}


	public void setProAskWriterUserId(String proAskWriterUserId) {
		this.proAskWriterUserId = proAskWriterUserId;
	}


	public UserDTO getWriter() {
		return writer;
	}


	public void setWriter(UserDTO writer) {
		this.writer = writer;
	}


	public String getProQuestion() {
		return proQuestion;
	}


	public void setProQuestion(String proQuestion) {
		this.proQuestion = proQuestion;
	}


	public java.sql.Date getProAskDate() {
		return proAskDate;
	}


	public void setProAskDate(java.sql.Date proAskDate) {
		this.proAskDate = proAskDate;
	}


	public String getProAskStatus() {
		return proAskStatus;
	}


	public void setProAskStatus(String proAskStatus) {
		this.proAskStatus = proAskStatus;
	}


	public String getManagerId() {
		return managerId;
	}


	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}


	public String getProAnswer() {
		return proAnswer;
	}


	public void setProAnswer(String proAnswer) {
		this.proAnswer = proAnswer;
	}


	public java.sql.Date getProAnswerDate() {
		return proAnswerDate;
	}


	public void setProAnswerDate(java.sql.Date proAnswerDate) {
		this.proAnswerDate = proAnswerDate;
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
		return "ProAskDTO [proAskId=" + proAskId + ", proAskWriterUserId=" + proAskWriterUserId + ", writer=" + writer
				+ ", proQuestion=" + proQuestion + ", proAskDate=" + proAskDate + ", proAskStatus=" + proAskStatus
				+ ", managerId=" + managerId + ", proAnswer=" + proAnswer + ", proAnswerDate=" + proAnswerDate
				+ ", proId=" + proId + ", product=" + product + "]";
	}

	
	

}
