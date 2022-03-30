package com.mgstore.product.model.dto;
import java.sql.Date;
import java.util.List;
public class ProductDTO {
	
	private int proId;
	private int proCateId;
	private ProCateDTO category;
	private String proTitle;
	private int price;
	private int deliveryFee;
	private int proAmount;
	private String proContent;
	private int proPoint;
	private java.sql.Date proDate;
	private int ratingSum;
	private int ratingAmount;
	private char proStatus;
	private List<ProImgDTO> ProImgList;
	
	public ProductDTO() {}

	public ProductDTO(int proId, int proCateId, ProCateDTO category, String proTitle, int price, int deliveryFee,
			int proAmount, String proContent, int proPoint, Date proDate, int ratingSum, int ratingAmount,
			char proStatus, List<ProImgDTO> proImgList) {
		super();
		this.proId = proId;
		this.proCateId = proCateId;
		this.category = category;
		this.proTitle = proTitle;
		this.price = price;
		this.deliveryFee = deliveryFee;
		this.proAmount = proAmount;
		this.proContent = proContent;
		this.proPoint = proPoint;
		this.proDate = proDate;
		this.ratingSum = ratingSum;
		this.ratingAmount = ratingAmount;
		this.proStatus = proStatus;
		ProImgList = proImgList;
	}

	public int getProId() {
		return proId;
	}

	public void setProId(int proId) {
		this.proId = proId;
	}

	public int getProCateId() {
		return proCateId;
	}

	public void setProCateId(int proCateId) {
		this.proCateId = proCateId;
	}

	public ProCateDTO getCategory() {
		return category;
	}

	public void setCategory(ProCateDTO category) {
		this.category = category;
	}

	public String getProTitle() {
		return proTitle;
	}

	public void setProTitle(String proTitle) {
		this.proTitle = proTitle;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDeliveryFee() {
		return deliveryFee;
	}

	public void setDeliveryFee(int deliveryFee) {
		this.deliveryFee = deliveryFee;
	}

	public int getProAmount() {
		return proAmount;
	}

	public void setProAmount(int proAmount) {
		this.proAmount = proAmount;
	}

	public String getProContent() {
		return proContent;
	}

	public void setProContent(String proContent) {
		this.proContent = proContent;
	}

	public int getProPoint() {
		return proPoint;
	}

	public void setProPoint(int proPoint) {
		this.proPoint = proPoint;
	}

	public java.sql.Date getProDate() {
		return proDate;
	}

	public void setProDate(java.sql.Date proDate) {
		this.proDate = proDate;
	}

	public int getRatingSum() {
		return ratingSum;
	}

	public void setRatingSum(int ratingSum) {
		this.ratingSum = ratingSum;
	}

	public int getRatingAmount() {
		return ratingAmount;
	}

	public void setRatingAmount(int ratingAmount) {
		this.ratingAmount = ratingAmount;
	}

	public char getProStatus() {
		return proStatus;
	}

	public void setProStatus(char proStatus) {
		this.proStatus = proStatus;
	}

	public List<ProImgDTO> getProImgList() {
		return ProImgList;
	}

	public void setProImgList(List<ProImgDTO> proImgList) {
		ProImgList = proImgList;
	}

	@Override
	public String toString() {
		return "ProductDTO [proId=" + proId + ", proCateId=" + proCateId + ", category=" + category + ", proTitle="
				+ proTitle + ", price=" + price + ", deliveryFee=" + deliveryFee + ", proAmount=" + proAmount
				+ ", proContent=" + proContent + ", proPoint=" + proPoint + ", proDate=" + proDate + ", ratingSum="
				+ ratingSum + ", ratingAmount=" + ratingAmount + ", proStatus=" + proStatus + ", ProImgList="
				+ ProImgList + "]";
	}

	
  
}