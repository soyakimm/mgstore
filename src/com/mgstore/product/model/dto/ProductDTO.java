package com.mgstore.product.model.dto;
import java.sql.Date;
import java.util.List;
public class ProductDTO {
	
	private int proId;
	private int proCateId;
	private ProCateDTO category;
	private String proTitle;
	private int price;
	private int proAmount;
	private String proContent;
	private java.sql.Date proDate;
	private String proStatus;
	private int proCount;
	private List<ProImgDTO> proImgList;
	
	public ProductDTO() {}

	public ProductDTO(int proId, int proCateId, ProCateDTO category, String proTitle, int price, int proAmount,
			String proContent, Date proDate, String proStatus, int proCount, List<ProImgDTO> proImgList) {
		super();
		this.proId = proId;
		this.proCateId = proCateId;
		this.category = category;
		this.proTitle = proTitle;
		this.price = price;
		this.proAmount = proAmount;
		this.proContent = proContent;
		this.proDate = proDate;
		this.proStatus = proStatus;
		this.proCount = proCount;
		this.proImgList = proImgList;
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

	public java.sql.Date getProDate() {
		return proDate;
	}

	public void setProDate(java.sql.Date proDate) {
		this.proDate = proDate;
	}

	public String getProStatus() {
		return proStatus;
	}

	public void setProStatus(String proStatus) {
		this.proStatus = proStatus;
	}

	public int getProCount() {
		return proCount;
	}

	public void setProCount(int proCount) {
		this.proCount = proCount;
	}

	public List<ProImgDTO> getProImgList() {
		return proImgList;
	}

	public void setProImgList(List<ProImgDTO> proImgList) {
		this.proImgList = proImgList;
	}

	@Override
	public String toString() {
		return "ProductDTO [proId=" + proId + ", proCateId=" + proCateId + ", category=" + category + ", proTitle="
				+ proTitle + ", price=" + price + ", proAmount=" + proAmount + ", proContent=" + proContent
				+ ", proDate=" + proDate + ", proStatus=" + proStatus + ", proCount=" + proCount + ", proImgList="
				+ proImgList + "]";
	}

	
	
}